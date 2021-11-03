module Web.Internal.AnimationPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation

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


namespace AnimationEffect

  export
  %foreign "browser:lambda:x=>x.getComputedTiming()"
  prim__getComputedTiming : AnimationEffect -> PrimIO ComputedEffectTiming

  export
  %foreign "browser:lambda:x=>x.getTiming()"
  prim__getTiming : AnimationEffect -> PrimIO EffectTiming

  export
  %foreign "browser:lambda:(x,a)=>x.updateTiming(a)"
  prim__updateTiming :  AnimationEffect
                     -> UndefOr OptionalEffectTiming
                     -> PrimIO ()


namespace AnimationPlaybackEvent

  export
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnimationPlaybackEvent -> PrimIO (Nullable Double)

  export
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnimationPlaybackEvent -> PrimIO (Nullable Double)


namespace AnimationTimeline

  export
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnimationTimeline -> PrimIO (Nullable Double)



namespace KeyframeEffect

  export
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : KeyframeEffect -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : KeyframeEffect -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : KeyframeEffect -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite : KeyframeEffect -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.target"
  prim__target :  KeyframeEffect
               -> PrimIO (Nullable (Union2 Element CSSPseudoElement))


  export
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget :  KeyframeEffect
                  -> Nullable (Union2 Element CSSPseudoElement)
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.getKeyframes()"
  prim__getKeyframes : KeyframeEffect -> PrimIO (Array Object)

  export
  %foreign "browser:lambda:(x,a)=>x.setKeyframes(a)"
  prim__setKeyframes : KeyframeEffect -> Nullable Object -> PrimIO ()



--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable

  export
  %foreign "browser:lambda:(x,a,b)=>x.animate(a,b)"
  prim__animate :  Animatable
                -> Nullable Object
                -> UndefOr (Union2 Double KeyframeAnimationOptions)
                -> PrimIO Animation

  export
  %foreign "browser:lambda:x=>x.getAnimations()"
  prim__getAnimations : Animatable -> PrimIO (Array Animation)



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit

  export
  %foreign "browser:lambda:(a,b)=> {currentTime: a,timelineTime: b}"
  prim__new :  UndefOr (Nullable Double)
            -> UndefOr (Nullable Double)
            -> PrimIO AnimationPlaybackEventInit

  export
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime :  AnimationPlaybackEventInit
                    -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime :  AnimationPlaybackEventInit
                       -> UndefOr (Nullable Double)
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime :  AnimationPlaybackEventInit
                     -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.timelineTime = v}"
  prim__setTimelineTime :  AnimationPlaybackEventInit
                        -> UndefOr (Nullable Double)
                        -> PrimIO ()



namespace BaseComputedKeyframe

  export
  %foreign "browser:lambda:(a,b,c,d)=> {offset: a,computedOffset: b,easing: c,composite: d}"
  prim__new :  UndefOr (Nullable Double)
            -> UndefOr Double
            -> UndefOr String
            -> UndefOr String
            -> PrimIO BaseComputedKeyframe

  export
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : BaseComputedKeyframe -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : BaseComputedKeyframe -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.computedOffset"
  prim__computedOffset : BaseComputedKeyframe -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.computedOffset = v}"
  prim__setComputedOffset : BaseComputedKeyframe -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : BaseComputedKeyframe -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : BaseComputedKeyframe -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : BaseComputedKeyframe -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset :  BaseComputedKeyframe
                  -> UndefOr (Nullable Double)
                  -> PrimIO ()



namespace BaseKeyframe

  export
  %foreign "browser:lambda:(a,b,c)=> {offset: a,easing: b,composite: c}"
  prim__new :  UndefOr (Nullable Double)
            -> UndefOr String
            -> UndefOr String
            -> PrimIO BaseKeyframe

  export
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : BaseKeyframe -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : BaseKeyframe -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : BaseKeyframe -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : BaseKeyframe -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : BaseKeyframe -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : BaseKeyframe -> UndefOr (Nullable Double) -> PrimIO ()



namespace BasePropertyIndexedKeyframe

  export
  %foreign "browser:lambda:(a,b,c)=> {offset: a,easing: b,composite: c}"
  prim__new :  UndefOr (Nullable (Union2 Double (Array (Nullable Double))))
            -> UndefOr (Union2 String (Array String))
            -> UndefOr (Union2 String (Array String))
            -> PrimIO BasePropertyIndexedKeyframe

  export
  %foreign "browser:lambda:x=>x.composite"
  prim__composite :  BasePropertyIndexedKeyframe
                  -> PrimIO (UndefOr (Union2 String (Array String)))


  export
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite :  BasePropertyIndexedKeyframe
                     -> UndefOr (Union2 String (Array String))
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.easing"
  prim__easing :  BasePropertyIndexedKeyframe
               -> PrimIO (UndefOr (Union2 String (Array String)))


  export
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing :  BasePropertyIndexedKeyframe
                  -> UndefOr (Union2 String (Array String))
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.offset"
  prim__offset :  BasePropertyIndexedKeyframe
               -> PrimIO (UndefOr (Nullable (Union2 Double
                                                    (Array (Nullable Double)))))


  export
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset :  BasePropertyIndexedKeyframe
                  -> UndefOr (Nullable (Union2 Double
                                               (Array (Nullable Double))))
                  -> PrimIO ()



namespace ComputedEffectTiming

  export
  %foreign "browser:lambda:(a,b,c,d,e)=> {endTime: a,activeDuration: b,localTime: c,progress: d,currentIteration: e}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr (Nullable Double)
            -> UndefOr (Nullable Double)
            -> UndefOr (Nullable Double)
            -> PrimIO ComputedEffectTiming

  export
  %foreign "browser:lambda:x=>x.activeDuration"
  prim__activeDuration : ComputedEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.activeDuration = v}"
  prim__setActiveDuration : ComputedEffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.currentIteration"
  prim__currentIteration :  ComputedEffectTiming
                         -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.currentIteration = v}"
  prim__setCurrentIteration :  ComputedEffectTiming
                            -> UndefOr (Nullable Double)
                            -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : ComputedEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : ComputedEffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.localTime"
  prim__localTime : ComputedEffectTiming -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.localTime = v}"
  prim__setLocalTime :  ComputedEffectTiming
                     -> UndefOr (Nullable Double)
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.progress"
  prim__progress : ComputedEffectTiming -> PrimIO (UndefOr (Nullable Double))


  export
  %foreign "browser:lambda:(x,v)=>{x.progress = v}"
  prim__setProgress :  ComputedEffectTiming
                    -> UndefOr (Nullable Double)
                    -> PrimIO ()



namespace DocumentTimelineOptions

  export
  %foreign "browser:lambda:(a)=> {originTime: a}"
  prim__new : UndefOr Double -> PrimIO DocumentTimelineOptions

  export
  %foreign "browser:lambda:x=>x.originTime"
  prim__originTime : DocumentTimelineOptions -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.originTime = v}"
  prim__setOriginTime : DocumentTimelineOptions -> UndefOr Double -> PrimIO ()



namespace EffectTiming

  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h)=> {delay: a,endDelay: b,fill: c,iterationStart: d,iterations: e,duration: f,direction: g,easing: h}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr String
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr (Union2 Double String)
            -> UndefOr String
            -> UndefOr String
            -> PrimIO EffectTiming

  export
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : EffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : EffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : EffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : EffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : EffectTiming -> PrimIO (UndefOr (Union2 Double String))


  export
  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration :  EffectTiming
                    -> UndefOr (Union2 Double String)
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : EffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : EffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : EffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : EffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : EffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : EffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : EffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : EffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : EffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : EffectTiming -> UndefOr Double -> PrimIO ()



namespace KeyframeAnimationOptions

  export
  %foreign "browser:lambda:(a)=> {id: a}"
  prim__new : UndefOr String -> PrimIO KeyframeAnimationOptions

  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : KeyframeAnimationOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : KeyframeAnimationOptions -> UndefOr String -> PrimIO ()



namespace KeyframeEffectOptions

  export
  %foreign "browser:lambda:(a,b)=> {iterationComposite: a,composite: b}"
  prim__new : UndefOr String -> UndefOr String -> PrimIO KeyframeEffectOptions

  export
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : KeyframeEffectOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : KeyframeEffectOptions -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : KeyframeEffectOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite :  KeyframeEffectOptions
                              -> UndefOr String
                              -> PrimIO ()



namespace OptionalEffectTiming

  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h)=> {delay: a,endDelay: b,fill: c,iterationStart: d,iterations: e,duration: f,direction: g,easing: h}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr String
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr (Union2 Double String)
            -> UndefOr String
            -> UndefOr String
            -> PrimIO OptionalEffectTiming

  export
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : OptionalEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : OptionalEffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : OptionalEffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : OptionalEffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.duration"
  prim__duration :  OptionalEffectTiming
                 -> PrimIO (UndefOr (Union2 Double String))


  export
  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration :  OptionalEffectTiming
                    -> UndefOr (Union2 Double String)
                    -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : OptionalEffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : OptionalEffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : OptionalEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : OptionalEffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : OptionalEffectTiming -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : OptionalEffectTiming -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : OptionalEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : OptionalEffectTiming -> UndefOr Double -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : OptionalEffectTiming -> PrimIO (UndefOr Double)


  export
  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : OptionalEffectTiming -> UndefOr Double -> PrimIO ()
