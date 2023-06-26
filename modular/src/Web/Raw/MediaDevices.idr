module Web.Raw.MediaDevices

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.MediaDeviceInfo
import Web.Types.MediaDevices
import Web.Types.MediaStream
import Web.Types.MediaStreamConstraints
import Web.Types.MediaTrackSupportedConstraints


%default total


export
%foreign "browser:lambda:x=>x.ondevicechange"
prim__ondevicechange : MediaDevices -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.ondevicechange = v}"
prim__setOndevicechange :
     MediaDevices
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.enumerateDevices()"
prim__enumerateDevices :
     MediaDevices
  -> PrimIO (Promise (Array MediaDeviceInfo))


export
%foreign "browser:lambda:x=>x.getSupportedConstraints()"
prim__getSupportedConstraints :
     MediaDevices
  -> PrimIO MediaTrackSupportedConstraints


export
%foreign "browser:lambda:(x,a)=>x.getUserMedia(a)"
prim__getUserMedia :
     MediaDevices
  -> UndefOr MediaStreamConstraints
  -> PrimIO (Promise MediaStream)


export
ondevicechange : MediaDevices -> Attribute False Maybe EventHandlerNonNull
ondevicechange v = fromNullablePrim
                     "MediaDevices.getondevicechange"
                     prim__ondevicechange
                     prim__setOndevicechange
                     v


export
enumerateDevices :
     (obj : MediaDevices)
  -> JSIO (Promise (Array MediaDeviceInfo))
enumerateDevices a = primJS $ MediaDevices.prim__enumerateDevices a


export
getSupportedConstraints :
     (obj : MediaDevices)
  -> JSIO MediaTrackSupportedConstraints
getSupportedConstraints a = primJS $
  MediaDevices.prim__getSupportedConstraints a


export
getUserMedia' :
     {auto _ : Cast t2 MediaStreamConstraints}
  -> (obj : MediaDevices)
  -> (constraints : Optional t2)
  -> JSIO (Promise MediaStream)
getUserMedia' a b = primJS $ MediaDevices.prim__getUserMedia a (optUp b)

export
getUserMedia : (obj : MediaDevices) -> JSIO (Promise MediaStream)
getUserMedia a = primJS $ MediaDevices.prim__getUserMedia a undef
