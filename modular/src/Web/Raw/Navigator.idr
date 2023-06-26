module Web.Raw.Navigator

import JS
import Web.Types.Clipboard
import Web.Types.MediaDevices
import Web.Types.MediaStreamConstraints
import Web.Types.Navigator
import Web.Types.NavigatorConcurrentHardware
import Web.Types.NavigatorContentUtils
import Web.Types.NavigatorCookies
import Web.Types.NavigatorID
import Web.Types.NavigatorLanguage
import Web.Types.NavigatorOnLine
import Web.Types.NavigatorPlugins
import Web.Types.NavigatorUserMediaErrorCallback
import Web.Types.NavigatorUserMediaSuccessCallback
import Web.Types.Permissions
import Web.Types.ServiceWorkerContainer


%default total


export
%foreign "browser:lambda:x=>x.clipboard"
prim__clipboard : Navigator -> PrimIO Clipboard


export
%foreign "browser:lambda:x=>x.mediaDevices"
prim__mediaDevices : Navigator -> PrimIO MediaDevices


export
%foreign "browser:lambda:x=>x.permissions"
prim__permissions : Navigator -> PrimIO Permissions


export
%foreign "browser:lambda:x=>x.serviceWorker"
prim__serviceWorker : Navigator -> PrimIO ServiceWorkerContainer


export
%foreign "browser:lambda:(x,a,b,c)=>x.getUserMedia(a,b,c)"
prim__getUserMedia :
     Navigator
  -> MediaStreamConstraints
  -> NavigatorUserMediaSuccessCallback
  -> NavigatorUserMediaErrorCallback
  -> PrimIO ()


export
clipboard : (obj : Navigator) -> JSIO Clipboard
clipboard a = primJS $ Navigator.prim__clipboard a


export
mediaDevices : (obj : Navigator) -> JSIO MediaDevices
mediaDevices a = primJS $ Navigator.prim__mediaDevices a


export
permissions : (obj : Navigator) -> JSIO Permissions
permissions a = primJS $ Navigator.prim__permissions a


export
serviceWorker : (obj : Navigator) -> JSIO ServiceWorkerContainer
serviceWorker a = primJS $ Navigator.prim__serviceWorker a


export
getUserMedia :
     {auto _ : Cast t2 MediaStreamConstraints}
  -> (obj : Navigator)
  -> (constraints : t2)
  -> (successCallback : NavigatorUserMediaSuccessCallback)
  -> (errorCallback : NavigatorUserMediaErrorCallback)
  -> JSIO ()
getUserMedia a b c d = primJS $ Navigator.prim__getUserMedia a (cast b) c d

