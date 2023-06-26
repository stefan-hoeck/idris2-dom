module Web.Raw.AudioTrackList

import JS
import Web.Types.AudioTrack
import Web.Types.AudioTrackList
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : AudioTrackList -> Bits32 -> PrimIO AudioTrack


export
%foreign "browser:lambda:x=>x.length"
prim__length : AudioTrackList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.onaddtrack"
prim__onaddtrack : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
prim__setOnaddtrack :
     AudioTrackList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange : AudioTrackList -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onremovetrack"
prim__onremovetrack : AudioTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
prim__setOnremovetrack :
     AudioTrackList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
prim__getTrackById : AudioTrackList -> String -> PrimIO (Nullable AudioTrack)


export
get : (obj : AudioTrackList) -> (index : Bits32) -> JSIO AudioTrack
get a b = primJS $ AudioTrackList.prim__get a b


export
length : (obj : AudioTrackList) -> JSIO Bits32
length a = primJS $ AudioTrackList.prim__length a


export
onaddtrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
onaddtrack v = fromNullablePrim
                 "AudioTrackList.getonaddtrack"
                 prim__onaddtrack
                 prim__setOnaddtrack
                 v


export
onchange : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "AudioTrackList.getonchange"
               prim__onchange
               prim__setOnchange
               v


export
onremovetrack : AudioTrackList -> Attribute False Maybe EventHandlerNonNull
onremovetrack v = fromNullablePrim
                    "AudioTrackList.getonremovetrack"
                    prim__onremovetrack
                    prim__setOnremovetrack
                    v


export
getTrackById :
     (obj : AudioTrackList)
  -> (id : String)
  -> JSIO (Maybe AudioTrack)
getTrackById a b = tryJS "AudioTrackList.getTrackById" $
  AudioTrackList.prim__getTrackById a b

