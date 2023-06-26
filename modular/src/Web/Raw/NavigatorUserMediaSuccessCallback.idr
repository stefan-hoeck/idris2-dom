module Web.Raw.NavigatorUserMediaSuccessCallback

import JS
import Web.Types.MediaStream
import Web.Types.NavigatorUserMediaSuccessCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toNavigatorUserMediaSuccessCallback :
     (MediaStream -> IO ())
  -> PrimIO NavigatorUserMediaSuccessCallback


export
toNavigatorUserMediaSuccessCallback :
     (MediaStream -> IO ())
  -> JSIO NavigatorUserMediaSuccessCallback
toNavigatorUserMediaSuccessCallback cb = primJS $ prim__toNavigatorUserMediaSuccessCallback cb
