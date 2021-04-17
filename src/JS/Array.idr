||| Primitive Javascript arrays. This offers an alternative
||| to the functionality provided by `Data.IOArray.Prims` from base.
|||
||| In addition to mutable arrays, we also provide linear arrays
||| plus immutable arrays, the latter being guaranteed to always
||| return a value if an index is within bounds.
module JS.Array

import Control.Monad.Either
import Decidable.Equality
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
     => (elems : arr)
     -> (ix : Bits32)
     -> (0 prf : ix < size elems = True)
     -> elem
read elems ix _ = prim__read elems $ toFFI ix

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
                 read a1 ix prf == read a2 ix (rewrite refl in prf) &&
                 run refl (ix+1)

export
arrayToList : ImmutableArrayLike arr elem => arr -> List elem
arrayToList a = run 0
  where run : Bits32 -> List elem
        run ix = case decEq (ix < size a) True of
                      Yes refl => read a ix refl :: run (ix+1)
                      No  _    => Nil

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
write :  {size : _}
      -> (1 _ : LinArray size a)
      -> (ix : Bits32)
      -> a
      -> (0 _ : ix < size = True)
      -> LinArray size a
write (MkLinArray arr) n v _ = MkLinArray $ prim__write arr (toFFI n) v

-- export
-- lread : (1 _ : LinArray a) -> Bits32 -> Res (Maybe a) (const $ LinArray a)
-- lread (MkLinArray arr) n = undeforToMaybe (prim__read arr n) # MkLinArray arr
-- 
-- export
-- lsize : (1 _ : LinArray a) -> Res Bits32 (const $ LinArray a)
-- lsize (MkLinArray arr) = prim__size arr # MkLinArray arr
-- 
-- export
-- fromList' : ((1 _ : LinArray a) -> b) -> List a -> b
-- fromList' f as = newArray (fromInteger . natToInteger $ length as)
--                           (run as 0)
--   where run : List a -> Bits32 -> (1 _ : LinArray a) -> b
--         run [] _        linA = f linA
--         run (a :: as) n linA = run as (n+1) (write linA n a)
-- 
-- export
-- map' : ImmutableArrayLike arr a =>
--        ((1 _ : LinArray b) -> c) -> (a -> b) -> arr -> c
-- map' f g arr = newArray (size arr) (run 0 (size arr))
--   where run : Bits32 -> Bits32 -> (1 _ : LinArray b) -> c
--         run x y lb = if x >= y then f lb
--                      else case read arr x of
--                                Nothing => run (x+1) y lb
--                                Just a  => run (x+1) y (write lb x (g a))
-- 
-- export
-- join' :  ImmutableArrayLike arr1 arr2
--       => ImmutableArrayLike arr2 el
--       => ((1 _ : LinArray el) -> a) -> arr1 -> a
-- join' f arr1 =
--   let si = totalSize 0 (size arr1) 0
--    in newArray si $ outer 0 (size arr1) 0
-- 
--   where totalSize : Bits32 -> Bits32 -> Bits32 -> Bits32
--         totalSize x y res =
--           if x >= y then res
--           else totalSize (x+1) y (res + maybe 0 size (read arr1 x))
-- 
--         inner :  Bits32 -> Bits32 -> Bits32 -> arr2 -> (1 _ : LinArray el)
--               -> LinArray el
--         inner x s pos as es =
--           if x >= s then es
--           else case read as x of
--                     Nothing => inner (x+1) s (pos+1) as es
--                     Just y  => inner (x+1) s (pos+1) as (write es pos y)
-- 
--         outer : Bits32 -> Bits32 -> Bits32 -> (1 _ : LinArray el) -> a
--         outer xo so pos es =
--           if xo >= so then f es
--           else case read arr1 xo of
--                     Nothing  => outer (xo+1) so pos es
--                     Just arr =>
--                       let si = size arr
--                        in outer (xo+1) so (pos + si) (inner 0 si pos arr es)
-- 
-- 
-- --------------------------------------------------------------------------------
-- --          Immutable Arrays
-- --------------------------------------------------------------------------------
-- 
-- ||| An immutable array from a resource that guarantees, that
-- ||| this will not be modified any more.
-- |||
-- ||| Typically, these are generated by freezing a `LinArray`
-- ||| or by cloning an `ArrayLike` value.
-- export
-- record IArray (a : Type) where
--   constructor MkIArray
--   array : Array a
-- 
-- export
-- freeze : (1 _ : LinArray a) -> IArray a
-- freeze (MkLinArray arr) = MkIArray arr
-- 
-- export
-- fromList : List a -> IArray a
-- fromList = fromList' freeze
-- 
-- export
-- singleton : a -> IArray a
-- singleton = fromList . pure
-- 
-- export
-- fromFoldable : List a -> IArray a
-- fromFoldable = fromList' freeze
-- 
-- export
-- fromString : String -> IArray Char
-- fromString s = withArray s freeze
-- 
-- export
-- ArrayLike (IArray a) a where
-- 
-- export
-- ImmutableArrayLike (IArray a) a where
-- 
-- export
-- concat : IArray (IArray a) -> IArray a
-- concat = join' freeze
-- 
-- export
-- Eq a => Eq (IArray a) where
--   (==) = sameElements {elem = a}
-- 
-- export
-- Show a => Show (IArray a) where
--   showPrec p v = showCon p "fromList " (show $ arrayToList v)
-- 
-- export
-- Functor IArray where
--   map = map' freeze
-- 
-- export
-- Applicative IArray where
--   pure = singleton
--   fs <*> as = concat $ map (\f => map (apply f) as) fs
-- 
-- export
-- Monad IArray where
--   join = concat
-- 
-- export
-- Foldable IArray where
-- --  foldr = foldrArrayLike
-- --  foldl = foldlArrayLike
-- --  null  = nullArrayLike
-- 
-- export
-- Alternative IArray where
--   empty = fromList []
--   as <|> bs = if null as then bs else as
