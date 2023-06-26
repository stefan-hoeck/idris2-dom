module Web.Raw.TextTrackCue

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.TextTrack
import Web.Types.TextTrackCue


%default total


export
%foreign "browser:lambda:x=>x.endTime"
prim__endTime : TextTrackCue -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.endTime = v}"
prim__setEndTime : TextTrackCue -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.id"
prim__id : TextTrackCue -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.id = v}"
prim__setId : TextTrackCue -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onenter"
prim__onenter : TextTrackCue -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onenter = v}"
prim__setOnenter : TextTrackCue -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onexit"
prim__onexit : TextTrackCue -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onexit = v}"
prim__setOnexit : TextTrackCue -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pauseOnExit"
prim__pauseOnExit : TextTrackCue -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.pauseOnExit = v}"
prim__setPauseOnExit : TextTrackCue -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.startTime"
prim__startTime : TextTrackCue -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.startTime = v}"
prim__setStartTime : TextTrackCue -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.track"
prim__track : TextTrackCue -> PrimIO (Nullable TextTrack)


export
endTime : TextTrackCue -> Attribute True Prelude.id Double
endTime v = fromPrim "TextTrackCue.getendTime" prim__endTime prim__setEndTime v


export
id : TextTrackCue -> Attribute True Prelude.id String
id v = fromPrim "TextTrackCue.getid" prim__id prim__setId v


export
onenter : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
onenter v = fromNullablePrim
              "TextTrackCue.getonenter"
              prim__onenter
              prim__setOnenter
              v


export
onexit : TextTrackCue -> Attribute False Maybe EventHandlerNonNull
onexit v = fromNullablePrim
             "TextTrackCue.getonexit"
             prim__onexit
             prim__setOnexit
             v


export
pauseOnExit : TextTrackCue -> Attribute True Prelude.id Bool
pauseOnExit v = fromPrim
                  "TextTrackCue.getpauseOnExit"
                  prim__pauseOnExit
                  prim__setPauseOnExit
                  v


export
startTime : TextTrackCue -> Attribute True Prelude.id Double
startTime v = fromPrim
                "TextTrackCue.getstartTime"
                prim__startTime
                prim__setStartTime
                v


export
track : (obj : TextTrackCue) -> JSIO (Maybe TextTrack)
track a = tryJS "TextTrackCue.track" $ TextTrackCue.prim__track a

