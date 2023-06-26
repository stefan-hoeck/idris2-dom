module Web.Raw.TransformerFlushCallback

import JS
import Web.Types.TransformStreamDefaultController
import Web.Types.TransformerFlushCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toTransformerFlushCallback :
     (TransformStreamDefaultController -> IO (Promise Undefined))
  -> PrimIO TransformerFlushCallback


export
toTransformerFlushCallback :
     (TransformStreamDefaultController -> IO (Promise Undefined))
  -> JSIO TransformerFlushCallback
toTransformerFlushCallback cb = primJS $ prim__toTransformerFlushCallback cb
