module Web.Raw.UnderlyingSinkCloseCallback

import JS
import Web.Types.UnderlyingSinkCloseCallback


%default total


export
%foreign "browser:lambda:x=>()=>x()()"
prim__toUnderlyingSinkCloseCallback :
     (() -> IO (Promise Undefined))
  -> PrimIO UnderlyingSinkCloseCallback


export
toUnderlyingSinkCloseCallback :
     (() -> IO (Promise Undefined))
  -> JSIO UnderlyingSinkCloseCallback
toUnderlyingSinkCloseCallback cb = primJS $ prim__toUnderlyingSinkCloseCallback cb

