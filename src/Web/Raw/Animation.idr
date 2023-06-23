module Web.Raw.Animation

import JS
import Web.Internal.AnimationPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation

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
  id v = fromPrim
           "Animation.getid"
           prim__id
           prim__setId
           (cast {to = Animation} v)


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
  updatePlaybackRate a b = primJS $
    Animation.prim__updatePlaybackRate (cast a) b



namespace AnimationEffect

  export
  getComputedTiming :
       {auto _ : Cast t1 AnimationEffect}
    -> (obj : t1)
    -> JSIO ComputedEffectTiming
  getComputedTiming a = primJS $
    AnimationEffect.prim__getComputedTiming (cast a)


  export
  getTiming :
       {auto _ : Cast t1 AnimationEffect}
    -> (obj : t1)
    -> JSIO EffectTiming
  getTiming a = primJS $ AnimationEffect.prim__getTiming (cast a)


  export
  updateTiming' :
       {auto _ : Cast t1 AnimationEffect}
    -> {auto _ : Cast t2 OptionalEffectTiming}
    -> (obj : t1)
    -> (timing : Optional t2)
    -> JSIO ()
  updateTiming' a b = primJS $
    AnimationEffect.prim__updateTiming (cast a) (optUp b)

  export
  updateTiming : {auto _ : Cast t1 AnimationEffect} -> (obj : t1) -> JSIO ()
  updateTiming a = primJS $ AnimationEffect.prim__updateTiming (cast a) undef



namespace AnimationPlaybackEvent

  export
  currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationPlaybackEvent.currentTime" $
    AnimationPlaybackEvent.prim__currentTime a


  export
  timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  timelineTime a = tryJS "AnimationPlaybackEvent.timelineTime" $
    AnimationPlaybackEvent.prim__timelineTime a



namespace AnimationTimeline

  export
  currentTime :
       {auto _ : Cast t1 AnimationTimeline}
    -> (obj : t1)
    -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationTimeline.currentTime" $
    AnimationTimeline.prim__currentTime (cast a)




namespace KeyframeEffect

  export
  composite : KeyframeEffect -> Attribute True Prelude.id CompositeOperation
  composite v = fromPrim
                  "KeyframeEffect.getcomposite"
                  prim__composite
                  prim__setComposite
                  v


  export
  iterationComposite :
       KeyframeEffect
    -> Attribute True Prelude.id IterationCompositeOperation
  iterationComposite v = fromPrim
                           "KeyframeEffect.getiterationComposite"
                           prim__iterationComposite
                           prim__setIterationComposite
                           v


  export
  target :
       KeyframeEffect
    -> Attribute False Maybe (HSum [Element, CSSPseudoElement])
  target v = fromNullablePrim
               "KeyframeEffect.gettarget"
               prim__target
               prim__setTarget
               v


  export
  getKeyframes : (obj : KeyframeEffect) -> JSIO (Array Object)
  getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes a


  export
  setKeyframes :
       {auto _ : Cast t2 Object}
    -> (obj : KeyframeEffect)
    -> (keyframes : Maybe t2)
    -> JSIO ()
  setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes a (mayUp b)




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable

  export
  animate' :
       {auto _ : Cast t1 Animatable}
    -> {auto _ : Cast t2 Object}
    -> (obj : t1)
    -> (keyframes : Maybe t2)
    -> (options : Optional (HSum [Double, KeyframeAnimationOptions]))
    -> JSIO Animation
  animate' a b c = primJS $
    Animatable.prim__animate (cast a) (mayUp b) (toFFI c)

  export
  animate :
       {auto _ : Cast t1 Animatable}
    -> {auto _ : Cast t2 Object}
    -> (obj : t1)
    -> (keyframes : Maybe t2)
    -> JSIO Animation
  animate a b = primJS $ Animatable.prim__animate (cast a) (mayUp b) undef


  export
  getAnimations :
       {auto _ : Cast t1 Animatable}
    -> (obj : t1)
    -> JSIO (Array Animation)
  getAnimations a = primJS $ Animatable.prim__getAnimations (cast a)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit

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



namespace BaseComputedKeyframe

  export
  new' :
       (offset : Optional (Maybe Double))
    -> (computedOffset : Optional Double)
    -> (easing : Optional String)
    -> (composite : Optional CompositeOperationOrAuto)
    -> JSIO BaseComputedKeyframe
  new' a b c d = primJS $
    BaseComputedKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new : JSIO BaseComputedKeyframe
  new = primJS $ BaseComputedKeyframe.prim__new undef undef undef undef


  export
  composite :
       {auto _ : Cast t BaseComputedKeyframe}
    -> t
    -> Attribute False Optional CompositeOperationOrAuto
  composite v = fromUndefOrPrimNoDefault
                  "BaseComputedKeyframe.getcomposite"
                  prim__composite
                  prim__setComposite
                  (cast {to = BaseComputedKeyframe} v)


  export
  computedOffset :
       {auto _ : Cast t BaseComputedKeyframe}
    -> t
    -> Attribute False Optional Double
  computedOffset v = fromUndefOrPrimNoDefault
                       "BaseComputedKeyframe.getcomputedOffset"
                       prim__computedOffset
                       prim__setComputedOffset
                       (cast {to = BaseComputedKeyframe} v)


  export
  easing :
       {auto _ : Cast t BaseComputedKeyframe}
    -> t
    -> Attribute True Optional String
  easing v = fromUndefOrPrim
               "BaseComputedKeyframe.geteasing"
               prim__easing
               prim__setEasing
               "linear"
               (cast {to = BaseComputedKeyframe} v)


  export
  offset :
       {auto _ : Cast t BaseComputedKeyframe}
    -> t
    -> Attribute True Optional (Maybe Double)
  offset v = fromUndefOrPrim
               "BaseComputedKeyframe.getoffset"
               prim__offset
               prim__setOffset
               Nothing
               (cast {to = BaseComputedKeyframe} v)



namespace BaseKeyframe

  export
  new' :
       (offset : Optional (Maybe Double))
    -> (easing : Optional String)
    -> (composite : Optional CompositeOperationOrAuto)
    -> JSIO BaseKeyframe
  new' a b c = primJS $ BaseKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO BaseKeyframe
  new = primJS $ BaseKeyframe.prim__new undef undef undef


  export
  composite :
       {auto _ : Cast t BaseKeyframe}
    -> t
    -> Attribute False Optional CompositeOperationOrAuto
  composite v = fromUndefOrPrimNoDefault
                  "BaseKeyframe.getcomposite"
                  prim__composite
                  prim__setComposite
                  (cast {to = BaseKeyframe} v)


  export
  easing : {auto _ : Cast t BaseKeyframe} -> t -> Attribute True Optional String
  easing v = fromUndefOrPrim
               "BaseKeyframe.geteasing"
               prim__easing
               prim__setEasing
               "linear"
               (cast {to = BaseKeyframe} v)


  export
  offset :
       {auto _ : Cast t BaseKeyframe}
    -> t
    -> Attribute True Optional (Maybe Double)
  offset v = fromUndefOrPrim
               "BaseKeyframe.getoffset"
               prim__offset
               prim__setOffset
               Nothing
               (cast {to = BaseKeyframe} v)



namespace BasePropertyIndexedKeyframe

  export
  new' :
       (offset : Optional (Maybe (HSum [Double, Array (Nullable Double)])))
    -> (easing : Optional (HSum [String, Array String]))
    -> (composite : Optional (HSum [CompositeOperationOrAuto, Array String]))
    -> JSIO BasePropertyIndexedKeyframe
  new' a b c = primJS $
    BasePropertyIndexedKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO BasePropertyIndexedKeyframe
  new = primJS $ BasePropertyIndexedKeyframe.prim__new undef undef undef


  export
  composite :
       {auto _ : Cast t BasePropertyIndexedKeyframe}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  composite v = fromUndefOrPrimNoDefault
                  "BasePropertyIndexedKeyframe.getcomposite"
                  prim__composite
                  prim__setComposite
                  (cast {to = BasePropertyIndexedKeyframe} v)


  export
  easing :
       {auto _ : Cast t BasePropertyIndexedKeyframe}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  easing v = fromUndefOrPrimNoDefault
               "BasePropertyIndexedKeyframe.geteasing"
               prim__easing
               prim__setEasing
               (cast {to = BasePropertyIndexedKeyframe} v)


  export
  offset :
       {auto _ : Cast t BasePropertyIndexedKeyframe}
    -> t
    -> Attribute False Optional (Maybe
                                   (Union2 Double (Array (Nullable Double))))
  offset v = fromUndefOrPrimNoDefault
               "BasePropertyIndexedKeyframe.getoffset"
               prim__offset
               prim__setOffset
               (cast {to = BasePropertyIndexedKeyframe} v)



namespace ComputedEffectTiming

  export
  new' :
       (endTime : Optional Double)
    -> (activeDuration : Optional Double)
    -> (localTime : Optional (Maybe Double))
    -> (progress : Optional (Maybe Double))
    -> (currentIteration : Optional (Maybe Double))
    -> JSIO ComputedEffectTiming
  new' a b c d e = primJS $
    ComputedEffectTiming.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  new : JSIO ComputedEffectTiming
  new = primJS $ ComputedEffectTiming.prim__new undef undef undef undef undef


  export
  activeDuration :
       {auto _ : Cast t ComputedEffectTiming}
    -> t
    -> Attribute False Optional Double
  activeDuration v = fromUndefOrPrimNoDefault
                       "ComputedEffectTiming.getactiveDuration"
                       prim__activeDuration
                       prim__setActiveDuration
                       (cast {to = ComputedEffectTiming} v)


  export
  currentIteration :
       {auto _ : Cast t ComputedEffectTiming}
    -> t
    -> Attribute False Optional (Maybe Double)
  currentIteration v = fromUndefOrPrimNoDefault
                         "ComputedEffectTiming.getcurrentIteration"
                         prim__currentIteration
                         prim__setCurrentIteration
                         (cast {to = ComputedEffectTiming} v)


  export
  endTime :
       {auto _ : Cast t ComputedEffectTiming}
    -> t
    -> Attribute False Optional Double
  endTime v = fromUndefOrPrimNoDefault
                "ComputedEffectTiming.getendTime"
                prim__endTime
                prim__setEndTime
                (cast {to = ComputedEffectTiming} v)


  export
  localTime :
       {auto _ : Cast t ComputedEffectTiming}
    -> t
    -> Attribute False Optional (Maybe Double)
  localTime v = fromUndefOrPrimNoDefault
                  "ComputedEffectTiming.getlocalTime"
                  prim__localTime
                  prim__setLocalTime
                  (cast {to = ComputedEffectTiming} v)


  export
  progress :
       {auto _ : Cast t ComputedEffectTiming}
    -> t
    -> Attribute False Optional (Maybe Double)
  progress v = fromUndefOrPrimNoDefault
                 "ComputedEffectTiming.getprogress"
                 prim__progress
                 prim__setProgress
                 (cast {to = ComputedEffectTiming} v)



namespace DocumentTimelineOptions

  export
  new' : (originTime : Optional Double) -> JSIO DocumentTimelineOptions
  new' a = primJS $ DocumentTimelineOptions.prim__new (toFFI a)

  export
  new : JSIO DocumentTimelineOptions
  new = primJS $ DocumentTimelineOptions.prim__new undef


  export
  originTime :
       {auto _ : Cast t DocumentTimelineOptions}
    -> t
    -> Attribute True Optional Double
  originTime v = fromUndefOrPrim
                   "DocumentTimelineOptions.getoriginTime"
                   prim__originTime
                   prim__setOriginTime
                   0
                   (cast {to = DocumentTimelineOptions} v)



namespace EffectTiming

  export
  new' :
       (delay : Optional Double)
    -> (endDelay : Optional Double)
    -> (fill : Optional FillMode)
    -> (iterationStart : Optional Double)
    -> (iterations : Optional Double)
    -> (duration : Optional (HSum [Double, String]))
    -> (direction : Optional PlaybackDirection)
    -> (easing : Optional String)
    -> JSIO EffectTiming
  new' a b c d e f g h = primJS $
    EffectTiming.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)

  export
  new : JSIO EffectTiming
  new = primJS $
    EffectTiming.prim__new undef undef undef undef undef undef undef undef


  export
  delay : {auto _ : Cast t EffectTiming} -> t -> Attribute True Optional Double
  delay v = fromUndefOrPrim
              "EffectTiming.getdelay"
              prim__delay
              prim__setDelay
              0
              (cast {to = EffectTiming} v)


  export
  direction :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute False Optional PlaybackDirection
  direction v = fromUndefOrPrimNoDefault
                  "EffectTiming.getdirection"
                  prim__direction
                  prim__setDirection
                  (cast {to = EffectTiming} v)


  export
  duration :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute False Optional (HSum [Double, String])
  duration v = fromUndefOrPrimNoDefault
                 "EffectTiming.getduration"
                 prim__duration
                 prim__setDuration
                 (cast {to = EffectTiming} v)


  export
  easing : {auto _ : Cast t EffectTiming} -> t -> Attribute True Optional String
  easing v = fromUndefOrPrim
               "EffectTiming.geteasing"
               prim__easing
               prim__setEasing
               "linear"
               (cast {to = EffectTiming} v)


  export
  endDelay :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute True Optional Double
  endDelay v = fromUndefOrPrim
                 "EffectTiming.getendDelay"
                 prim__endDelay
                 prim__setEndDelay
                 0
                 (cast {to = EffectTiming} v)


  export
  fill :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute False Optional FillMode
  fill v = fromUndefOrPrimNoDefault
             "EffectTiming.getfill"
             prim__fill
             prim__setFill
             (cast {to = EffectTiming} v)


  export
  iterationStart :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute True Optional Double
  iterationStart v = fromUndefOrPrim
                       "EffectTiming.getiterationStart"
                       prim__iterationStart
                       prim__setIterationStart
                       0.0
                       (cast {to = EffectTiming} v)


  export
  iterations :
       {auto _ : Cast t EffectTiming}
    -> t
    -> Attribute True Optional Double
  iterations v = fromUndefOrPrim
                   "EffectTiming.getiterations"
                   prim__iterations
                   prim__setIterations
                   1.0
                   (cast {to = EffectTiming} v)



namespace KeyframeAnimationOptions

  export
  new' : (id : Optional String) -> JSIO KeyframeAnimationOptions
  new' a = primJS $ KeyframeAnimationOptions.prim__new (toFFI a)

  export
  new : JSIO KeyframeAnimationOptions
  new = primJS $ KeyframeAnimationOptions.prim__new undef


  export
  id :
       {auto _ : Cast t KeyframeAnimationOptions}
    -> t
    -> Attribute True Optional String
  id v = fromUndefOrPrim
           "KeyframeAnimationOptions.getid"
           prim__id
           prim__setId
           ""
           (cast {to = KeyframeAnimationOptions} v)



namespace KeyframeEffectOptions

  export
  new' :
       (iterationComposite : Optional IterationCompositeOperation)
    -> (composite : Optional CompositeOperation)
    -> JSIO KeyframeEffectOptions
  new' a b = primJS $ KeyframeEffectOptions.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO KeyframeEffectOptions
  new = primJS $ KeyframeEffectOptions.prim__new undef undef


  export
  composite :
       {auto _ : Cast t KeyframeEffectOptions}
    -> t
    -> Attribute False Optional CompositeOperation
  composite v = fromUndefOrPrimNoDefault
                  "KeyframeEffectOptions.getcomposite"
                  prim__composite
                  prim__setComposite
                  (cast {to = KeyframeEffectOptions} v)


  export
  iterationComposite :
       {auto _ : Cast t KeyframeEffectOptions}
    -> t
    -> Attribute False Optional IterationCompositeOperation
  iterationComposite v = fromUndefOrPrimNoDefault
                           "KeyframeEffectOptions.getiterationComposite"
                           prim__iterationComposite
                           prim__setIterationComposite
                           (cast {to = KeyframeEffectOptions} v)



namespace OptionalEffectTiming

  export
  new' :
       (delay : Optional Double)
    -> (endDelay : Optional Double)
    -> (fill : Optional FillMode)
    -> (iterationStart : Optional Double)
    -> (iterations : Optional Double)
    -> (duration : Optional (HSum [Double, String]))
    -> (direction : Optional PlaybackDirection)
    -> (easing : Optional String)
    -> JSIO OptionalEffectTiming
  new' a b c d e f g h = primJS $
    OptionalEffectTiming.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)

  export
  new : JSIO OptionalEffectTiming
  new = primJS $
    OptionalEffectTiming.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef


  export
  delay :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional Double
  delay v = fromUndefOrPrimNoDefault
              "OptionalEffectTiming.getdelay"
              prim__delay
              prim__setDelay
              (cast {to = OptionalEffectTiming} v)


  export
  direction :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional PlaybackDirection
  direction v = fromUndefOrPrimNoDefault
                  "OptionalEffectTiming.getdirection"
                  prim__direction
                  prim__setDirection
                  (cast {to = OptionalEffectTiming} v)


  export
  duration :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional (HSum [Double, String])
  duration v = fromUndefOrPrimNoDefault
                 "OptionalEffectTiming.getduration"
                 prim__duration
                 prim__setDuration
                 (cast {to = OptionalEffectTiming} v)


  export
  easing :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional String
  easing v = fromUndefOrPrimNoDefault
               "OptionalEffectTiming.geteasing"
               prim__easing
               prim__setEasing
               (cast {to = OptionalEffectTiming} v)


  export
  endDelay :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional Double
  endDelay v = fromUndefOrPrimNoDefault
                 "OptionalEffectTiming.getendDelay"
                 prim__endDelay
                 prim__setEndDelay
                 (cast {to = OptionalEffectTiming} v)


  export
  fill :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional FillMode
  fill v = fromUndefOrPrimNoDefault
             "OptionalEffectTiming.getfill"
             prim__fill
             prim__setFill
             (cast {to = OptionalEffectTiming} v)


  export
  iterationStart :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional Double
  iterationStart v = fromUndefOrPrimNoDefault
                       "OptionalEffectTiming.getiterationStart"
                       prim__iterationStart
                       prim__setIterationStart
                       (cast {to = OptionalEffectTiming} v)


  export
  iterations :
       {auto _ : Cast t OptionalEffectTiming}
    -> t
    -> Attribute False Optional Double
  iterations v = fromUndefOrPrimNoDefault
                   "OptionalEffectTiming.getiterations"
                   prim__iterations
                   prim__setIterations
                   (cast {to = OptionalEffectTiming} v)
