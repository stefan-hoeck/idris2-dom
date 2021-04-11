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
  currentTime : (obj : Animation) -> JSIO (Maybe Double)
  currentTime a = tryJS "Animation.currentTime" $ Animation.prim__currentTime a
  
  export
  setCurrentTime : (obj : Animation) -> (value : Maybe Double) -> JSIO ()
  setCurrentTime a b = primJS $ Animation.prim__setCurrentTime a (toFFI b)
  
  export
  effect : (obj : Animation) -> JSIO (Maybe AnimationEffect)
  effect a = tryJS "Animation.effect" $ Animation.prim__effect a
  
  export
  setEffect : (obj : Animation) -> (value : Maybe AnimationEffect) -> JSIO ()
  setEffect a b = primJS $ Animation.prim__setEffect a (toFFI b)
  
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
  oncancel : (obj : Animation) -> JSIO (Maybe EventHandlerNonNull)
  oncancel a = tryJS "Animation.oncancel" $ Animation.prim__oncancel a
  
  export
  setOncancel :  (obj : Animation)
              -> (value : Maybe EventHandlerNonNull)
              -> JSIO ()
  setOncancel a b = primJS $ Animation.prim__setOncancel a (toFFI b)
  
  export
  onfinish : (obj : Animation) -> JSIO (Maybe EventHandlerNonNull)
  onfinish a = tryJS "Animation.onfinish" $ Animation.prim__onfinish a
  
  export
  setOnfinish :  (obj : Animation)
              -> (value : Maybe EventHandlerNonNull)
              -> JSIO ()
  setOnfinish a b = primJS $ Animation.prim__setOnfinish a (toFFI b)
  
  export
  pending : (obj : Animation) -> JSIO Bool
  pending a = tryJS "Animation.pending" $ Animation.prim__pending a
  
  export
  playState : (obj : Animation) -> JSIO AnimationPlayState
  playState a = tryJS "Animation.playState" $ Animation.prim__playState a
  
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
  startTime : (obj : Animation) -> JSIO (Maybe Double)
  startTime a = tryJS "Animation.startTime" $ Animation.prim__startTime a
  
  export
  setStartTime : (obj : Animation) -> (value : Maybe Double) -> JSIO ()
  setStartTime a b = primJS $ Animation.prim__setStartTime a (toFFI b)
  
  export
  timeline : (obj : Animation) -> JSIO (Maybe AnimationTimeline)
  timeline a = tryJS "Animation.timeline" $ Animation.prim__timeline a
  
  export
  setTimeline :  (obj : Animation)
              -> (value : Maybe AnimationTimeline)
              -> JSIO ()
  setTimeline a b = primJS $ Animation.prim__setTimeline a (toFFI b)
  
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
               -> (timing : Optional OptionalEffectTiming)
               -> JSIO ()
  updateTiming a b = primJS $ AnimationEffect.prim__updateTiming a (toFFI b)

  export
  updateTiming' : (obj : AnimationEffect) -> JSIO ()
  updateTiming' a = updateTiming a Undef

namespace AnimationPlaybackEvent
  
  public export
  JSType AnimationPlaybackEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationPlaybackEvent.currentTime" $ AnimationPlaybackEvent.prim__currentTime a
  
  export
  timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  timelineTime a = tryJS "AnimationPlaybackEvent.timelineTime" $ AnimationPlaybackEvent.prim__timelineTime a

namespace AnimationTimeline
  
  public export
  JSType AnimationTimeline where
    parents =  [ Object ]

    mixins =  []
  
  export
  currentTime : (obj : AnimationTimeline) -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationTimeline.currentTime" $ AnimationTimeline.prim__currentTime a

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
  composite a = tryJS "KeyframeEffect.composite" $ KeyframeEffect.prim__composite a
  
  export
  setComposite :  (obj : KeyframeEffect)
               -> (value : CompositeOperation)
               -> JSIO ()
  setComposite a b = primJS $ KeyframeEffect.prim__setComposite a (toFFI b)
  
  export
  iterationComposite :  (obj : KeyframeEffect)
                     -> JSIO IterationCompositeOperation
  iterationComposite a = tryJS "KeyframeEffect.iterationComposite" $ KeyframeEffect.prim__iterationComposite a
  
  export
  setIterationComposite :  (obj : KeyframeEffect)
                        -> (value : IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b = primJS $ KeyframeEffect.prim__setIterationComposite a
                                                                                  (toFFI b)
  
  export
  target :  (obj : KeyframeEffect)
         -> JSIO (Maybe (NS I [ Element , CSSPseudoElement ]))
  target a = tryJS "KeyframeEffect.target" $ KeyframeEffect.prim__target a
  
  export
  setTarget :  (obj : KeyframeEffect)
            -> (value : Maybe (NS I [ Element , CSSPseudoElement ]))
            -> JSIO ()
  setTarget a b = primJS $ KeyframeEffect.prim__setTarget a (toFFI b)
  
  export
  getKeyframes : (obj : KeyframeEffect) -> JSIO (Array Object)
  getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes a
  
  export
  setKeyframes : (obj : KeyframeEffect) -> (keyframes : Maybe Object) -> JSIO ()
  setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes a (toFFI b)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable
  
  export
  animate :  (obj : Animatable)
          -> (keyframes : Maybe Object)
          -> (options : Optional (NS I [ Double , KeyframeAnimationOptions ]))
          -> JSIO Animation
  animate a b c = primJS $ Animatable.prim__animate a (toFFI b) (toFFI c)

  export
  animate' : (obj : Animatable) -> (keyframes : Maybe Object) -> JSIO Animation
  animate' a b = animate a b Undef
  
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
  new :  (currentTime : Optional (Maybe Double))
      -> (timelineTime : Optional (Maybe Double))
      -> JSIO AnimationPlaybackEventInit
  new a b = primJS $ AnimationPlaybackEventInit.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO AnimationPlaybackEventInit
  new' = new Undef Undef
  
  export
  currentTime :  (obj : AnimationPlaybackEventInit)
              -> JSIO $ Optional (Maybe Double)
  currentTime a = tryJS "AnimationPlaybackEventInit.currentTime" $ AnimationPlaybackEventInit.prim__currentTime a
  
  export
  setCurrentTime :  (obj : AnimationPlaybackEventInit)
                 -> (value : Optional (Maybe Double))
                 -> JSIO ()
  setCurrentTime a b = primJS $ AnimationPlaybackEventInit.prim__setCurrentTime a
                                                                                (toFFI b)

  export
  setCurrentTime' : (obj : AnimationPlaybackEventInit) -> JSIO ()
  setCurrentTime' a = setCurrentTime a Undef
  
  export
  timelineTime :  (obj : AnimationPlaybackEventInit)
               -> JSIO $ Optional (Maybe Double)
  timelineTime a = tryJS "AnimationPlaybackEventInit.timelineTime" $ AnimationPlaybackEventInit.prim__timelineTime a
  
  export
  setTimelineTime :  (obj : AnimationPlaybackEventInit)
                  -> (value : Optional (Maybe Double))
                  -> JSIO ()
  setTimelineTime a b = primJS $ AnimationPlaybackEventInit.prim__setTimelineTime a
                                                                                  (toFFI b)

  export
  setTimelineTime' : (obj : AnimationPlaybackEventInit) -> JSIO ()
  setTimelineTime' a = setTimelineTime a Undef

namespace BaseComputedKeyframe
  
  public export
  JSType BaseComputedKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : Optional (Maybe Double))
      -> (computedOffset : Optional Double)
      -> (easing : Optional String)
      -> (composite : Optional CompositeOperationOrAuto)
      -> JSIO BaseComputedKeyframe
  new a b c d = primJS $ BaseComputedKeyframe.prim__new (toFFI a)
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)

  export
  new' : JSIO BaseComputedKeyframe
  new' = new Undef Undef Undef Undef
  
  export
  composite :  (obj : BaseComputedKeyframe)
            -> JSIO $ Optional CompositeOperationOrAuto
  composite a = tryJS "BaseComputedKeyframe.composite" $ BaseComputedKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BaseComputedKeyframe)
               -> (value : Optional CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b = primJS $ BaseComputedKeyframe.prim__setComposite a
                                                                      (toFFI b)

  export
  setComposite' : (obj : BaseComputedKeyframe) -> JSIO ()
  setComposite' a = setComposite a Undef
  
  export
  computedOffset : (obj : BaseComputedKeyframe) -> JSIO $ Optional Double
  computedOffset a = tryJS "BaseComputedKeyframe.computedOffset" $ BaseComputedKeyframe.prim__computedOffset a
  
  export
  setComputedOffset :  (obj : BaseComputedKeyframe)
                    -> (value : Optional Double)
                    -> JSIO ()
  setComputedOffset a b = primJS $ BaseComputedKeyframe.prim__setComputedOffset a
                                                                                (toFFI b)

  export
  setComputedOffset' : (obj : BaseComputedKeyframe) -> JSIO ()
  setComputedOffset' a = setComputedOffset a Undef
  
  export
  easing : (obj : BaseComputedKeyframe) -> JSIO $ Optional String
  easing a = tryJS "BaseComputedKeyframe.easing" $ BaseComputedKeyframe.prim__easing a
  
  export
  setEasing :  (obj : BaseComputedKeyframe)
            -> (value : Optional String)
            -> JSIO ()
  setEasing a b = primJS $ BaseComputedKeyframe.prim__setEasing a (toFFI b)

  export
  setEasing' : (obj : BaseComputedKeyframe) -> JSIO ()
  setEasing' a = setEasing a Undef
  
  export
  offset : (obj : BaseComputedKeyframe) -> JSIO $ Optional (Maybe Double)
  offset a = tryJS "BaseComputedKeyframe.offset" $ BaseComputedKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BaseComputedKeyframe)
            -> (value : Optional (Maybe Double))
            -> JSIO ()
  setOffset a b = primJS $ BaseComputedKeyframe.prim__setOffset a (toFFI b)

  export
  setOffset' : (obj : BaseComputedKeyframe) -> JSIO ()
  setOffset' a = setOffset a Undef

namespace BaseKeyframe
  
  public export
  JSType BaseKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : Optional (Maybe Double))
      -> (easing : Optional String)
      -> (composite : Optional CompositeOperationOrAuto)
      -> JSIO BaseKeyframe
  new a b c = primJS $ BaseKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO BaseKeyframe
  new' = new Undef Undef Undef
  
  export
  composite : (obj : BaseKeyframe) -> JSIO $ Optional CompositeOperationOrAuto
  composite a = tryJS "BaseKeyframe.composite" $ BaseKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BaseKeyframe)
               -> (value : Optional CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b = primJS $ BaseKeyframe.prim__setComposite a (toFFI b)

  export
  setComposite' : (obj : BaseKeyframe) -> JSIO ()
  setComposite' a = setComposite a Undef
  
  export
  easing : (obj : BaseKeyframe) -> JSIO $ Optional String
  easing a = tryJS "BaseKeyframe.easing" $ BaseKeyframe.prim__easing a
  
  export
  setEasing : (obj : BaseKeyframe) -> (value : Optional String) -> JSIO ()
  setEasing a b = primJS $ BaseKeyframe.prim__setEasing a (toFFI b)

  export
  setEasing' : (obj : BaseKeyframe) -> JSIO ()
  setEasing' a = setEasing a Undef
  
  export
  offset : (obj : BaseKeyframe) -> JSIO $ Optional (Maybe Double)
  offset a = tryJS "BaseKeyframe.offset" $ BaseKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BaseKeyframe)
            -> (value : Optional (Maybe Double))
            -> JSIO ()
  setOffset a b = primJS $ BaseKeyframe.prim__setOffset a (toFFI b)

  export
  setOffset' : (obj : BaseKeyframe) -> JSIO ()
  setOffset' a = setOffset a Undef

namespace BasePropertyIndexedKeyframe
  
  public export
  JSType BasePropertyIndexedKeyframe where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (offset : Optional (Maybe (NS I [ Double , Array (Nullable Double) ])))
      -> (easing : Optional (NS I [ String , Array String ]))
      -> (composite : Optional (NS I [ CompositeOperationOrAuto
                                     , Array String
                                     ]))
      -> JSIO BasePropertyIndexedKeyframe
  new a b c = primJS $ BasePropertyIndexedKeyframe.prim__new (toFFI a)
                                                             (toFFI b)
                                                             (toFFI c)

  export
  new' : JSIO BasePropertyIndexedKeyframe
  new' = new Undef Undef Undef
  
  export
  composite :  (obj : BasePropertyIndexedKeyframe)
            -> JSIO $ Optional (Union2 String (Array String))
  composite a = tryJS "BasePropertyIndexedKeyframe.composite" $ BasePropertyIndexedKeyframe.prim__composite a
  
  export
  setComposite :  (obj : BasePropertyIndexedKeyframe)
               -> (value : Optional (NS I [ CompositeOperationOrAuto
                                          , Array String
                                          ]))
               -> JSIO ()
  setComposite a b = primJS $ BasePropertyIndexedKeyframe.prim__setComposite a
                                                                             (toFFI b)

  export
  setComposite' : (obj : BasePropertyIndexedKeyframe) -> JSIO ()
  setComposite' a = setComposite a Undef
  
  export
  easing :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO $ Optional (Union2 String (Array String))
  easing a = tryJS "BasePropertyIndexedKeyframe.easing" $ BasePropertyIndexedKeyframe.prim__easing a
  
  export
  setEasing :  (obj : BasePropertyIndexedKeyframe)
            -> (value : Optional (NS I [ String , Array String ]))
            -> JSIO ()
  setEasing a b = primJS $ BasePropertyIndexedKeyframe.prim__setEasing a
                                                                       (toFFI b)

  export
  setEasing' : (obj : BasePropertyIndexedKeyframe) -> JSIO ()
  setEasing' a = setEasing a Undef
  
  export
  offset :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO $ Optional (Maybe (Union2 Double (Array (Nullable Double))))
  offset a = tryJS "BasePropertyIndexedKeyframe.offset" $ BasePropertyIndexedKeyframe.prim__offset a
  
  export
  setOffset :  (obj : BasePropertyIndexedKeyframe)
            -> (value : Optional (Maybe (NS I [ Double
                                              , Array (Nullable Double)
                                              ])))
            -> JSIO ()
  setOffset a b = primJS $ BasePropertyIndexedKeyframe.prim__setOffset a
                                                                       (toFFI b)

  export
  setOffset' : (obj : BasePropertyIndexedKeyframe) -> JSIO ()
  setOffset' a = setOffset a Undef

namespace ComputedEffectTiming
  
  public export
  JSType ComputedEffectTiming where
    parents =  [ EffectTiming , Object ]

    mixins =  []
  
  export
  new :  (endTime : Optional Double)
      -> (activeDuration : Optional Double)
      -> (localTime : Optional (Maybe Double))
      -> (progress : Optional (Maybe Double))
      -> (currentIteration : Optional (Maybe Double))
      -> JSIO ComputedEffectTiming
  new a b c d e = primJS $ ComputedEffectTiming.prim__new (toFFI a)
                                                          (toFFI b)
                                                          (toFFI c)
                                                          (toFFI d)
                                                          (toFFI e)

  export
  new' : JSIO ComputedEffectTiming
  new' = new Undef Undef Undef Undef Undef
  
  export
  activeDuration : (obj : ComputedEffectTiming) -> JSIO $ Optional Double
  activeDuration a = tryJS "ComputedEffectTiming.activeDuration" $ ComputedEffectTiming.prim__activeDuration a
  
  export
  setActiveDuration :  (obj : ComputedEffectTiming)
                    -> (value : Optional Double)
                    -> JSIO ()
  setActiveDuration a b = primJS $ ComputedEffectTiming.prim__setActiveDuration a
                                                                                (toFFI b)

  export
  setActiveDuration' : (obj : ComputedEffectTiming) -> JSIO ()
  setActiveDuration' a = setActiveDuration a Undef
  
  export
  currentIteration :  (obj : ComputedEffectTiming)
                   -> JSIO $ Optional (Maybe Double)
  currentIteration a = tryJS "ComputedEffectTiming.currentIteration" $ ComputedEffectTiming.prim__currentIteration a
  
  export
  setCurrentIteration :  (obj : ComputedEffectTiming)
                      -> (value : Optional (Maybe Double))
                      -> JSIO ()
  setCurrentIteration a b = primJS $ ComputedEffectTiming.prim__setCurrentIteration a
                                                                                    (toFFI b)

  export
  setCurrentIteration' : (obj : ComputedEffectTiming) -> JSIO ()
  setCurrentIteration' a = setCurrentIteration a Undef
  
  export
  endTime : (obj : ComputedEffectTiming) -> JSIO $ Optional Double
  endTime a = tryJS "ComputedEffectTiming.endTime" $ ComputedEffectTiming.prim__endTime a
  
  export
  setEndTime :  (obj : ComputedEffectTiming)
             -> (value : Optional Double)
             -> JSIO ()
  setEndTime a b = primJS $ ComputedEffectTiming.prim__setEndTime a (toFFI b)

  export
  setEndTime' : (obj : ComputedEffectTiming) -> JSIO ()
  setEndTime' a = setEndTime a Undef
  
  export
  localTime : (obj : ComputedEffectTiming) -> JSIO $ Optional (Maybe Double)
  localTime a = tryJS "ComputedEffectTiming.localTime" $ ComputedEffectTiming.prim__localTime a
  
  export
  setLocalTime :  (obj : ComputedEffectTiming)
               -> (value : Optional (Maybe Double))
               -> JSIO ()
  setLocalTime a b = primJS $ ComputedEffectTiming.prim__setLocalTime a
                                                                      (toFFI b)

  export
  setLocalTime' : (obj : ComputedEffectTiming) -> JSIO ()
  setLocalTime' a = setLocalTime a Undef
  
  export
  progress : (obj : ComputedEffectTiming) -> JSIO $ Optional (Maybe Double)
  progress a = tryJS "ComputedEffectTiming.progress" $ ComputedEffectTiming.prim__progress a
  
  export
  setProgress :  (obj : ComputedEffectTiming)
              -> (value : Optional (Maybe Double))
              -> JSIO ()
  setProgress a b = primJS $ ComputedEffectTiming.prim__setProgress a (toFFI b)

  export
  setProgress' : (obj : ComputedEffectTiming) -> JSIO ()
  setProgress' a = setProgress a Undef

namespace DocumentTimelineOptions
  
  public export
  JSType DocumentTimelineOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (originTime : Optional Double) -> JSIO DocumentTimelineOptions
  new a = primJS $ DocumentTimelineOptions.prim__new (toFFI a)

  export
  new' : JSIO DocumentTimelineOptions
  new' = new Undef
  
  export
  originTime : (obj : DocumentTimelineOptions) -> JSIO $ Optional Double
  originTime a = tryJS "DocumentTimelineOptions.originTime" $ DocumentTimelineOptions.prim__originTime a
  
  export
  setOriginTime :  (obj : DocumentTimelineOptions)
                -> (value : Optional Double)
                -> JSIO ()
  setOriginTime a b = primJS $ DocumentTimelineOptions.prim__setOriginTime a
                                                                           (toFFI b)

  export
  setOriginTime' : (obj : DocumentTimelineOptions) -> JSIO ()
  setOriginTime' a = setOriginTime a Undef

namespace EffectTiming
  
  public export
  JSType EffectTiming where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (delay : Optional Double)
      -> (endDelay : Optional Double)
      -> (fill : Optional FillMode)
      -> (iterationStart : Optional Double)
      -> (iterations : Optional Double)
      -> (duration : Optional (NS I [ Double , String ]))
      -> (direction : Optional PlaybackDirection)
      -> (easing : Optional String)
      -> JSIO EffectTiming
  new a b c d e f g h = primJS $ EffectTiming.prim__new (toFFI a)
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)
                                                        (toFFI e)
                                                        (toFFI f)
                                                        (toFFI g)
                                                        (toFFI h)

  export
  new' : JSIO EffectTiming
  new' = new Undef Undef Undef Undef Undef Undef Undef Undef
  
  export
  delay : (obj : EffectTiming) -> JSIO $ Optional Double
  delay a = tryJS "EffectTiming.delay" $ EffectTiming.prim__delay a
  
  export
  setDelay : (obj : EffectTiming) -> (value : Optional Double) -> JSIO ()
  setDelay a b = primJS $ EffectTiming.prim__setDelay a (toFFI b)

  export
  setDelay' : (obj : EffectTiming) -> JSIO ()
  setDelay' a = setDelay a Undef
  
  export
  direction : (obj : EffectTiming) -> JSIO $ Optional PlaybackDirection
  direction a = tryJS "EffectTiming.direction" $ EffectTiming.prim__direction a
  
  export
  setDirection :  (obj : EffectTiming)
               -> (value : Optional PlaybackDirection)
               -> JSIO ()
  setDirection a b = primJS $ EffectTiming.prim__setDirection a (toFFI b)

  export
  setDirection' : (obj : EffectTiming) -> JSIO ()
  setDirection' a = setDirection a Undef
  
  export
  duration : (obj : EffectTiming) -> JSIO $ Optional (NS I [ Double , String ])
  duration a = tryJS "EffectTiming.duration" $ EffectTiming.prim__duration a
  
  export
  setDuration :  (obj : EffectTiming)
              -> (value : Optional (NS I [ Double , String ]))
              -> JSIO ()
  setDuration a b = primJS $ EffectTiming.prim__setDuration a (toFFI b)

  export
  setDuration' : (obj : EffectTiming) -> JSIO ()
  setDuration' a = setDuration a Undef
  
  export
  easing : (obj : EffectTiming) -> JSIO $ Optional String
  easing a = tryJS "EffectTiming.easing" $ EffectTiming.prim__easing a
  
  export
  setEasing : (obj : EffectTiming) -> (value : Optional String) -> JSIO ()
  setEasing a b = primJS $ EffectTiming.prim__setEasing a (toFFI b)

  export
  setEasing' : (obj : EffectTiming) -> JSIO ()
  setEasing' a = setEasing a Undef
  
  export
  endDelay : (obj : EffectTiming) -> JSIO $ Optional Double
  endDelay a = tryJS "EffectTiming.endDelay" $ EffectTiming.prim__endDelay a
  
  export
  setEndDelay : (obj : EffectTiming) -> (value : Optional Double) -> JSIO ()
  setEndDelay a b = primJS $ EffectTiming.prim__setEndDelay a (toFFI b)

  export
  setEndDelay' : (obj : EffectTiming) -> JSIO ()
  setEndDelay' a = setEndDelay a Undef
  
  export
  fill : (obj : EffectTiming) -> JSIO $ Optional FillMode
  fill a = tryJS "EffectTiming.fill" $ EffectTiming.prim__fill a
  
  export
  setFill : (obj : EffectTiming) -> (value : Optional FillMode) -> JSIO ()
  setFill a b = primJS $ EffectTiming.prim__setFill a (toFFI b)

  export
  setFill' : (obj : EffectTiming) -> JSIO ()
  setFill' a = setFill a Undef
  
  export
  iterationStart : (obj : EffectTiming) -> JSIO $ Optional Double
  iterationStart a = tryJS "EffectTiming.iterationStart" $ EffectTiming.prim__iterationStart a
  
  export
  setIterationStart :  (obj : EffectTiming)
                    -> (value : Optional Double)
                    -> JSIO ()
  setIterationStart a b = primJS $ EffectTiming.prim__setIterationStart a
                                                                        (toFFI b)

  export
  setIterationStart' : (obj : EffectTiming) -> JSIO ()
  setIterationStart' a = setIterationStart a Undef
  
  export
  iterations : (obj : EffectTiming) -> JSIO $ Optional Double
  iterations a = tryJS "EffectTiming.iterations" $ EffectTiming.prim__iterations a
  
  export
  setIterations : (obj : EffectTiming) -> (value : Optional Double) -> JSIO ()
  setIterations a b = primJS $ EffectTiming.prim__setIterations a (toFFI b)

  export
  setIterations' : (obj : EffectTiming) -> JSIO ()
  setIterations' a = setIterations a Undef

namespace KeyframeAnimationOptions
  
  public export
  JSType KeyframeAnimationOptions where
    parents =  [ KeyframeEffectOptions , EffectTiming , Object ]

    mixins =  []
  
  export
  new : (id : Optional String) -> JSIO KeyframeAnimationOptions
  new a = primJS $ KeyframeAnimationOptions.prim__new (toFFI a)

  export
  new' : JSIO KeyframeAnimationOptions
  new' = new Undef
  
  export
  id : (obj : KeyframeAnimationOptions) -> JSIO $ Optional String
  id a = tryJS "KeyframeAnimationOptions.id" $ KeyframeAnimationOptions.prim__id a
  
  export
  setId :  (obj : KeyframeAnimationOptions)
        -> (value : Optional String)
        -> JSIO ()
  setId a b = primJS $ KeyframeAnimationOptions.prim__setId a (toFFI b)

  export
  setId' : (obj : KeyframeAnimationOptions) -> JSIO ()
  setId' a = setId a Undef

namespace KeyframeEffectOptions
  
  public export
  JSType KeyframeEffectOptions where
    parents =  [ EffectTiming , Object ]

    mixins =  []
  
  export
  new :  (iterationComposite : Optional IterationCompositeOperation)
      -> (composite : Optional CompositeOperation)
      -> JSIO KeyframeEffectOptions
  new a b = primJS $ KeyframeEffectOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO KeyframeEffectOptions
  new' = new Undef Undef
  
  export
  composite :  (obj : KeyframeEffectOptions)
            -> JSIO $ Optional CompositeOperation
  composite a = tryJS "KeyframeEffectOptions.composite" $ KeyframeEffectOptions.prim__composite a
  
  export
  setComposite :  (obj : KeyframeEffectOptions)
               -> (value : Optional CompositeOperation)
               -> JSIO ()
  setComposite a b = primJS $ KeyframeEffectOptions.prim__setComposite a
                                                                       (toFFI b)

  export
  setComposite' : (obj : KeyframeEffectOptions) -> JSIO ()
  setComposite' a = setComposite a Undef
  
  export
  iterationComposite :  (obj : KeyframeEffectOptions)
                     -> JSIO $ Optional IterationCompositeOperation
  iterationComposite a = tryJS "KeyframeEffectOptions.iterationComposite" $ KeyframeEffectOptions.prim__iterationComposite a
  
  export
  setIterationComposite :  (obj : KeyframeEffectOptions)
                        -> (value : Optional IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b = primJS $ KeyframeEffectOptions.prim__setIterationComposite a
                                                                                         (toFFI b)

  export
  setIterationComposite' : (obj : KeyframeEffectOptions) -> JSIO ()
  setIterationComposite' a = setIterationComposite a Undef

namespace OptionalEffectTiming
  
  public export
  JSType OptionalEffectTiming where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (delay : Optional Double)
      -> (endDelay : Optional Double)
      -> (fill : Optional FillMode)
      -> (iterationStart : Optional Double)
      -> (iterations : Optional Double)
      -> (duration : Optional (NS I [ Double , String ]))
      -> (direction : Optional PlaybackDirection)
      -> (easing : Optional String)
      -> JSIO OptionalEffectTiming
  new a b c d e f g h = primJS $ OptionalEffectTiming.prim__new (toFFI a)
                                                                (toFFI b)
                                                                (toFFI c)
                                                                (toFFI d)
                                                                (toFFI e)
                                                                (toFFI f)
                                                                (toFFI g)
                                                                (toFFI h)

  export
  new' : JSIO OptionalEffectTiming
  new' = new Undef Undef Undef Undef Undef Undef Undef Undef
  
  export
  delay : (obj : OptionalEffectTiming) -> JSIO $ Optional Double
  delay a = tryJS "OptionalEffectTiming.delay" $ OptionalEffectTiming.prim__delay a
  
  export
  setDelay :  (obj : OptionalEffectTiming)
           -> (value : Optional Double)
           -> JSIO ()
  setDelay a b = primJS $ OptionalEffectTiming.prim__setDelay a (toFFI b)

  export
  setDelay' : (obj : OptionalEffectTiming) -> JSIO ()
  setDelay' a = setDelay a Undef
  
  export
  direction : (obj : OptionalEffectTiming) -> JSIO $ Optional PlaybackDirection
  direction a = tryJS "OptionalEffectTiming.direction" $ OptionalEffectTiming.prim__direction a
  
  export
  setDirection :  (obj : OptionalEffectTiming)
               -> (value : Optional PlaybackDirection)
               -> JSIO ()
  setDirection a b = primJS $ OptionalEffectTiming.prim__setDirection a
                                                                      (toFFI b)

  export
  setDirection' : (obj : OptionalEffectTiming) -> JSIO ()
  setDirection' a = setDirection a Undef
  
  export
  duration :  (obj : OptionalEffectTiming)
           -> JSIO $ Optional (NS I [ Double , String ])
  duration a = tryJS "OptionalEffectTiming.duration" $ OptionalEffectTiming.prim__duration a
  
  export
  setDuration :  (obj : OptionalEffectTiming)
              -> (value : Optional (NS I [ Double , String ]))
              -> JSIO ()
  setDuration a b = primJS $ OptionalEffectTiming.prim__setDuration a (toFFI b)

  export
  setDuration' : (obj : OptionalEffectTiming) -> JSIO ()
  setDuration' a = setDuration a Undef
  
  export
  easing : (obj : OptionalEffectTiming) -> JSIO $ Optional String
  easing a = tryJS "OptionalEffectTiming.easing" $ OptionalEffectTiming.prim__easing a
  
  export
  setEasing :  (obj : OptionalEffectTiming)
            -> (value : Optional String)
            -> JSIO ()
  setEasing a b = primJS $ OptionalEffectTiming.prim__setEasing a (toFFI b)

  export
  setEasing' : (obj : OptionalEffectTiming) -> JSIO ()
  setEasing' a = setEasing a Undef
  
  export
  endDelay : (obj : OptionalEffectTiming) -> JSIO $ Optional Double
  endDelay a = tryJS "OptionalEffectTiming.endDelay" $ OptionalEffectTiming.prim__endDelay a
  
  export
  setEndDelay :  (obj : OptionalEffectTiming)
              -> (value : Optional Double)
              -> JSIO ()
  setEndDelay a b = primJS $ OptionalEffectTiming.prim__setEndDelay a (toFFI b)

  export
  setEndDelay' : (obj : OptionalEffectTiming) -> JSIO ()
  setEndDelay' a = setEndDelay a Undef
  
  export
  fill : (obj : OptionalEffectTiming) -> JSIO $ Optional FillMode
  fill a = tryJS "OptionalEffectTiming.fill" $ OptionalEffectTiming.prim__fill a
  
  export
  setFill :  (obj : OptionalEffectTiming)
          -> (value : Optional FillMode)
          -> JSIO ()
  setFill a b = primJS $ OptionalEffectTiming.prim__setFill a (toFFI b)

  export
  setFill' : (obj : OptionalEffectTiming) -> JSIO ()
  setFill' a = setFill a Undef
  
  export
  iterationStart : (obj : OptionalEffectTiming) -> JSIO $ Optional Double
  iterationStart a = tryJS "OptionalEffectTiming.iterationStart" $ OptionalEffectTiming.prim__iterationStart a
  
  export
  setIterationStart :  (obj : OptionalEffectTiming)
                    -> (value : Optional Double)
                    -> JSIO ()
  setIterationStart a b = primJS $ OptionalEffectTiming.prim__setIterationStart a
                                                                                (toFFI b)

  export
  setIterationStart' : (obj : OptionalEffectTiming) -> JSIO ()
  setIterationStart' a = setIterationStart a Undef
  
  export
  iterations : (obj : OptionalEffectTiming) -> JSIO $ Optional Double
  iterations a = tryJS "OptionalEffectTiming.iterations" $ OptionalEffectTiming.prim__iterations a
  
  export
  setIterations :  (obj : OptionalEffectTiming)
                -> (value : Optional Double)
                -> JSIO ()
  setIterations a b = primJS $ OptionalEffectTiming.prim__setIterations a
                                                                        (toFFI b)

  export
  setIterations' : (obj : OptionalEffectTiming) -> JSIO ()
  setIterations' a = setIterations a Undef
