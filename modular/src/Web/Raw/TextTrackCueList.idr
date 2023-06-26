module Web.Raw.TextTrackCueList

import JS
import Web.Types.TextTrackCue
import Web.Types.TextTrackCueList


%default total


export
%foreign "browser:lambda:(o,x)=>o[x]"
prim__get : TextTrackCueList -> Bits32 -> PrimIO TextTrackCue


export
%foreign "browser:lambda:x=>x.length"
prim__length : TextTrackCueList -> PrimIO Bits32


export
%foreign "browser:lambda:(x,a)=>x.getCueById(a)"
prim__getCueById : TextTrackCueList -> String -> PrimIO (Nullable TextTrackCue)


export
get : (obj : TextTrackCueList) -> (index : Bits32) -> JSIO TextTrackCue
get a b = primJS $ TextTrackCueList.prim__get a b


export
length : (obj : TextTrackCueList) -> JSIO Bits32
length a = primJS $ TextTrackCueList.prim__length a


export
getCueById :
     (obj : TextTrackCueList)
  -> (id : String)
  -> JSIO (Maybe TextTrackCue)
getCueById a b = tryJS "TextTrackCueList.getCueById" $
  TextTrackCueList.prim__getCueById a b
