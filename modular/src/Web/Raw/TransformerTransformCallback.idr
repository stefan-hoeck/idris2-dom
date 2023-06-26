module Web.Raw.TransformerTransformCallback

import JS
import Web.Types.TransformStreamDefaultController
import Web.Types.TransformerTransformCallback


%default total


export
%foreign "browser:lambda:x=>(a,b)=>x(a,b)()"
prim__toTransformerTransformCallback :
     (AnyPtr -> TransformStreamDefaultController -> IO (Promise Undefined))
  -> PrimIO TransformerTransformCallback


export
toTransformerTransformCallback :
     (AnyPtr -> TransformStreamDefaultController -> IO (Promise Undefined))
  -> JSIO TransformerTransformCallback
toTransformerTransformCallback cb = primJS $ prim__toTransformerTransformCallback cb

