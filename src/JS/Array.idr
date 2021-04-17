||| Primitive Javascript arrays. This offers an alternative
||| to the functionality provided by `Data.IOArray.Prims` from base.
||| The type we use, however, is the same.
module JS.Array

import Control.Monad.Either
import Data.List

import Data.IOArray.Prims

import JS.Any
import JS.Boolean
import JS.Marshall
import JS.Number
import JS.Undefined
import JS.Util

--------------------------------------------------------------------------------
--          FFI
--------------------------------------------------------------------------------

-- Note: in the backend, type parameters are passed
-- as additional erased arguments of type `undefined`
-- to the lambdas. The lambdas therefore need to take
-- additional arguments, based on the number of type parameters.


-- determines the size of a (potentially) mutable Array-like object.
%foreign "javascript:lambda:(u,x) => x.length"
prim__sizeIO : forall arr . arr -> PrimIO UInt32

-- reads a value at the given index from a (potentially) mutable Array-like object.
%foreign "javascript:lambda:(u,v,arr,n) => arr[n]"
prim__readIO : forall a,arr . arr -> UInt32 -> PrimIO (UndefOr a)

-- determines the size of an immutable Array-like object.
%foreign "javascript:lambda:(u,x) => x.length"
prim__size : forall arr . arr -> UInt32

-- reads a value at the given index from an immutable Array-like object.
%foreign "javascript:lambda:(u,v,arr,n) => arr[n]"
prim__read : forall a,arr . arr -> UInt32 -> UndefOr a

-- writes a value to a mutable array
%foreign "javascript:lambda:(u,arr,n,v) => arr[n] = v"
prim__writeIO : forall a . ArrayData a -> UInt32 -> a -> PrimIO ()

-- creates a new mutable array of the given size
%foreign "javascript:lambda:(u,n) => new Array(n)"
prim__newArrayIO : forall a . UInt32 -> PrimIO (ArrayData a)

-- determines, whether the given pointer is an array.
%foreign "javascript:lambda:x => Array.isArray(x)"
prim__isArray : AnyPtr -> Boolean

-- clones an Array-like object, thus creating a new array.
%foreign "javascript:lambda:(u,x) => Array.from(x)"
prim__fromArrayLikeIO : forall arr . arr -> PrimIO (ArrayData a)

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
sizeIO : (HasIO io, ArrayLike arr elem) => arr -> io UInt32
sizeIO v = primIO $ prim__sizeIO v

export
readIO : (HasIO io, ArrayLike arr e) => arr -> UInt32 -> io (Maybe e)
readIO v ix = undeforToMaybe <$> (primIO $ prim__readIO v ix)

export
ArrayLike String Char where

export
ArrayLike (ArrayData a) a where

||| Witness, that a given value represents an immutable
||| Array-like object. The same rules as for `ArrayLike`
||| hold, with the addition, that values of types implementing
||| this interface must be immutable.
||| It is then safe to provide pure versions of `readIO` and `sizeIO`.
export
interface ArrayLike arr elem => ImmutableArrayLike arr elem | arr where

export
read : ImmutableArrayLike arr elem => arr -> UInt32 -> Maybe elem
read arr n = undeforToMaybe $ prim__read arr n

export
size : ImmutableArrayLike arr elem => arr -> UInt32
size arr = prim__size arr

export
sameElements : (ImmutableArrayLike arr elem, Eq elem) =>
               arr -> arr -> Bool
sameElements a1 a2 = size a1 == size a2 && run 0 (size a1)
  where run : UInt32 -> UInt32 -> Bool
        run x y = if x >= y then True
                  else if read a1 x /= read a2 x then False
                  else run (x+1) y

export
arrayToList : ImmutableArrayLike arr elem => arr -> List (Maybe elem)
arrayToList a = run 0 (size a)
  where run : UInt32 -> UInt32 -> List (Maybe elem)
        run x y = if x >= y then []
                  else read a x :: run (1+1) y

export
ImmutableArrayLike String Char where

--------------------------------------------------------------------------------
--          IO Arrays
--------------------------------------------------------------------------------

export
ToFFI (ArrayData a) (ArrayData a) where toFFI = id

export
FromFFI (ArrayData a) (ArrayData a) where fromFFI = Just

export %inline
isArray : any -> Bool
isArray v = eqv true $ prim__isArray (toFFI $ MkAny v)

export
writeIO : HasIO io => ArrayData a -> UInt32 -> a -> io ()
writeIO arr ix v = primIO $  prim__writeIO arr ix v

export
newArrayIO : HasIO io => UInt32 -> io (ArrayData a)
newArrayIO n = primIO $  prim__newArrayIO n

export
arrayDataFrom : (HasIO io, ArrayLike arr e) => arr -> io (ArrayData e)
arrayDataFrom arr = primIO $ prim__fromArrayLikeIO arr

--------------------------------------------------------------------------------
--          Arrays and Lists
--------------------------------------------------------------------------------

export
fromListIO : HasIO io => List a -> io (ArrayData a)
fromListIO as = let len = the UInt32 (fromInteger $ natToInteger $ length as)
               in newArrayIO len >>= fill 0 as
  where fill : UInt32 -> List a -> ArrayData a -> io (ArrayData a)
        fill _ []        arr = pure arr
        fill n (x :: xs) arr = do writeIO arr n x
                                  fill (n+1) xs arr

export
fromFoldableIO : (HasIO io, Foldable t) => t a -> io (ArrayData a)
fromFoldableIO = fromListIO . toList

export
ToFFI a b => ToFFI (List a) (IO $ ArrayData b)
  where toFFI = fromListIO . map toFFI

--------------------------------------------------------------------------------
--          Immutable Arrays
--------------------------------------------------------------------------------

||| An immutable array from a resource that guarantees, that
||| this will not be modified any more.
|||
||| Typically, these are generated by freezing a `LinArray`
||| or by cloning an `ArrayLike` value.
export
data IArray : Type -> Type where [external]

%foreign "javascript:lambda:(u,arr,n,v) => { arr[n] = v; arr }"
prim__write : forall a . IArray a -> UInt32 -> a -> IArray a

%foreign "javascript:lambda:(u,n) => new Array(n)"
prim__newArray : forall a . UInt32 -> IArray a

export
ArrayLike (IArray a) a where

export
ImmutableArrayLike (IArray a) a where

export
Eq a => Eq (IArray a) where
  (==) = sameElements {elem = a}

export
Show a => Show (IArray a) where
  showPrec p v = showCon p "fromList " (show $ arrayToList v)

||| A linear wrapper around a primitive array.
export
record LinArray a where
  constructor MkLinArray
  array : IArray a

export
freeze : (1 _ : LinArray a) -> IArray a
freeze (MkLinArray arr) = arr

export
newArray : (size : UInt32) -> (1 _ : (1 _ : LinArray x) -> a) -> a
newArray size f = f (MkLinArray $ prim__newArray size)

export
write : (1 _ : LinArray a) -> UInt32 -> a -> LinArray a
write (MkLinArray arr) n v = MkLinArray $ prim__write arr n v

export
mread : (1 _ : LinArray a) -> UInt32 -> Res (Maybe a) (const $ LinArray a)
mread (MkLinArray arr) n   = read arr n # MkLinArray arr

export
msize : (1 _ : LinArray a) -> Res UInt32 (const $ LinArray a)
msize (MkLinArray arr)     = size arr # MkLinArray arr

export
fromList : List a -> IArray a
fromList as = newArray (fromInteger . natToInteger $ length as)
                       (run as 0)
  where run : List a -> UInt32 -> (1 _ : LinArray a) -> IArray a
        run [] _        linA = freeze linA
        run (a :: as) n linA = run as (n+1) (write linA n a)
