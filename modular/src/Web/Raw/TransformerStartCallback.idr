module Web.Raw.TransformerStartCallback

import JS
import Web.Types.TransformStreamDefaultController
import Web.Types.TransformerStartCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toTransformerStartCallback :
     (TransformStreamDefaultController -> IO AnyPtr)
  -> PrimIO TransformerStartCallback


export
toTransformerStartCallback :
     (TransformStreamDefaultController -> IO AnyPtr)
  -> JSIO TransformerStartCallback
toTransformerStartCallback cb = primJS $ prim__toTransformerStartCallback cb

