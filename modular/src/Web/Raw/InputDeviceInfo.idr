module Web.Raw.InputDeviceInfo

import JS
import Web.Types.InputDeviceInfo
import Web.Types.MediaDeviceInfo
import Web.Types.MediaTrackCapabilities


%default total


export
%foreign "browser:lambda:x=>x.getCapabilities()"
prim__getCapabilities : InputDeviceInfo -> PrimIO MediaTrackCapabilities


export
getCapabilities : (obj : InputDeviceInfo) -> JSIO MediaTrackCapabilities
getCapabilities a = primJS $ InputDeviceInfo.prim__getCapabilities a

