module Web.Raw.MediaStreamConstraints

import JS
import Web.Types.MediaStreamConstraints
import Web.Types.MediaTrackConstraints


%default total


export
%foreign "browser:lambda:(a,b)=> ({video: a,audio: b})"
prim__new :
     UndefOr (Union2 Boolean MediaTrackConstraints)
  -> UndefOr (Union2 Boolean MediaTrackConstraints)
  -> PrimIO MediaStreamConstraints


export
%foreign "browser:lambda:x=>x.audio"
prim__audio :
     MediaStreamConstraints
  -> PrimIO (UndefOr (Union2 Boolean MediaTrackConstraints))



export
%foreign "browser:lambda:(x,v)=>{x.audio = v}"
prim__setAudio :
     MediaStreamConstraints
  -> UndefOr (Union2 Boolean MediaTrackConstraints)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.video"
prim__video :
     MediaStreamConstraints
  -> PrimIO (UndefOr (Union2 Boolean MediaTrackConstraints))



export
%foreign "browser:lambda:(x,v)=>{x.video = v}"
prim__setVideo :
     MediaStreamConstraints
  -> UndefOr (Union2 Boolean MediaTrackConstraints)
  -> PrimIO ()



export
new' :
     (video : Optional (HSum [Bool, MediaTrackConstraints]))
  -> (audio : Optional (HSum [Bool, MediaTrackConstraints]))
  -> JSIO MediaStreamConstraints
new' a b = primJS $ MediaStreamConstraints.prim__new (toFFI a) (toFFI b)

export
new : JSIO MediaStreamConstraints
new = primJS $ MediaStreamConstraints.prim__new undef undef


export
audio :
     {auto _ : Cast t MediaStreamConstraints}
  -> t
  -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
audio v = fromUndefOrPrimNoDefault
            "MediaStreamConstraints.getaudio"
            prim__audio
            prim__setAudio
            (cast {to = MediaStreamConstraints} v)


export
video :
     {auto _ : Cast t MediaStreamConstraints}
  -> t
  -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
video v = fromUndefOrPrimNoDefault
            "MediaStreamConstraints.getvideo"
            prim__video
            prim__setVideo
            (cast {to = MediaStreamConstraints} v)
