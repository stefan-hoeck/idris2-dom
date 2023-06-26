module Web.Raw.AnimationTimeline

import JS
import Web.Types.AnimationTimeline


%default total


export
%foreign "browser:lambda:x=>x.currentTime"
prim__currentTime : AnimationTimeline -> PrimIO (Nullable Double)


export
currentTime :
     {auto _ : Cast t1 AnimationTimeline}
  -> (obj : t1)
  -> JSIO (Maybe Double)
currentTime a = tryJS "AnimationTimeline.currentTime" $
  AnimationTimeline.prim__currentTime (cast a)

