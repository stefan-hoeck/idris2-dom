module Web.Animation
 
import JS
import Web.Internal.AnimationPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  public export
  JSType Animation where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  currentTime : (obj : Animation) -> JSIO (Nullable Double)
  currentTime a = primJS $ Animation.prim__currentTime a
  
  export
  setCurrentTime : (obj : Animation) -> (value : Nullable Double) -> JSIO ()
  setCurrentTime a b = primJS $ Animation.prim__setCurrentTime a b
  
  export
  effect : (obj : Animation) -> JSIO (Nullable AnimationEffect)
  effect a = primJS $ Animation.prim__effect a
  
  export
  setEffect : (obj : Animation) -> (value : Nullable AnimationEffect) -> JSIO ()
  setEffect a b = primJS $ Animation.prim__setEffect a b
  
  export
  finished : (obj : Animation) -> JSIO (Promise Animation)
  finished a = primJS $ Animation.prim__finished a
  
  export
  id : (obj : Animation) -> JSIO String
  id a = primJS $ Animation.prim__id a
  
  export
  setId : (obj : Animation) -> (value : String) -> JSIO ()
  setId a b = primJS $ Animation.prim__setId a b
  
  export
  oncancel : (obj : Animation) -> JSIO EventHandler
  oncancel a = primJS $ Animation.prim__oncancel a
  
  export
  setOncancel : (obj : Animation) -> (value : EventHandler) -> JSIO ()
  setOncancel a b = primJS $ Animation.prim__setOncancel a b
  
  export
  onfinish : (obj : Animation) -> JSIO EventHandler
  onfinish a = primJS $ Animation.prim__onfinish a
  
  export
  setOnfinish : (obj : Animation) -> (value : EventHandler) -> JSIO ()
  setOnfinish a b = primJS $ Animation.prim__setOnfinish a b
  
  export
  pending : (obj : Animation) -> JSIO Boolean
  pending a = primJS $ Animation.prim__pending a
  
  export
  playState : (obj : Animation) -> JSIO AnimationPlayState
  playState a = primJS $ Animation.prim__playState a
  
  export
  playbackRate : (obj : Animation) -> JSIO Double
  playbackRate a = primJS $ Animation.prim__playbackRate a
  
  export
  setPlaybackRate : (obj : Animation) -> (value : Double) -> JSIO ()
  setPlaybackRate a b = primJS $ Animation.prim__setPlaybackRate a b
  
  export
  ready : (obj : Animation) -> JSIO (Promise Animation)
  ready a = primJS $ Animation.prim__ready a
  
  export
  startTime : (obj : Animation) -> JSIO (Nullable Double)
  startTime a = primJS $ Animation.prim__startTime a
  
  export
  setStartTime : (obj : Animation) -> (value : Nullable Double) -> JSIO ()
  setStartTime a b = primJS $ Animation.prim__setStartTime a b
  
  export
  timeline : (obj : Animation) -> JSIO (Nullable AnimationTimeline)
  timeline a = primJS $ Animation.prim__timeline a
  
  export
  setTimeline :  (obj : Animation)
              -> (value : Nullable AnimationTimeline)
              -> JSIO ()
  setTimeline a b = primJS $ Animation.prim__setTimeline a b
  
  export
  cancel : (obj : Animation) -> JSIO ()
  cancel a = primJS $ Animation.prim__cancel a
  
  export
  finish : (obj : Animation) -> JSIO ()
  finish a = primJS $ Animation.prim__finish a
  
  export
  pause : (obj : Animation) -> JSIO ()
  pause a = primJS $ Animation.prim__pause a
  
  export
  play : (obj : Animation) -> JSIO ()
  play a = primJS $ Animation.prim__play a
  
  export
  reverse : (obj : Animation) -> JSIO ()
  reverse a = primJS $ Animation.prim__reverse a
  
  export
  updatePlaybackRate : (obj : Animation) -> (playbackRate : Double) -> JSIO ()
  updatePlaybackRate a b = primJS $ Animation.prim__updatePlaybackRate a b

namespace AnimationEffect
  
  public export
  JSType AnimationEffect where
    parents =  [ Object ]

    mixins =  []
  
  export
  getComputedTiming : (obj : AnimationEffect) -> JSIO ComputedEffectTiming
  getComputedTiming a = primJS $ AnimationEffect.prim__getComputedTiming a
  
  export
  getTiming : (obj : AnimationEffect) -> JSIO EffectTiming
  getTiming a = primJS $ AnimationEffect.prim__getTiming a
  
  export
  updateTiming :  (obj : AnimationEffect)
               -> (timing : UndefOr OptionalEffectTiming)
               -> JSIO ()
  updateTiming a b = primJS $ AnimationEffect.prim__updateTiming a b

namespace AnimationPlaybackEvent
  
  public export
  JSType AnimationPlaybackEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Nullable Double)
  currentTime a = primJS $ AnimationPlaybackEvent.prim__currentTime a
  
  export
  timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Nullable Double)
  timelineTime a = primJS $ AnimationPlaybackEvent.prim__timelineTime a

namespace AnimationTimeline
  
  public export
  JSType AnimationTimeline where
    parents =  [ Object ]

    mixins =  []
  
  export
  currentTime : (obj : AnimationTimeline) -> JSIO (Nullable Double)
  currentTime a = primJS $ AnimationTimeline.prim__currentTime a

namespace DocumentTimeline
  
  public export
  JSType DocumentTimeline where
    parents =  [ AnimationTimeline , Object ]

    mixins =  []

namespace KeyframeEffect
  
  public export
  JSType KeyframeEffect where
    parents =  [ AnimationEffect , Object ]

    mixins =  []
  
  export
  composite : (obj : KeyframeEffect) -> JSIO CompositeOperation
  composite a = primJS $ KeyframeEffect.prim__composite a
  
  export
  setComposite :  (obj : KeyframeEffect)
               -> (value : CompositeOperation)
               -> JSIO ()
  setComposite a b = primJS $ KeyframeEffect.prim__setComposite a b
  
  export
  iterationComposite :  (obj : KeyframeEffect)
                     -> JSIO IterationCompositeOperation
  iterationComposite a = primJS $ KeyframeEffect.prim__iterationComposite a
  
  export
  setIterationComposite :  (obj : KeyframeEffect)
                        -> (value : IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b = primJS $ KeyframeEffect.prim__setIterationComposite a
                                                                                  b
  
  export
  target :  (obj : KeyframeEffect)
         -> JSIO (Nullable (Union2 Element CSSPseudoElement))
  target a = primJS $ KeyframeEffect.prim__target a
  
  export
  setTarget :  (obj : KeyframeEffect)
            -> (value : Nullable (Union2 Element CSSPseudoElement))
            -> JSIO ()
  setTarget a b = primJS $ KeyframeEffect.prim__setTarget a b
  
  export
  getKeyframes : (obj : KeyframeEffect) -> JSIO (Array Object)
  getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes a
  
  export
  setKeyframes :  (obj : KeyframeEffect)
               -> (keyframes : Nullable Object)
               -> JSIO ()
  setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes a b

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable
  
  export
  animate :  (obj : Animatable)
          -> (keyframes : Nullable Object)
          -> (options : UndefOr (Union2 Double KeyframeAnimationOptions))
          -> JSIO Animation
  animate a b c = primJS $ Animatable.prim__animate a b c
  
  export
  getAnimations : (obj : Animatable) -> JSIO (Array Animation)
  getAnimations a = primJS $ Animatable.prim__getAnimations a

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  public export
  JSType AnimationPlaybackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (currentTime : UndefOr (Nullable Double))
      -> (timelineTime : UndefOr (Nullable Double))
      -> JSIO AnimationPlaybackEventInit
  new a b = primJS $ AnimationPlaybackEventInit.prim__new a b
  
  export
  currentTime :  (obj : AnimationPlaybackEventInit)
              -> JSIO (UndefOr (Nullable Double))
  currentTime a = primJS $ AnimationPlaybackEventInit.prim__currentTime a
  
  export
  setCurrentTime :  (obj : AnimationPlaybackEventInit)
                 -> (value : UndefOr (Nullable Double))
                 -> JSIO ()
  setCurrentTime a b = primJS $ AnimationPlaybackEventInit.prim__setCurrentTime a
                                                                                b
  
  export
  timelineTime :  (obj : AnimationPlaybackEventInit)
               -> JSIO (UndefOr (Nullable Double))
  timelineTime a = primJS $ AnimationPlaybackEventInit.prim__timelineTime a
  
  export
  setTimelineTime :  (obj : AnimationPlaybackEventInit)
                  -> (value : UndefOr (Nullable Double))
                  -> JSIO ()
  setTimelineTime a b = primJS $ AnimationPlaybackEventInit.prim__setTimelineTime a
                                                                                  b

namespace BaseComputedKeyframe
  
  public export
  JSType BaseComputedKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : UndefOr (Nullable Double))
      -> (computedOffset : UndefOr Double)
      -> (easing : UndefOr String)
      -> (composite : UndefOr CompositeOperationOrAuto)
      -> JSIO BaseComputedKeyframe
  new a b c d = primJS $ BaseComputedKeyframe.prim__new a b c d
  
  export
  composite :  (obj : BaseComputedKeyframe)
            -> JSIO (UndefOr CompositeOperationOrAuto)
  composite a = primJS $ BaseComputedKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BaseComputedKeyframe)
               -> (value : UndefOr CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b = primJS $ BaseComputedKeyframe.prim__setComposite a b
  
  export
  computedOffset : (obj : BaseComputedKeyframe) -> JSIO (UndefOr Double)
  computedOffset a = primJS $ BaseComputedKeyframe.prim__computedOffset a
  
  export
  setComputedOffset :  (obj : BaseComputedKeyframe)
                    -> (value : UndefOr Double)
                    -> JSIO ()
  setComputedOffset a b = primJS $ BaseComputedKeyframe.prim__setComputedOffset a
                                                                                b
  
  export
  easing : (obj : BaseComputedKeyframe) -> JSIO (UndefOr String)
  easing a = primJS $ BaseComputedKeyframe.prim__easing a
  
  export
  setEasing :  (obj : BaseComputedKeyframe)
            -> (value : UndefOr String)
            -> JSIO ()
  setEasing a b = primJS $ BaseComputedKeyframe.prim__setEasing a b
  
  export
  offset : (obj : BaseComputedKeyframe) -> JSIO (UndefOr (Nullable Double))
  offset a = primJS $ BaseComputedKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BaseComputedKeyframe)
            -> (value : UndefOr (Nullable Double))
            -> JSIO ()
  setOffset a b = primJS $ BaseComputedKeyframe.prim__setOffset a b

namespace BaseKeyframe
  
  public export
  JSType BaseKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : UndefOr (Nullable Double))
      -> (easing : UndefOr String)
      -> (composite : UndefOr CompositeOperationOrAuto)
      -> JSIO BaseKeyframe
  new a b c = primJS $ BaseKeyframe.prim__new a b c
  
  export
  composite : (obj : BaseKeyframe) -> JSIO (UndefOr CompositeOperationOrAuto)
  composite a = primJS $ BaseKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BaseKeyframe)
               -> (value : UndefOr CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b = primJS $ BaseKeyframe.prim__setComposite a b
  
  export
  easing : (obj : BaseKeyframe) -> JSIO (UndefOr String)
  easing a = primJS $ BaseKeyframe.prim__easing a
  
  export
  setEasing : (obj : BaseKeyframe) -> (value : UndefOr String) -> JSIO ()
  setEasing a b = primJS $ BaseKeyframe.prim__setEasing a b
  
  export
  offset : (obj : BaseKeyframe) -> JSIO (UndefOr (Nullable Double))
  offset a = primJS $ BaseKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BaseKeyframe)
            -> (value : UndefOr (Nullable Double))
            -> JSIO ()
  setOffset a b = primJS $ BaseKeyframe.prim__setOffset a b

namespace BasePropertyIndexedKeyframe
  
  public export
  JSType BasePropertyIndexedKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : UndefOr (Union2 (Nullable Double) (Array (Nullable Double))))
      -> (easing : UndefOr (Union2 String (Array String)))
      -> (composite : UndefOr (Union2 CompositeOperationOrAuto
                                      (Array CompositeOperationOrAuto)))
      -> JSIO BasePropertyIndexedKeyframe
  new a b c = primJS $ BasePropertyIndexedKeyframe.prim__new a b c
  
  export
  composite :  (obj : BasePropertyIndexedKeyframe)
            -> JSIO (UndefOr (Union2 CompositeOperationOrAuto
                                     (Array CompositeOperationOrAuto)))
  composite a = primJS $ BasePropertyIndexedKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BasePropertyIndexedKeyframe)
               -> (value : UndefOr (Union2 CompositeOperationOrAuto
                                           (Array CompositeOperationOrAuto)))
               -> JSIO ()
  setComposite a b = primJS $ BasePropertyIndexedKeyframe.prim__setComposite a b
  
  export
  easing :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO (UndefOr (Union2 String (Array String)))
  easing a = primJS $ BasePropertyIndexedKeyframe.prim__easing a
  
  export
  setEasing :  (obj : BasePropertyIndexedKeyframe)
            -> (value : UndefOr (Union2 String (Array String)))
            -> JSIO ()
  setEasing a b = primJS $ BasePropertyIndexedKeyframe.prim__setEasing a b
  
  export
  offset :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO (UndefOr (Union2 (Nullable Double) (Array (Nullable Double))))
  offset a = primJS $ BasePropertyIndexedKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BasePropertyIndexedKeyframe)
            -> (value : UndefOr (Union2 (Nullable Double)
                                        (Array (Nullable Double))))
            -> JSIO ()
  setOffset a b = primJS $ BasePropertyIndexedKeyframe.prim__setOffset a b

namespace ComputedEffectTiming
  
  public export
  JSType ComputedEffectTiming where
    parents =  [ EffectTiming , Object ]

    mixins =  []
  
  export
  new :  (endTime : UndefOr Double)
      -> (activeDuration : UndefOr Double)
      -> (localTime : UndefOr (Nullable Double))
      -> (progress : UndefOr (Nullable Double))
      -> (currentIteration : UndefOr (Nullable Double))
      -> JSIO ComputedEffectTiming
  new a b c d e = primJS $ ComputedEffectTiming.prim__new a b c d e
  
  export
  activeDuration : (obj : ComputedEffectTiming) -> JSIO (UndefOr Double)
  activeDuration a = primJS $ ComputedEffectTiming.prim__activeDuration a
  
  export
  setActiveDuration :  (obj : ComputedEffectTiming)
                    -> (value : UndefOr Double)
                    -> JSIO ()
  setActiveDuration a b = primJS $ ComputedEffectTiming.prim__setActiveDuration a
                                                                                b
  
  export
  currentIteration :  (obj : ComputedEffectTiming)
                   -> JSIO (UndefOr (Nullable Double))
  currentIteration a = primJS $ ComputedEffectTiming.prim__currentIteration a
  
  export
  setCurrentIteration :  (obj : ComputedEffectTiming)
                      -> (value : UndefOr (Nullable Double))
                      -> JSIO ()
  setCurrentIteration a b = primJS $ ComputedEffectTiming.prim__setCurrentIteration a
                                                                                    b
  
  export
  endTime : (obj : ComputedEffectTiming) -> JSIO (UndefOr Double)
  endTime a = primJS $ ComputedEffectTiming.prim__endTime a
  
  export
  setEndTime :  (obj : ComputedEffectTiming)
             -> (value : UndefOr Double)
             -> JSIO ()
  setEndTime a b = primJS $ ComputedEffectTiming.prim__setEndTime a b
  
  export
  localTime : (obj : ComputedEffectTiming) -> JSIO (UndefOr (Nullable Double))
  localTime a = primJS $ ComputedEffectTiming.prim__localTime a
  
  export
  setLocalTime :  (obj : ComputedEffectTiming)
               -> (value : UndefOr (Nullable Double))
               -> JSIO ()
  setLocalTime a b = primJS $ ComputedEffectTiming.prim__setLocalTime a b
  
  export
  progress : (obj : ComputedEffectTiming) -> JSIO (UndefOr (Nullable Double))
  progress a = primJS $ ComputedEffectTiming.prim__progress a
  
  export
  setProgress :  (obj : ComputedEffectTiming)
              -> (value : UndefOr (Nullable Double))
              -> JSIO ()
  setProgress a b = primJS $ ComputedEffectTiming.prim__setProgress a b

namespace DocumentTimelineOptions
  
  public export
  JSType DocumentTimelineOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (originTime : UndefOr DOMHighResTimeStamp)
      -> JSIO DocumentTimelineOptions
  new a = primJS $ DocumentTimelineOptions.prim__new a
  
  export
  originTime :  (obj : DocumentTimelineOptions)
             -> JSIO (UndefOr DOMHighResTimeStamp)
  originTime a = primJS $ DocumentTimelineOptions.prim__originTime a
  
  export
  setOriginTime :  (obj : DocumentTimelineOptions)
                -> (value : UndefOr DOMHighResTimeStamp)
                -> JSIO ()
  setOriginTime a b = primJS $ DocumentTimelineOptions.prim__setOriginTime a b

namespace EffectTiming
  
  public export
  JSType EffectTiming where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (delay : UndefOr Double)
      -> (endDelay : UndefOr Double)
      -> (fill : UndefOr FillMode)
      -> (iterationStart : UndefOr Double)
      -> (iterations : UndefOr Double)
      -> (duration : UndefOr (Union2 Double String))
      -> (direction : UndefOr PlaybackDirection)
      -> (easing : UndefOr String)
      -> JSIO EffectTiming
  new a b c d e f g h = primJS $ EffectTiming.prim__new a b c d e f g h
  
  export
  delay : (obj : EffectTiming) -> JSIO (UndefOr Double)
  delay a = primJS $ EffectTiming.prim__delay a
  
  export
  setDelay : (obj : EffectTiming) -> (value : UndefOr Double) -> JSIO ()
  setDelay a b = primJS $ EffectTiming.prim__setDelay a b
  
  export
  direction : (obj : EffectTiming) -> JSIO (UndefOr PlaybackDirection)
  direction a = primJS $ EffectTiming.prim__direction a
  
  export
  setDirection :  (obj : EffectTiming)
               -> (value : UndefOr PlaybackDirection)
               -> JSIO ()
  setDirection a b = primJS $ EffectTiming.prim__setDirection a b
  
  export
  duration : (obj : EffectTiming) -> JSIO (UndefOr (Union2 Double String))
  duration a = primJS $ EffectTiming.prim__duration a
  
  export
  setDuration :  (obj : EffectTiming)
              -> (value : UndefOr (Union2 Double String))
              -> JSIO ()
  setDuration a b = primJS $ EffectTiming.prim__setDuration a b
  
  export
  easing : (obj : EffectTiming) -> JSIO (UndefOr String)
  easing a = primJS $ EffectTiming.prim__easing a
  
  export
  setEasing : (obj : EffectTiming) -> (value : UndefOr String) -> JSIO ()
  setEasing a b = primJS $ EffectTiming.prim__setEasing a b
  
  export
  endDelay : (obj : EffectTiming) -> JSIO (UndefOr Double)
  endDelay a = primJS $ EffectTiming.prim__endDelay a
  
  export
  setEndDelay : (obj : EffectTiming) -> (value : UndefOr Double) -> JSIO ()
  setEndDelay a b = primJS $ EffectTiming.prim__setEndDelay a b
  
  export
  fill : (obj : EffectTiming) -> JSIO (UndefOr FillMode)
  fill a = primJS $ EffectTiming.prim__fill a
  
  export
  setFill : (obj : EffectTiming) -> (value : UndefOr FillMode) -> JSIO ()
  setFill a b = primJS $ EffectTiming.prim__setFill a b
  
  export
  iterationStart : (obj : EffectTiming) -> JSIO (UndefOr Double)
  iterationStart a = primJS $ EffectTiming.prim__iterationStart a
  
  export
  setIterationStart :  (obj : EffectTiming)
                    -> (value : UndefOr Double)
                    -> JSIO ()
  setIterationStart a b = primJS $ EffectTiming.prim__setIterationStart a b
  
  export
  iterations : (obj : EffectTiming) -> JSIO (UndefOr Double)
  iterations a = primJS $ EffectTiming.prim__iterations a
  
  export
  setIterations : (obj : EffectTiming) -> (value : UndefOr Double) -> JSIO ()
  setIterations a b = primJS $ EffectTiming.prim__setIterations a b

namespace KeyframeAnimationOptions
  
  public export
  JSType KeyframeAnimationOptions where
    parents =  [ KeyframeEffectOptions , EffectTiming , Object ]

    mixins =  []
  
  export
  new : (id : UndefOr String) -> JSIO KeyframeAnimationOptions
  new a = primJS $ KeyframeAnimationOptions.prim__new a
  
  export
  id : (obj : KeyframeAnimationOptions) -> JSIO (UndefOr String)
  id a = primJS $ KeyframeAnimationOptions.prim__id a
  
  export
  setId :  (obj : KeyframeAnimationOptions)
        -> (value : UndefOr String)
        -> JSIO ()
  setId a b = primJS $ KeyframeAnimationOptions.prim__setId a b

namespace KeyframeEffectOptions
  
  public export
  JSType KeyframeEffectOptions where
    parents =  [ EffectTiming , Object ]

    mixins =  []
  
  export
  new :  (iterationComposite : UndefOr IterationCompositeOperation)
      -> (composite : UndefOr CompositeOperation)
      -> JSIO KeyframeEffectOptions
  new a b = primJS $ KeyframeEffectOptions.prim__new a b
  
  export
  composite : (obj : KeyframeEffectOptions) -> JSIO (UndefOr CompositeOperation)
  composite a = primJS $ KeyframeEffectOptions.prim__composite a
  
  export
  setComposite :  (obj : KeyframeEffectOptions)
               -> (value : UndefOr CompositeOperation)
               -> JSIO ()
  setComposite a b = primJS $ KeyframeEffectOptions.prim__setComposite a b
  
  export
  iterationComposite :  (obj : KeyframeEffectOptions)
                     -> JSIO (UndefOr IterationCompositeOperation)
  iterationComposite a = primJS $ KeyframeEffectOptions.prim__iterationComposite a
  
  export
  setIterationComposite :  (obj : KeyframeEffectOptions)
                        -> (value : UndefOr IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b = primJS $ KeyframeEffectOptions.prim__setIterationComposite a
                                                                                         b

namespace OptionalEffectTiming
  
  public export
  JSType OptionalEffectTiming where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (delay : UndefOr Double)
      -> (endDelay : UndefOr Double)
      -> (fill : UndefOr FillMode)
      -> (iterationStart : UndefOr Double)
      -> (iterations : UndefOr Double)
      -> (duration : UndefOr (Union2 Double String))
      -> (direction : UndefOr PlaybackDirection)
      -> (easing : UndefOr String)
      -> JSIO OptionalEffectTiming
  new a b c d e f g h = primJS $ OptionalEffectTiming.prim__new a b c d e f g h
  
  export
  delay : (obj : OptionalEffectTiming) -> JSIO (UndefOr Double)
  delay a = primJS $ OptionalEffectTiming.prim__delay a
  
  export
  setDelay : (obj : OptionalEffectTiming) -> (value : UndefOr Double) -> JSIO ()
  setDelay a b = primJS $ OptionalEffectTiming.prim__setDelay a b
  
  export
  direction : (obj : OptionalEffectTiming) -> JSIO (UndefOr PlaybackDirection)
  direction a = primJS $ OptionalEffectTiming.prim__direction a
  
  export
  setDirection :  (obj : OptionalEffectTiming)
               -> (value : UndefOr PlaybackDirection)
               -> JSIO ()
  setDirection a b = primJS $ OptionalEffectTiming.prim__setDirection a b
  
  export
  duration :  (obj : OptionalEffectTiming)
           -> JSIO (UndefOr (Union2 Double String))
  duration a = primJS $ OptionalEffectTiming.prim__duration a
  
  export
  setDuration :  (obj : OptionalEffectTiming)
              -> (value : UndefOr (Union2 Double String))
              -> JSIO ()
  setDuration a b = primJS $ OptionalEffectTiming.prim__setDuration a b
  
  export
  easing : (obj : OptionalEffectTiming) -> JSIO (UndefOr String)
  easing a = primJS $ OptionalEffectTiming.prim__easing a
  
  export
  setEasing :  (obj : OptionalEffectTiming)
            -> (value : UndefOr String)
            -> JSIO ()
  setEasing a b = primJS $ OptionalEffectTiming.prim__setEasing a b
  
  export
  endDelay : (obj : OptionalEffectTiming) -> JSIO (UndefOr Double)
  endDelay a = primJS $ OptionalEffectTiming.prim__endDelay a
  
  export
  setEndDelay :  (obj : OptionalEffectTiming)
              -> (value : UndefOr Double)
              -> JSIO ()
  setEndDelay a b = primJS $ OptionalEffectTiming.prim__setEndDelay a b
  
  export
  fill : (obj : OptionalEffectTiming) -> JSIO (UndefOr FillMode)
  fill a = primJS $ OptionalEffectTiming.prim__fill a
  
  export
  setFill :  (obj : OptionalEffectTiming)
          -> (value : UndefOr FillMode)
          -> JSIO ()
  setFill a b = primJS $ OptionalEffectTiming.prim__setFill a b
  
  export
  iterationStart : (obj : OptionalEffectTiming) -> JSIO (UndefOr Double)
  iterationStart a = primJS $ OptionalEffectTiming.prim__iterationStart a
  
  export
  setIterationStart :  (obj : OptionalEffectTiming)
                    -> (value : UndefOr Double)
                    -> JSIO ()
  setIterationStart a b = primJS $ OptionalEffectTiming.prim__setIterationStart a
                                                                                b
  
  export
  iterations : (obj : OptionalEffectTiming) -> JSIO (UndefOr Double)
  iterations a = primJS $ OptionalEffectTiming.prim__iterations a
  
  export
  setIterations :  (obj : OptionalEffectTiming)
                -> (value : UndefOr Double)
                -> JSIO ()
  setIterations a b = primJS $ OptionalEffectTiming.prim__setIterations a b
