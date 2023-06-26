module Web.Raw.TextTrackList

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.TextTrack
import Web.Types.TextTrackList


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : TextTrackList -> Bits32 -> PrimIO TextTrack


export
%foreign "browser:lambda:x=>x.length"
prim__length : TextTrackList -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.onaddtrack"
prim__onaddtrack : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
prim__setOnaddtrack : TextTrackList -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onchange"
prim__onchange : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onchange = v}"
prim__setOnchange : TextTrackList -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onremovetrack"
prim__onremovetrack : TextTrackList -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
prim__setOnremovetrack :
     TextTrackList
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.getTrackById(a)"
prim__getTrackById : TextTrackList -> String -> PrimIO (Nullable TextTrack)


export
get : (obj : TextTrackList) -> (index : Bits32) -> JSIO TextTrack
get a b = primJS $ TextTrackList.prim__get a b


export
length : (obj : TextTrackList) -> JSIO Bits32
length a = primJS $ TextTrackList.prim__length a


export
onaddtrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
onaddtrack v = fromNullablePrim
                 "TextTrackList.getonaddtrack"
                 prim__onaddtrack
                 prim__setOnaddtrack
                 v


export
onchange : TextTrackList -> Attribute False Maybe EventHandlerNonNull
onchange v = fromNullablePrim
               "TextTrackList.getonchange"
               prim__onchange
               prim__setOnchange
               v


export
onremovetrack : TextTrackList -> Attribute False Maybe EventHandlerNonNull
onremovetrack v = fromNullablePrim
                    "TextTrackList.getonremovetrack"
                    prim__onremovetrack
                    prim__setOnremovetrack
                    v


export
getTrackById : (obj : TextTrackList) -> (id : String) -> JSIO (Maybe TextTrack)
getTrackById a b = tryJS "TextTrackList.getTrackById" $
  TextTrackList.prim__getTrackById a b

