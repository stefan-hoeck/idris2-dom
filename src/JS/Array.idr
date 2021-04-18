||| Primitive Javascript arrays. This offers an alternative
||| to the functionality provided by `Data.IOArray.Prims` from base.
|||
||| In addition to mutable arrays, we also provide linear arrays
||| plus immutable arrays, the latter being guaranteed to always
||| return a value if an index is within bounds.
module JS.Array

import Control.Monad.Either
import Decidable.Equality
import Data.DPair
import Data.List

import JS.Any
import JS.Boolean
import JS.Marshall
import JS.Undefined
import JS.Util

--------------------------------------------------------------------------------
-- DecEq for Bits32
--------------------------------------------------------------------------------

||| This should go to base
public export
implementation DecEq Bits32 where
    decEq x y = case x == y of -- Blocks if x or y not concrete
                     True => Yes primitiveEq
                     False => No primitiveNotEq
       where primitiveEq : forall x, y . x = y
             primitiveEq = believe_me (Refl {x})
             primitiveNotEq : forall x, y . x = y -> Void
             primitiveNotEq prf = believe_me {b = Void} ()

--------------------------------------------------------------------------------
--          Utilities
--------------------------------------------------------------------------------

public export
Ix : Bits32 -> Type
Ix n = Subset Bits32 \ix => ix < n = True

public export
len32 : List a -> Bits32
len32 = fromInteger . natToInteger . length

public export
zipWithIndex : (as : List a) -> List (Ix $ len32 as, a) 
zipWithIndex as = run 0 as
  -- being pragmatic here and going via `believe_me`
  where run : Bits32 -> List a -> List (Ix $ len32 as, a)
        run _ []        = []
        run n (x :: xs) =  (Element n $ believe_me (Refl {x}), x)
                        :: run (n+1) xs

public export
toIx : (size : Bits32) -> Bits32 -> Maybe (Ix size)
toIx size x = case decEq (x < size) True of
                   Yes prf => Just $ Element x prf
                   No  _   => Nothing

--------------------------------------------------------------------------------
--          FFI
--------------------------------------------------------------------------------

export
data Array : Type -> Type where [external]

-- Note: in the backend, type parameters are passed
-- as additional erased arguments of type `undefined`
-- to the lambdas. The lambdas therefore need to take
-- additional arguments, based on the number of type parameters.


-- determines the size of a (potentially) mutable Array-like object.
%foreign "javascript:lambda:(u,x) => x.length"
prim__sizeIO : forall arr . arr -> PrimIO Double

-- reads a value at the given index from a (potentially) mutable Array-like object.
%foreign "javascript:lambda:(u,v,arr,n) => arr[n]"
prim__readIO : forall a,arr . arr -> Double -> PrimIO (UndefOr a)

-- determines the size of an immutable Array-like object.
%foreign "javascript:lambda:(u,x) => x.length"
prim__size : forall arr . arr -> Double

-- reads a value at the given index from an immutable Array-like object.
%foreign "javascript:lambda:(u,v,arr,n) => arr[n]"
prim__read : forall a,arr . arr -> Double -> a

-- writes a value to a mutable array
%foreign "javascript:lambda:(u,arr,n,v) => { arr[n] = v }"
prim__writeIO : forall a . Array a -> Double -> a -> PrimIO ()

-- creates a new mutable array of the given size
%foreign "javascript:lambda:(u,n) => { return new Array(n) }"
prim__newArrayIO : forall a . Double -> PrimIO (Array a)

-- determines, whether the given pointer is an array.
%foreign "javascript:lambda:x => Array.isArray(x)"
prim__isArray : AnyPtr -> Boolean

-- clones an Array-like object, thus creating a new array.
%foreign "javascript:lambda:(u,x) => Array.from(x)"
prim__fromArrayLikeIO : forall arr . arr -> PrimIO (Array a)

--------------------------------------------------------------------------------
--          ArrayLike
--------------------------------------------------------------------------------

||| Witness, that a given value represents an Array-like object.
||| Array-like objects must provide the following functionality in
||| the Javascript backend:
|||
|||  * a `length` property, returning the value's length as an unsigned 32bit
|||    integer
|||  * the ability to access values of the given `elem` type`
|||    at a given index by means of the following syntax: `arr[12]`.
|||
||| Javascript Arrays are, of course, Array-like, as are Strings.
||| Some other Array-likes include `NodeList` in the DOM.
|||
||| Note, that this is just a witnessing interface. All functionality
||| is already implemented through functions `sizeIO` and `readIO`.
||| It is possible to clone an `ArrayLike` to an actual Javascript
||| Array by invoking `Array.from(v)` at the backend. This functionality
||| is available through `arrayDataFrom` for mutable arrays and
||| `arrayFrom` for immutable arrays.
export
interface ArrayLike (0 arr : Type) (0 elem : Type) | arr where

export
sizeIO : (HasIO io, ArrayLike arr elem) => arr -> io Bits32
sizeIO v = fromInteger . cast <$> primIO (prim__sizeIO v)

export
readIO : (HasIO io, ArrayLike arr e) => arr -> Bits32 -> io (Maybe e)
readIO v ix = undeforToMaybe <$> (primIO . prim__readIO v $ toFFI ix)

export
ArrayLike String Char where

export
ArrayLike (Array a) a where

||| Witness, that a given value represents an immutable
||| Array-like object. The same rules as for `ArrayLike`
||| hold, with the addition, that values of types implementing
||| this interface must be immutable.
||| It is then safe to provide pure versions of `readIO` and `sizeIO`.
export
interface ArrayLike arr elem => ImmutableArrayLike arr elem | arr where

export
size : ImmutableArrayLike arr elem => arr -> Bits32
size arr = fromInteger . cast $ prim__size arr

export
read : ImmutableArrayLike arr elem
     => (elems : arr) -> (ix : Ix $ size elems) -> elem
read elems (Element ix _) = prim__read elems $ toFFI ix

export
readMaybe : ImmutableArrayLike arr elem
          => (elems : arr) -> Bits32 -> Maybe elem
readMaybe elems = map (read elems) . toIx (size elems)

export
sameElements : (ImmutableArrayLike arr elem, Eq elem) =>
               arr -> arr -> Bool
sameElements a1 a2 =
  case decEq (size a2) (size a1) of
       Yes prf => run prf 0
       No _    => False
  where run : (0 _ : size a2 = size a1) -> Bits32 -> Bool
        run refl ix =
          case decEq (ix < size a1) True of
               No  _   => True
               Yes prf =>
                 read a1 (Element ix prf) ==
                   read a2 (Element ix (rewrite refl in prf)) &&
                 run refl (ix+1)

export
foldlArray :  ImmutableArrayLike arr elem
           => (acc -> elem -> acc) -> acc -> arr -> acc
foldlArray f ini arr = run 0 ini
  where run : Bits32 -> acc -> acc
        run n res = case readMaybe arr n of
                         Just el => run (n+1) (f res el)
                         Nothing => res

export
foldrArray :  ImmutableArrayLike arr elem
           => (elem -> acc -> acc) -> acc -> arr -> acc
foldrArray f ini arr = run 0
  where run : Bits32 -> acc
        run n = case readMaybe arr n of
                     Just el => f el $ run (n+1)
                     Nothing => ini

export
arrayToList : ImmutableArrayLike arr elem => arr -> List elem
arrayToList = foldrArray (::) Nil

export
ImmutableArrayLike String Char where

--------------------------------------------------------------------------------
--          IO Arrays
--------------------------------------------------------------------------------

export
ToFFI (Array a) (Array a) where toFFI = id

export
FromFFI (Array a) (Array a) where fromFFI = Just

export %inline
isArray : any -> Bool
isArray v = eqv true $ prim__isArray (toFFI $ MkAny v)

export
writeIO : HasIO io => Array a -> Bits32 -> a -> io ()
writeIO arr ix v = primIO $  prim__writeIO arr (toFFI ix) v

export
newArrayIO : HasIO io => Bits32 -> io (Array a)
newArrayIO n = primIO $  prim__newArrayIO (toFFI n)

export
arrayDataFrom : (HasIO io, ArrayLike arr e) => arr -> io (Array e)
arrayDataFrom arr = primIO $ prim__fromArrayLikeIO arr

--------------------------------------------------------------------------------
--          Arrays and Lists
--------------------------------------------------------------------------------

export
fromListIO : HasIO io => List a -> io (Array a)
fromListIO as = let len = the Bits32 (fromInteger . natToInteger $ length as)
                 in newArrayIO len >>= fill 0 as
  where fill : Bits32 -> List a -> Array a -> io (Array a)
        fill _ []        arr = pure arr
        fill n (x :: xs) arr = do writeIO arr n x
                                  fill (n+1) xs arr

export
fromFoldableIO : (HasIO io, Foldable t) => t a -> io (Array a)
fromFoldableIO = fromListIO . toList

-- TODO: Use immutable arrays for this
export
ToFFI a b => ToFFI (List a) (IO $ Array b)
  where toFFI = fromListIO . map toFFI

--------------------------------------------------------------------------------
--          Linear Arrays
--------------------------------------------------------------------------------

%foreign "javascript:lambda:(u,arr,n,v) => { arr[n] = v; return arr }"
prim__write : forall a . Array a -> Double -> a -> Array a

%foreign "javascript:lambda:(u,n,a) => { var res = new Array(n); return res.fill(a) }"
prim__newArray : forall a . Double -> a -> Array a

%foreign "javascript:lambda:(u,n) => { return new Array(n) }"
prim__undefArray : forall a . Double -> Array a

%foreign "javascript:lambda:u => { return = new Array(0) }"
prim__emptyArray : forall a . Array a

%foreign "javascript:lambda:(u,x,v) => Array.from(v)"
prim__fromArray : forall arr . arr -> Array a

||| A linear wrapper around a primitive array.
export
record LinArray (size : Bits32) (a : Type) where
  constructor MkLinArray
  array : Array a

export
thaw : (1 _ : LinArray size a) -> IO (Array a)
thaw (MkLinArray arr) = pure arr

-- This must not leak out, as we allocate a new array of
-- `undefined` values. It is used to create an array by
-- iteratively filling it up.
private
undefArray : (size : Bits32) -> (1 _ : (1 _ : LinArray size a) -> b) -> b
undefArray size f = f (MkLinArray $ prim__undefArray (toFFI size))

private
unsafeWrite : (1 _ : LinArray size a) -> (n : Bits32) -> a -> LinArray size a
unsafeWrite (MkLinArray arr) n v = MkLinArray $ prim__write arr (toFFI n) v

export
emptyArray : (1 _ : (1 _ : LinArray 0 a) -> b) -> b
emptyArray f = f (MkLinArray $ prim__emptyArray)

export
newArray :  (val : a)
         -> (size : Bits32)
         -> (1 _ : (1 _ : LinArray size a) -> b)
         -> b
newArray v size f = f (MkLinArray $ prim__newArray (toFFI size) v)

export
withArray :  ImmutableArrayLike arr elem
          => (v : arr)
          -> (1 _ : (1 _ : LinArray (size v) elem) -> a)
          -> a
withArray array f = f (MkLinArray $ prim__fromArray array)

export
write : (1 _ : LinArray size a) -> (ix : Ix size) -> a -> LinArray size a
write arr (Element n _) = unsafeWrite arr n

export
lread :  (1 _ : LinArray size a)
      -> (ix : Ix size)
      -> Res a (const $ LinArray size a)
lread (MkLinArray arr) (Element ix _) =
  prim__read arr (toFFI ix) # MkLinArray arr

export
lsize : (1 _ : LinArray size a) -> Res Bits32 (\s => LinArray s a)
lsize (MkLinArray arr) = fromInteger (cast $ prim__size arr) # MkLinArray arr

export
iterate' :  (size : Bits32)
         -> (Ix size -> a)
         -> ((1 _ : LinArray size a) -> b)
         -> b
iterate' size f g = undefArray size (run 0)
  where run : Bits32 -> (1 _ : LinArray size a) -> b
        run n arr = case toIx size n of
                         Nothing => g arr
                         Just ix => run (n+1) (write arr ix (f ix))

export
fromList' : (as : List a) -> ((1 _ : LinArray (len32 as) a) -> b) -> b
fromList' as f = undefArray (len32 as) (run $ zipWithIndex as)
  where run :  List (Ix $ len32 as, a) -> (1 _ : LinArray (len32 as) a) -> b
        run []            linA = f linA
        run ((ix,a) :: t) linA = run t (write linA ix a)

export
map' : ImmutableArrayLike arr a =>
       (vs : arr) -> ((1 _ : LinArray (size vs) b) -> c) -> (a -> b) -> c
map' vs fromArr f = iterate' (size vs) (\ix => f (read vs ix)) fromArr

export
totalSize : (ImmutableArrayLike arr1 arr2, ImmutableArrayLike arr2 el)
          => arr1 -> Bits32
totalSize = foldlArray (\n,vs => n + size vs) 0

export
join' :  (ImmutableArrayLike arr1 arr2, ImmutableArrayLike arr2 el)
      => (vss : arr1)
      -> ((1 _ : LinArray (totalSize {arr1} {arr2} vss) el) -> a)
      -> a
join' vss f = undefArray (totalSize {arr1} {arr2} vss) (outer 0 0)
   where inner :  (n : Bits32)
               -> (pos : Bits32)
               -> arr2
               -> (1 _ : LinArray (totalSize {arr1} {arr2} vss) el)
               -> LinArray (totalSize {arr1} {arr2} vss) el
         inner n pos as la =
           case readMaybe as n of
                Just v  => inner (n+1) pos as (unsafeWrite la (pos + n) v)
                Nothing => la

         outer :  (n : Bits32)
               -> (pos : Bits32)
               -> (1 _ : LinArray (totalSize {arr1} {arr2} vss) el)
               -> a
         outer n pos la =
           case readMaybe vss n of
                Just v  => outer (n+1) (pos + size v) (inner 0 pos v la)
                Nothing => f la

--------------------------------------------------------------------------------
--          Immutable Arrays
--------------------------------------------------------------------------------

||| An immutable array from a resource that guarantees, that
||| this will not be modified any more.
|||
||| Typically, these are generated by freezing a `LinArray`
||| or by cloning an `ArrayLike` value.
export
record IArray (a : Type) where
  constructor MkIArray
  array : Array a

export
freeze : forall size,a . (1 _ : LinArray size a) -> IArray a
freeze (MkLinArray arr) = MkIArray arr

export
fromList : List a -> IArray a
fromList as = fromList' as freeze

export
singleton : a -> IArray a
singleton = fromList . pure

export
fromString : String -> IArray Char
fromString s = withArray s freeze

export
ArrayLike (IArray a) a where

export
ImmutableArrayLike (IArray a) a where

export
concat : IArray (IArray a) -> IArray a
concat as = join' {arr2 = IArray a} as freeze

export
Eq a => Eq (IArray a) where
  (==) = sameElements {elem = a}

export
Show a => Show (IArray a) where
  showPrec p v = showCon p "fromList " (show $ arrayToList v)

export
Semigroup (IArray a) where
  a1 <+> a2 = concat $ fromList [a1,a2]

export
Monoid (IArray a) where
  neutral = fromList []

export
Functor IArray where
  map f as = map' as freeze f

export
Applicative IArray where
  pure = singleton
  fs <*> as = concat $ map (\f => map (apply f) as) fs

export
Monad IArray where
  join = concat

export
Foldable IArray where
  foldr    = foldrArray
  foldl    = foldlArray
  null arr = size arr == 0

export
Alternative IArray where
  empty     = fromList []
  as <|> bs = if null as then bs else as
