module Web.Raw.AudioTrack

import JS
import Web.Types.AudioTrack
import Web.Types.SourceBuffer


%default total


export
%foreign "browser:lambda:x=>x.enabled"
prim__enabled : AudioTrack -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.enabled = v}"
prim__setEnabled : AudioTrack -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.id"
prim__id : AudioTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.kind"
prim__kind : AudioTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.label"
prim__label : AudioTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.language"
prim__language : AudioTrack -> PrimIO String


export
%foreign "browser:lambda:x=>x.sourceBuffer"
prim__sourceBuffer : AudioTrack -> PrimIO (Nullable SourceBuffer)


export
enabled : AudioTrack -> Attribute True Prelude.id Bool
enabled v = fromPrim "AudioTrack.getenabled" prim__enabled prim__setEnabled v


export
id : (obj : AudioTrack) -> JSIO String
id a = primJS $ AudioTrack.prim__id a


export
kind : (obj : AudioTrack) -> JSIO String
kind a = primJS $ AudioTrack.prim__kind a


export
label : (obj : AudioTrack) -> JSIO String
label a = primJS $ AudioTrack.prim__label a


export
language : (obj : AudioTrack) -> JSIO String
language a = primJS $ AudioTrack.prim__language a


export
sourceBuffer : (obj : AudioTrack) -> JSIO (Maybe SourceBuffer)
sourceBuffer a = tryJS "AudioTrack.sourceBuffer" $
  AudioTrack.prim__sourceBuffer a
