module Web.Raw.NavigatorUserMediaErrorCallback

import JS
import Web.Types.DOMException
import Web.Types.NavigatorUserMediaErrorCallback


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toNavigatorUserMediaErrorCallback :
     (DOMException -> IO ())
  -> PrimIO NavigatorUserMediaErrorCallback


export
toNavigatorUserMediaErrorCallback :
     (DOMException -> IO ())
  -> JSIO NavigatorUserMediaErrorCallback
toNavigatorUserMediaErrorCallback cb = primJS $ prim__toNavigatorUserMediaErrorCallback cb
