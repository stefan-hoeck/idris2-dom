module Web.Raw.MediaStream

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.MediaStream
import Web.Types.MediaStreamTrack


%default total


export
%foreign "browser:lambda:()=> new MediaStream()"
prim__new : PrimIO MediaStream


export
%foreign "browser:lambda:(a)=> new MediaStream(a)"
prim__new1 : MediaStream -> PrimIO MediaStream


export
%foreign "browser:lambda:(a)=> new MediaStream(a)"
prim__new2 : Array MediaStreamTrack -> PrimIO MediaStream


export
%foreign "browser:lambda:x=>x.active"
prim__active : MediaStream -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.id"
prim__id : MediaStream -> PrimIO String


export
%foreign "browser:lambda:x=>x.onaddtrack"
prim__onaddtrack : MediaStream -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
prim__setOnaddtrack : MediaStream -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onremovetrack"
prim__onremovetrack : MediaStream -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
prim__setOnremovetrack :
     MediaStream
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.addTrack(a)"
prim__addTrack : MediaStream -> MediaStreamTrack -> PrimIO ()


export
%foreign "browser:lambda:x=>x.clone()"
prim__clone : MediaStream -> PrimIO MediaStream


export
%foreign "browser:lambda:x=>x.getAudioTracks()"
prim__getAudioTracks : MediaStream -> PrimIO (Array MediaStreamTrack)


export
%foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
prim__getTrackById : MediaStream -> String -> PrimIO (Nullable MediaStreamTrack)


export
%foreign "browser:lambda:x=>x.getTracks()"
prim__getTracks : MediaStream -> PrimIO (Array MediaStreamTrack)


export
%foreign "browser:lambda:x=>x.getVideoTracks()"
prim__getVideoTracks : MediaStream -> PrimIO (Array MediaStreamTrack)


export
%foreign "browser:lambda:(x,a)=>x.removeTrack(a)"
prim__removeTrack : MediaStream -> MediaStreamTrack -> PrimIO ()


export
new : JSIO MediaStream
new = primJS $ MediaStream.prim__new


export
new1 : (stream : MediaStream) -> JSIO MediaStream
new1 a = primJS $ MediaStream.prim__new1 a


export
new2 : (tracks : Array MediaStreamTrack) -> JSIO MediaStream
new2 a = primJS $ MediaStream.prim__new2 a


export
active : (obj : MediaStream) -> JSIO Bool
active a = tryJS "MediaStream.active" $ MediaStream.prim__active a


export
id : (obj : MediaStream) -> JSIO String
id a = primJS $ MediaStream.prim__id a


export
onaddtrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
onaddtrack v = fromNullablePrim
                 "MediaStream.getonaddtrack"
                 prim__onaddtrack
                 prim__setOnaddtrack
                 v


export
onremovetrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
onremovetrack v = fromNullablePrim
                    "MediaStream.getonremovetrack"
                    prim__onremovetrack
                    prim__setOnremovetrack
                    v


export
addTrack : (obj : MediaStream) -> (track : MediaStreamTrack) -> JSIO ()
addTrack a b = primJS $ MediaStream.prim__addTrack a b


export
clone : (obj : MediaStream) -> JSIO MediaStream
clone a = primJS $ MediaStream.prim__clone a


export
getAudioTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
getAudioTracks a = primJS $ MediaStream.prim__getAudioTracks a


export
getTrackById :
     (obj : MediaStream)
  -> (trackId : String)
  -> JSIO (Maybe MediaStreamTrack)
getTrackById a b = tryJS "MediaStream.getTrackById" $
  MediaStream.prim__getTrackById a b


export
getTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
getTracks a = primJS $ MediaStream.prim__getTracks a


export
getVideoTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
getVideoTracks a = primJS $ MediaStream.prim__getVideoTracks a


export
removeTrack : (obj : MediaStream) -> (track : MediaStreamTrack) -> JSIO ()
removeTrack a b = primJS $ MediaStream.prim__removeTrack a b
