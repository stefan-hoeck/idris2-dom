module Web.Raw.TextTrack

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.SourceBuffer
import Web.Types.TextTrack
import Web.Types.TextTrackCue
import Web.Types.TextTrackCueList
import Web.Types.TextTrackKind
import Web.Types.TextTrackMode


%default total


export
%foreign "browser:lambda:x=>x.activeCues"
prim__activeCues : TextTrack -> PrimIO (Nullable TextTrackCueList)


export
%foreign "browser:lambda:x=>x.cues"
prim__cues : TextTrack -> PrimIO (Nullable TextTrackCueList)


export
%foreign "browser:lambda:x=>x.id"
prim__id : TextTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.inBandMetadataTrackDispatchType"
prim__inBandMetadataTrackDispatchType : TextTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : TextTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.label"
prim__label : TextTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.language"
prim__language : TextTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.mode"
prim__mode : TextTrack -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.mode = v}"
prim__setMode : TextTrack -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncuechange"
prim__oncuechange : TextTrack -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncuechange = v}"
prim__setOncuechange : TextTrack -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sourceBuffer"
prim__sourceBuffer : TextTrack -> PrimIO (Nullable SourceBuffer)


export
%foreign "browser:lambda:(x,a)=>x.addCue(a)"
prim__addCue : TextTrack -> TextTrackCue -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.removeCue(a)"
prim__removeCue : TextTrack -> TextTrackCue -> PrimIO ()


export
activeCues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
activeCues a = tryJS "TextTrack.activeCues" $ TextTrack.prim__activeCues a


export
cues : (obj : TextTrack) -> JSIO (Maybe TextTrackCueList)
cues a = tryJS "TextTrack.cues" $ TextTrack.prim__cues a


export
id : (obj : TextTrack) -> JSIO String
id a = primJS $ TextTrack.prim__id a


export
inBandMetadataTrackDispatchType : (obj : TextTrack) -> JSIO String
inBandMetadataTrackDispatchType a = primJS $
  TextTrack.prim__inBandMetadataTrackDispatchType a


export
kind : (obj : TextTrack) -> JSIO TextTrackKind
kind a = tryJS "TextTrack.kind" $ TextTrack.prim__kind a


export
label : (obj : TextTrack) -> JSIO String
label a = primJS $ TextTrack.prim__label a


export
language : (obj : TextTrack) -> JSIO String
language a = primJS $ TextTrack.prim__language a


export
mode : TextTrack -> Attribute True Prelude.id TextTrackMode
mode v = fromPrim "TextTrack.getmode" prim__mode prim__setMode v


export
oncuechange : TextTrack -> Attribute False Maybe EventHandlerNonNull
oncuechange v = fromNullablePrim
                  "TextTrack.getoncuechange"
                  prim__oncuechange
                  prim__setOncuechange
                  v


export
sourceBuffer : (obj : TextTrack) -> JSIO (Maybe SourceBuffer)
sourceBuffer a = tryJS "TextTrack.sourceBuffer" $ TextTrack.prim__sourceBuffer a


export
addCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
addCue a b = primJS $ TextTrack.prim__addCue a b


export
removeCue : (obj : TextTrack) -> (cue : TextTrackCue) -> JSIO ()
removeCue a b = primJS $ TextTrack.prim__removeCue a b
