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

-- Note: on backend function, the type parameter is passed
-- as an additional erased argument of type `undefined`
-- to the lambda. The lambda therefore needs one more
-- argument.
%foreign "javascript:lambda:(u,x) => x.length"
prim__arrayLengthIO : forall arr . arr -> PrimIO UInt32

%foreign "javascript:lambda:(u,x) => x.length"
prim__arrayLength : forall arr . arr -> UInt32

%foreign "javascript:lambda:(u,v,arr,n) => arr[n]"
prim__arrayGet : forall a,arr . arr -> UInt32 -> PrimIO (UndefOr a)

%foreign "javascript:lambda:(u,arr,n,v) => arr[n] = v"
prim__arraySet : forall a . ArrayData a -> UInt32 -> a -> PrimIO ()

%foreign "javascript:lambda:(u,n) => new Array(n)"
prim__newArray : forall a . UInt32 -> PrimIO (ArrayData a)

%foreign "javascript:lambda:x => Array.isArray(x)"
prim__isArray : AnyPtr -> Boolean

%foreign "javascript:lambda:(u,x) => Array.from(x)"
prim__fromArrayLikeIO : forall arr . arr -> PrimIO (ArrayData a)

%foreign "javascript:lambda:(u,x) => Array.from(x)"
prim__fromArrayLike : forall arr . arr -> ArrayData a

--------------------------------------------------------------------------------
--          IOArrayLike
--------------------------------------------------------------------------------

export
interface IOArrayLike (0 arr : Type) (0 elem : Type) | arr where

export
sizeIO : (HasIO io, IOArrayLike arr elem) => arr -> io UInt32
sizeIO v = primIO $ prim__arrayLengthIO v

export
readIO : (HasIO io, IOArrayLike arr e) => arr -> UInt32 -> io (Maybe e)
readIO v ix = undeforToMaybe <$> (primIO $ prim__arrayGet v ix)

--------------------------------------------------------------------------------
--          IO Arrays
--------------------------------------------------------------------------------

export
IOArrayLike (ArrayData a) a where

export
ToFFI (ArrayData a) (ArrayData a) where toFFI = id

export
FromFFI (ArrayData a) (ArrayData a) where fromFFI = Just

export %inline
isArray : any -> Bool
isArray v = eqv true $ prim__isArray (toFFI $ MkAny v)

export
arraySet : HasIO io => ArrayData a -> UInt32 -> a -> io ()
arraySet arr ix v = primIO $  prim__arraySet arr ix v

export
newArrayIO : HasIO io => UInt32 -> io (ArrayData a)
newArrayIO n = primIO $  prim__newArray n

export
fromIOArrayLike : (HasIO io, IOArrayLike arr e) => arr -> io (ArrayData e)
fromIOArrayLike arr = primIO $ prim__fromArrayLikeIO arr

--------------------------------------------------------------------------------
--          Arrays and Lists
--------------------------------------------------------------------------------

export
fromList : HasIO io => List a -> io (ArrayData a)
fromList as = let len = the UInt32 (fromInteger $ natToInteger $ length as)
               in newArrayIO len >>= fill 0 as
  where fill : UInt32 -> List a -> ArrayData a -> io (ArrayData a)
        fill _ []        arr = pure arr
        fill n (x :: xs) arr = do arraySet arr n x
                                  fill (n+1) xs arr

export
fromFoldable : (HasIO io, Foldable t) => t a -> io (ArrayData a)
fromFoldable = fromList . toList

export
ToFFI a b => ToFFI (List a) (IO $ ArrayData b)
  where toFFI = fromList . map toFFI

--------------------------------------------------------------------------------
--          Immutable Arrays
--------------------------------------------------------------------------------

-- Taken from Data.Linear.Array in contrib and adjusted to JS
public export
interface Array arr elem | arr where
  read : (1 _ : arr) -> UInt32 -> Maybe elem
  size : (1 _ : arr) -> UInt32

-- Mutable arrays which can be used linearly
-- Taken from Data.Linear.Array in contrib and adjusted to JS
public export
interface Array arr elem => MArray arr elem | arr where
  newArray : (size : UInt32) -> (1 _ : (1 _ : arr) -> a) -> a
  write : (1 _ : arr) -> UInt32 -> elem -> arr

  mread : (1 _ : arr) -> Int -> Res (Maybe elem) (const arr)
  msize : (1 _ : arr) -> Res UInt32 (const arr)

||| A safe, immutable wrapper around a primitive array.
export
record IArray a where
  constructor MkIArray
  array : ArrayData a

||| A linear wrapper around a primitive array.
export
record LinArray a where
  constructor MkLinArray
  array : ArrayData a

export
Array (IArray a) a where
  read (MkIArray arr) n = unsafePerformIO $ readIO arr n
  size (MkIArray arr)   = unsafePerformIO $ sizeIO arr

export
Array (LinArray a) a where
  read (MkLinArray arr) n = unsafePerformIO $ readIO arr n
  size (MkLinArray arr)   = unsafePerformIO $ sizeIO arr

export
MArray (LinArray a) a where
  newArray size f = f (MkLinArray $ unsafePerformIO $ newArrayIO size)
