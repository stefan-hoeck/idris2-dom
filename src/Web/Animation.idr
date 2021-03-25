module Web.Animation

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  %foreign "browser:lambda:x=>x.finished"
  prim__finished : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.pending"
  prim__pending : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.playState"
  prim__playState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.effect"
  prim__effect : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.effect = v}"
  prim__setEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onfinish"
  prim__onfinish : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onfinish = v}"
  prim__setOnfinish : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.startTime = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.timeline = v}"
  prim__setTimeline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace AnimationPlaybackEvent
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

namespace AnimationTimeline
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

namespace KeyframeEffect
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.timelineTime = v}"
  prim__setTimelineTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace BaseComputedKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.computedOffset"
  prim__computedOffset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.computedOffset = v}"
  prim__setComputedOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace BaseKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace BasePropertyIndexedKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ComputedEffectTiming
  
  %foreign "browser:lambda:x=>x.activeDuration"
  prim__activeDuration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.activeDuration = v}"
  prim__setActiveDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentIteration"
  prim__currentIteration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentIteration = v}"
  prim__setCurrentIteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.localTime"
  prim__localTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.localTime = v}"
  prim__setLocalTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.progress"
  prim__progress : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.progress = v}"
  prim__setProgress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DocumentTimelineOptions
  
  %foreign "browser:lambda:x=>x.originTime"
  prim__originTime : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.originTime = v}"
  prim__setOriginTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace EffectTiming
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace KeyframeAnimationOptions
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace KeyframeEffectOptions
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace OptionalEffectTiming
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast Animation EventTarget where
  cast = believe_me

export
Cast AnimationPlaybackEvent Event where
  cast = believe_me

export
Cast AnimationPlaybackEventInit EventInit where
  cast = believe_me

export
Cast CSSPseudoElement Animatable where
  cast = believe_me

export
Cast ComputedEffectTiming EffectTiming where
  cast = believe_me

export
Cast DocumentTimeline AnimationTimeline where
  cast = believe_me

export
Cast Element Animatable where
  cast = believe_me

export
Cast KeyframeAnimationOptions KeyframeEffectOptions where
  cast = believe_me

export
Cast KeyframeEffect AnimationEffect where
  cast = believe_me

export
Cast KeyframeEffectOptions EffectTiming where
  cast = believe_me