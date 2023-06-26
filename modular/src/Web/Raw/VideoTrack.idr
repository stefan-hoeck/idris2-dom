module Web.Raw.VideoTrack

import JS
import Web.Types.SourceBuffer
import Web.Types.VideoTrack


%default total


export
%foreign "browser:lambda:x=>x.id"
prim__id : VideoTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : VideoTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.label"
prim__label : VideoTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.language"
prim__language : VideoTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.selected"
prim__selected : VideoTrack -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.selected = v}"
prim__setSelected : VideoTrack -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.sourceBuffer"
prim__sourceBuffer : VideoTrack -> PrimIO (Nullable SourceBuffer)


export
id : (obj : VideoTrack) -> JSIO String
id a = primJS $ VideoTrack.prim__id a


export
kind : (obj : VideoTrack) -> JSIO String
kind a = primJS $ VideoTrack.prim__kind a


export
label : (obj : VideoTrack) -> JSIO String
label a = primJS $ VideoTrack.prim__label a


export
language : (obj : VideoTrack) -> JSIO String
language a = primJS $ VideoTrack.prim__language a


export
selected : VideoTrack -> Attribute True Prelude.id Bool
selected v = fromPrim
               "VideoTrack.getselected"
               prim__selected
               prim__setSelected
               v


export
sourceBuffer : (obj : VideoTrack) -> JSIO (Maybe SourceBuffer)
sourceBuffer a = tryJS "VideoTrack.sourceBuffer" $
  VideoTrack.prim__sourceBuffer a
