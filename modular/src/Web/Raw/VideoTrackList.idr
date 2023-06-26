module Web.Raw.VideoTrackList

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.VideoTrack
import Web.Types.VideoTrackList


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : VideoTrackList -> Bits32 -> PrimIO VideoTrack


export
%foreign "browser:lambda:x=>x.length"
prim__length : VideoTrackList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.onaddtrack"
prim__onaddtrack : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
prim__setOnaddtrack :
     VideoTrackList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange : VideoTrackList -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onremovetrack"
prim__onremovetrack : VideoTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
prim__setOnremovetrack :
     VideoTrackList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.selectedIndex"
prim__selectedIndex : VideoTrackList -> PrimIO Int32


export
%foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
prim__getTrackById : VideoTrackList -> String -> PrimIO (Nullable VideoTrack)


export
get : (obj : VideoTrackList) -> (index : Bits32) -> JSIO VideoTrack
get a b = primJS $ VideoTrackList.prim__get a b


export
length : (obj : VideoTrackList) -> JSIO Bits32
length a = primJS $ VideoTrackList.prim__length a


export
onaddtrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
onaddtrack v = fromNullablePrim
                 "VideoTrackList.getonaddtrack"
                 prim__onaddtrack
                 prim__setOnaddtrack
                 v


export
onchange : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "VideoTrackList.getonchange"
               prim__onchange
               prim__setOnchange
               v


export
onremovetrack : VideoTrackList -> Attribute False Maybe EventHandlerNonNull
onremovetrack v = fromNullablePrim
                    "VideoTrackList.getonremovetrack"
                    prim__onremovetrack
                    prim__setOnremovetrack
                    v


export
selectedIndex : (obj : VideoTrackList) -> JSIO Int32
selectedIndex a = primJS $ VideoTrackList.prim__selectedIndex a


export
getTrackById :
     (obj : VideoTrackList)
  -> (id : String)
  -> JSIO (Maybe VideoTrack)
getTrackById a b = tryJS "VideoTrackList.getTrackById" $
  VideoTrackList.prim__getTrackById a b
