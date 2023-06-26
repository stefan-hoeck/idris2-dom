module Web.Raw.UnderlyingSinkStartCallback

import JS
import Web.Types.UnderlyingSinkStartCallback
import Web.Types.WritableStreamDefaultController


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUnderlyingSinkStartCallback :
     (WritableStreamDefaultController -> IO AnyPtr)
  -> PrimIO UnderlyingSinkStartCallback


export
toUnderlyingSinkStartCallback :
     (WritableStreamDefaultController -> IO AnyPtr)
  -> JSIO UnderlyingSinkStartCallback
toUnderlyingSinkStartCallback cb = primJS $ prim__toUnderlyingSinkStartCallback cb

