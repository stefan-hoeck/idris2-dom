module Web.Raw.MediaStreamTrack

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.MediaStreamTrack
import Web.Types.MediaStreamTrackState
import Web.Types.MediaTrackCapabilities
import Web.Types.MediaTrackConstraints
import Web.Types.MediaTrackSettings


%default total


export
%foreign "browser:lambda:x=>x.enabled"
prim__enabled : MediaStreamTrack -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.enabled = v}"
prim__setEnabled : MediaStreamTrack -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.id"
prim__id : MediaStreamTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : MediaStreamTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.label"
prim__label : MediaStreamTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.muted"
prim__muted : MediaStreamTrack -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.onended"
prim__onended : MediaStreamTrack -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onended = v}"
prim__setOnended : MediaStreamTrack -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmute"
prim__onmute : MediaStreamTrack -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmute = v}"
prim__setOnmute : MediaStreamTrack -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onunmute"
prim__onunmute : MediaStreamTrack -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onunmute = v}"
prim__setOnunmute :
     MediaStreamTrack
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : MediaStreamTrack -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.applyConstraints(a)"
prim__applyConstraints :
     MediaStreamTrack
  -> UndefOr MediaTrackConstraints
  -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:x=>x.clone()"
prim__clone : MediaStreamTrack -> PrimIO MediaStreamTrack


export
%foreign "browser:lambda:x=>x.getCapabilities()"
prim__getCapabilities : MediaStreamTrack -> PrimIO MediaTrackCapabilities


export
%foreign "browser:lambda:x=>x.getConstraints()"
prim__getConstraints : MediaStreamTrack -> PrimIO MediaTrackConstraints


export
%foreign "browser:lambda:x=>x.getSettings()"
prim__getSettings : MediaStreamTrack -> PrimIO MediaTrackSettings


export
%foreign "browser:lambda:x=>x.stop()"
prim__stop : MediaStreamTrack -> PrimIO ()


export
enabled : MediaStreamTrack -> Attribute True Prelude.id Bool
enabled v = fromPrim
              "MediaStreamTrack.getenabled"
              prim__enabled
              prim__setEnabled
              v


export
id : (obj : MediaStreamTrack) -> JSIO String
id a = primJS $ MediaStreamTrack.prim__id a


export
kind : (obj : MediaStreamTrack) -> JSIO String
kind a = primJS $ MediaStreamTrack.prim__kind a


export
label : (obj : MediaStreamTrack) -> JSIO String
label a = primJS $ MediaStreamTrack.prim__label a


export
muted : (obj : MediaStreamTrack) -> JSIO Bool
muted a = tryJS "MediaStreamTrack.muted" $ MediaStreamTrack.prim__muted a


export
onended : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
onended v = fromNullablePrim
              "MediaStreamTrack.getonended"
              prim__onended
              prim__setOnended
              v


export
onmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
onmute v = fromNullablePrim
             "MediaStreamTrack.getonmute"
             prim__onmute
             prim__setOnmute
             v


export
onunmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
onunmute v = fromNullablePrim
               "MediaStreamTrack.getonunmute"
               prim__onunmute
               prim__setOnunmute
               v


export
readyState : (obj : MediaStreamTrack) -> JSIO MediaStreamTrackState
readyState a = tryJS "MediaStreamTrack.readyState" $
  MediaStreamTrack.prim__readyState a


export
applyConstraints' :
     {auto _ : Cast t2 MediaTrackConstraints}
  -> (obj : MediaStreamTrack)
  -> (constraints : Optional t2)
  -> JSIO (Promise Undefined)
applyConstraints' a b = primJS $
  MediaStreamTrack.prim__applyConstraints a (optUp b)

export
applyConstraints : (obj : MediaStreamTrack) -> JSIO (Promise Undefined)
applyConstraints a = primJS $ MediaStreamTrack.prim__applyConstraints a undef


export
clone : (obj : MediaStreamTrack) -> JSIO MediaStreamTrack
clone a = primJS $ MediaStreamTrack.prim__clone a


export
getCapabilities : (obj : MediaStreamTrack) -> JSIO MediaTrackCapabilities
getCapabilities a = primJS $ MediaStreamTrack.prim__getCapabilities a


export
getConstraints : (obj : MediaStreamTrack) -> JSIO MediaTrackConstraints
getConstraints a = primJS $ MediaStreamTrack.prim__getConstraints a


export
getSettings : (obj : MediaStreamTrack) -> JSIO MediaTrackSettings
getSettings a = primJS $ MediaStreamTrack.prim__getSettings a


export
stop : (obj : MediaStreamTrack) -> JSIO ()
stop a = primJS $ MediaStreamTrack.prim__stop a
