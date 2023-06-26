module Web.Raw.Animation

import JS
import Web.Types.Animation
import Web.Types.AnimationEffect
import Web.Types.AnimationPlayState
import Web.Types.AnimationTimeline
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:x=>x.currentTime"
prim__currentTime : Animation -> PrimIO (Nullable Double)



export
%foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
prim__setCurrentTime : Animation -> Nullable Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.effect"
prim__effect : Animation -> PrimIO (Nullable AnimationEffect)



export
%foreign "browser:lambda:(x,v)=>{x.effect = v}"
prim__setEffect : Animation -> Nullable AnimationEffect -> PrimIO ()



export
%foreign "browser:lambda:x=>x.finished"
prim__finished : Animation -> PrimIO (Promise Animation)


export
%foreign "browser:lambda:x=>x.id"
prim__id : Animation -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.id = v}"
prim__setId : Animation -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oncancel"
prim__oncancel : Animation -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
prim__setOncancel : Animation -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onfinish"
prim__onfinish : Animation -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onfinish = v}"
prim__setOnfinish : Animation -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.pending"
prim__pending : Animation -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.playState"
prim__playState : Animation -> PrimIO String


export
%foreign "browser:lambda:x=>x.playbackRate"
prim__playbackRate : Animation -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
prim__setPlaybackRate : Animation -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ready"
prim__ready : Animation -> PrimIO (Promise Animation)


export
%foreign "browser:lambda:x=>x.startTime"
prim__startTime : Animation -> PrimIO (Nullable Double)



export
%foreign "browser:lambda:(x,v)=>{x.startTime = v}"
prim__setStartTime : Animation -> Nullable Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.timeline"
prim__timeline : Animation -> PrimIO (Nullable AnimationTimeline)



export
%foreign "browser:lambda:(x,v)=>{x.timeline = v}"
prim__setTimeline : Animation -> Nullable AnimationTimeline -> PrimIO ()



export
%foreign "browser:lambda:x=>x.cancel()"
prim__cancel : Animation -> PrimIO ()


export
%foreign "browser:lambda:x=>x.finish()"
prim__finish : Animation -> PrimIO ()


export
%foreign "browser:lambda:x=>x.pause()"
prim__pause : Animation -> PrimIO ()


export
%foreign "browser:lambda:x=>x.play()"
prim__play : Animation -> PrimIO ()


export
%foreign "browser:lambda:x=>x.reverse()"
prim__reverse : Animation -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.updatePlaybackRate(a)"
prim__updatePlaybackRate : Animation -> Double -> PrimIO ()


export
currentTime : {auto _ : Cast t Animation} -> t -> Attribute False Maybe Double
currentTime v = fromNullablePrim
                  "Animation.getcurrentTime"
                  prim__currentTime
                  prim__setCurrentTime
                  (cast {to = Animation} v)


export
effect :
     {auto _ : Cast t Animation}
  -> t
  -> Attribute False Maybe AnimationEffect
effect v = fromNullablePrim
             "Animation.geteffect"
             prim__effect
             prim__setEffect
             (cast {to = Animation} v)


export
finished :
     {auto _ : Cast t1 Animation}
  -> (obj : t1)
  -> JSIO (Promise Animation)
finished a = primJS $ Animation.prim__finished (cast a)


export
id : {auto _ : Cast t Animation} -> t -> Attribute True Prelude.id String
id v = fromPrim "Animation.getid" prim__id prim__setId (cast {to = Animation} v)


export
oncancel :
     {auto _ : Cast t Animation}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
oncancel v = fromNullablePrim
               "Animation.getoncancel"
               prim__oncancel
               prim__setOncancel
               (cast {to = Animation} v)


export
onfinish :
     {auto _ : Cast t Animation}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onfinish v = fromNullablePrim
               "Animation.getonfinish"
               prim__onfinish
               prim__setOnfinish
               (cast {to = Animation} v)


export
pending : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO Bool
pending a = tryJS "Animation.pending" $ Animation.prim__pending (cast a)


export
playState :
     {auto _ : Cast t1 Animation}
  -> (obj : t1)
  -> JSIO AnimationPlayState
playState a = tryJS "Animation.playState" $ Animation.prim__playState (cast a)


export
playbackRate :
     {auto _ : Cast t Animation}
  -> t
  -> Attribute True Prelude.id Double
playbackRate v = fromPrim
                   "Animation.getplaybackRate"
                   prim__playbackRate
                   prim__setPlaybackRate
                   (cast {to = Animation} v)


export
ready : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO (Promise Animation)
ready a = primJS $ Animation.prim__ready (cast a)


export
startTime : {auto _ : Cast t Animation} -> t -> Attribute False Maybe Double
startTime v = fromNullablePrim
                "Animation.getstartTime"
                prim__startTime
                prim__setStartTime
                (cast {to = Animation} v)


export
timeline :
     {auto _ : Cast t Animation}
  -> t
  -> Attribute False Maybe AnimationTimeline
timeline v = fromNullablePrim
               "Animation.gettimeline"
               prim__timeline
               prim__setTimeline
               (cast {to = Animation} v)


export
cancel : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO ()
cancel a = primJS $ Animation.prim__cancel (cast a)


export
finish : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO ()
finish a = primJS $ Animation.prim__finish (cast a)


export
pause : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO ()
pause a = primJS $ Animation.prim__pause (cast a)


export
play : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO ()
play a = primJS $ Animation.prim__play (cast a)


export
reverse : {auto _ : Cast t1 Animation} -> (obj : t1) -> JSIO ()
reverse a = primJS $ Animation.prim__reverse (cast a)


export
updatePlaybackRate :
     {auto _ : Cast t1 Animation}
  -> (obj : t1)
  -> (playbackRate : Double)
  -> JSIO ()
updatePlaybackRate a b = primJS $ Animation.prim__updatePlaybackRate (cast a) b
