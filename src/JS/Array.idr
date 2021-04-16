||| Primitive Javascript arrays. This offers an alternative
||| to the functionality provided by `Data.IOArray.Prims` from base.
module JS.Array

import Control.Monad.Either
import Data.List

import JS.Any
import JS.Boolean
import JS.Marshall
import JS.Number
import JS.Undefined
import JS.Util

--------------------------------------------------------------------------------
--          FFI
--------------------------------------------------------------------------------

export
data Array : Type -> Type where [external]

-- Note: on backend function, the type parameter is passed
-- as an additional erased argument of type `undefined`
-- to the lambda. The lambda therefore needs one more
-- argument.
%foreign "javascript:lambda:(u,x) => x.length"
prim__arrayLength : forall a . Array a -> PrimIO UInt32

%foreign "javascript:lambda:(u,arr,n) => arr[n]"
prim__arrayGet : forall a . Array a -> UInt32 -> PrimIO (UndefOr a)

%foreign "javascript:lambda:(u,arr,n,v) => arr[n] = v"
prim__arraySet : forall a . Array a -> UInt32 -> a -> PrimIO ()

%foreign "javascript:lambda:(u,n) => new Array(n)"
prim__newArray : forall a . UInt32 -> PrimIO (Array a)

%foreign "javascript:lambda:x => Array.isArray(x)"
prim__isArray : AnyPtr -> Boolean

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
arrayLength : HasIO io => Array a -> io UInt32
arrayLength arr = primIO $ prim__arrayLength arr

export
arrayGet : HasIO io => Array a -> UInt32 -> io (Optional a)
arrayGet arr ix = undeforToOptional <$> (primIO $ prim__arrayGet arr ix)

export
arraySet : HasIO io => Array a -> UInt32 -> a -> io ()
arraySet arr ix v = primIO $  prim__arraySet arr ix v

export
newArray : HasIO io => UInt32 -> io (Array a)
newArray n = primIO $  prim__newArray n

--------------------------------------------------------------------------------
--          Arrays and Lists
--------------------------------------------------------------------------------

export
fromList : HasIO io => List a -> io (Array a)
fromList as = let len = the UInt32 (fromInteger $ natToInteger $ length as)
               in newArray len >>= fill 0 as
  where fill : UInt32 -> List a -> Array a -> io (Array a)
        fill _ []        arr = pure arr
        fill n (x :: xs) arr = do arraySet arr n x
                                  fill (n+1) xs arr

export
fromFoldable : (HasIO io, Foldable t) => t a -> io (Array a)
fromFoldable = fromList . toList

export
ToFFI a b => ToFFI (List a) (IO $ Array b)
  where toFFI = fromList . map toFFI
