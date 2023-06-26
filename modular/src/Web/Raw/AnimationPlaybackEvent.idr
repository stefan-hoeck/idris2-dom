module Web.Raw.AnimationPlaybackEvent

import JS
import Web.Types.AnimationPlaybackEvent
import Web.Types.Event


%default total


export
%foreign "browser:lambda:x=>x.currentTime"
prim__currentTime : AnimationPlaybackEvent -> PrimIO (Nullable Double)


export
%foreign "browser:lambda:x=>x.timelineTime"
prim__timelineTime : AnimationPlaybackEvent -> PrimIO (Nullable Double)


export
currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
currentTime a = tryJS "AnimationPlaybackEvent.currentTime" $
  AnimationPlaybackEvent.prim__currentTime a


export
timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
timelineTime a = tryJS "AnimationPlaybackEvent.timelineTime" $
  AnimationPlaybackEvent.prim__timelineTime a
