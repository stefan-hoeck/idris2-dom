module Web.Raw.AnimationPlaybackEventInit

import JS
import Web.Types.AnimationPlaybackEventInit
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a,b)=> ({currentTime: a,timelineTime: b})"
prim__new :
     UndefOr (Nullable Double)
  -> UndefOr (Nullable Double)
  -> PrimIO AnimationPlaybackEventInit


export
%foreign "browser:lambda:x=>x.currentTime"
prim__currentTime :
     AnimationPlaybackEventInit
  -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
prim__setCurrentTime :
     AnimationPlaybackEventInit
  -> UndefOr (Nullable Double)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.timelineTime"
prim__timelineTime :
     AnimationPlaybackEventInit
  -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.timelineTime = v}"
prim__setTimelineTime :
     AnimationPlaybackEventInit
  -> UndefOr (Nullable Double)
  -> PrimIO ()



export
new' :
     (currentTime : Optional (Maybe Double))
  -> (timelineTime : Optional (Maybe Double))
  -> JSIO AnimationPlaybackEventInit
new' a b = primJS $ AnimationPlaybackEventInit.prim__new (toFFI a) (toFFI b)

export
new : JSIO AnimationPlaybackEventInit
new = primJS $ AnimationPlaybackEventInit.prim__new undef undef


export
currentTime :
     {auto _ : Cast t AnimationPlaybackEventInit}
  -> t
  -> Attribute True Optional (Maybe Double)
currentTime v = fromUndefOrPrim
                  "AnimationPlaybackEventInit.getcurrentTime"
                  prim__currentTime
                  prim__setCurrentTime
                  Nothing
                  (cast {to = AnimationPlaybackEventInit} v)


export
timelineTime :
     {auto _ : Cast t AnimationPlaybackEventInit}
  -> t
  -> Attribute True Optional (Maybe Double)
timelineTime v = fromUndefOrPrim
                   "AnimationPlaybackEventInit.gettimelineTime"
                   prim__timelineTime
                   prim__setTimelineTime
                   Nothing
                   (cast {to = AnimationPlaybackEventInit} v)
