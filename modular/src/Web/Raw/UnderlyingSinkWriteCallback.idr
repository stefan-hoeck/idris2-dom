module Web.Raw.UnderlyingSinkWriteCallback

import JS
import Web.Types.UnderlyingSinkWriteCallback
import Web.Types.WritableStreamDefaultController


%default total


export
%foreign "browser:lambda:x=>(a,b)=>x(a,b)()"
prim__toUnderlyingSinkWriteCallback :
     (AnyPtr -> WritableStreamDefaultController -> IO (Promise Undefined))
  -> PrimIO UnderlyingSinkWriteCallback


export
toUnderlyingSinkWriteCallback :
     (AnyPtr -> WritableStreamDefaultController -> IO (Promise Undefined))
  -> JSIO UnderlyingSinkWriteCallback
toUnderlyingSinkWriteCallback cb = primJS $ prim__toUnderlyingSinkWriteCallback cb

