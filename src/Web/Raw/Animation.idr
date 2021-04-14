module Web.Raw.Animation
 
import JS
import Web.Internal.AnimationPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  export
  currentTime : Animation -> Attribute False Maybe Double
  currentTime = fromNullablePrim "Animation.getcurrentTime"
                                 prim__currentTime
                                 prim__setCurrentTime
  
  export
  effect : Animation -> Attribute False Maybe AnimationEffect
  effect = fromNullablePrim "Animation.geteffect" prim__effect prim__setEffect
  
  export
  finished :  JSType t1
           => {auto 0 _ : Elem Animation (Types t1)}
           -> (obj : t1)
           -> JSIO (Promise Animation)
  finished a = primJS $ Animation.prim__finished (up a)
  
  export
  id : Animation -> Attribute True I String
  id = fromPrim "Animation.getid" prim__id prim__setId
  
  export
  oncancel : Animation -> Attribute False Maybe EventHandlerNonNull
  oncancel = fromNullablePrim "Animation.getoncancel"
                              prim__oncancel
                              prim__setOncancel
  
  export
  onfinish : Animation -> Attribute False Maybe EventHandlerNonNull
  onfinish = fromNullablePrim "Animation.getonfinish"
                              prim__onfinish
                              prim__setOnfinish
  
  export
  pending :  JSType t1
          => {auto 0 _ : Elem Animation (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  pending a = tryJS "Animation.pending" $ Animation.prim__pending (up a)
  
  export
  playState :  JSType t1
            => {auto 0 _ : Elem Animation (Types t1)}
            -> (obj : t1)
            -> JSIO AnimationPlayState
  playState a = tryJS "Animation.playState" $ Animation.prim__playState (up a)
  
  export
  playbackRate : Animation -> Attribute True I Double
  playbackRate = fromPrim "Animation.getplaybackRate"
                          prim__playbackRate
                          prim__setPlaybackRate
  
  export
  ready :  JSType t1
        => {auto 0 _ : Elem Animation (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Animation)
  ready a = primJS $ Animation.prim__ready (up a)
  
  export
  startTime : Animation -> Attribute False Maybe Double
  startTime = fromNullablePrim "Animation.getstartTime"
                               prim__startTime
                               prim__setStartTime
  
  export
  timeline : Animation -> Attribute False Maybe AnimationTimeline
  timeline = fromNullablePrim "Animation.gettimeline"
                              prim__timeline
                              prim__setTimeline
  
  export
  cancel :  JSType t1
         => {auto 0 _ : Elem Animation (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  cancel a = primJS $ Animation.prim__cancel (up a)
  
  export
  finish :  JSType t1
         => {auto 0 _ : Elem Animation (Types t1)}
         -> (obj : t1)
         -> JSIO ()
  finish a = primJS $ Animation.prim__finish (up a)
  
  export
  pause :  JSType t1
        => {auto 0 _ : Elem Animation (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  pause a = primJS $ Animation.prim__pause (up a)
  
  export
  play :  JSType t1
       => {auto 0 _ : Elem Animation (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  play a = primJS $ Animation.prim__play (up a)
  
  export
  reverse :  JSType t1
          => {auto 0 _ : Elem Animation (Types t1)}
          -> (obj : t1)
          -> JSIO ()
  reverse a = primJS $ Animation.prim__reverse (up a)
  
  export
  updatePlaybackRate :  JSType t1
                     => {auto 0 _ : Elem Animation (Types t1)}
                     -> (obj : t1)
                     -> (playbackRate : Double)
                     -> JSIO ()
  updatePlaybackRate a b = primJS $ Animation.prim__updatePlaybackRate (up a) b

namespace AnimationEffect
  
  export
  getComputedTiming :  JSType t1
                    => {auto 0 _ : Elem AnimationEffect (Types t1)}
                    -> (obj : t1)
                    -> JSIO ComputedEffectTiming
  getComputedTiming a = primJS $ AnimationEffect.prim__getComputedTiming (up a)
  
  export
  getTiming :  JSType t1
            => {auto 0 _ : Elem AnimationEffect (Types t1)}
            -> (obj : t1)
            -> JSIO EffectTiming
  getTiming a = primJS $ AnimationEffect.prim__getTiming (up a)
  
  export
  updateTiming :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem AnimationEffect (Types t1)}
               -> {auto 0 _ : Elem OptionalEffectTiming (Types t2)}
               -> (obj : t1)
               -> (timing : Optional t2)
               -> JSIO ()
  updateTiming a b = primJS
                   $ AnimationEffect.prim__updateTiming (up a) (optUp b)

  export
  updateTiming' :  JSType t1
                => {auto 0 _ : Elem AnimationEffect (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  updateTiming' a = primJS $ AnimationEffect.prim__updateTiming (up a) undef

namespace AnimationPlaybackEvent
  
  export
  currentTime :  JSType t1
              => {auto 0 _ : Elem AnimationPlaybackEvent (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationPlaybackEvent.currentTime"
                $ AnimationPlaybackEvent.prim__currentTime (up a)
  
  export
  timelineTime :  JSType t1
               => {auto 0 _ : Elem AnimationPlaybackEvent (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe Double)
  timelineTime a = tryJS "AnimationPlaybackEvent.timelineTime"
                 $ AnimationPlaybackEvent.prim__timelineTime (up a)

namespace AnimationTimeline
  
  export
  currentTime :  JSType t1
              => {auto 0 _ : Elem AnimationTimeline (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationTimeline.currentTime"
                $ AnimationTimeline.prim__currentTime (up a)


namespace KeyframeEffect
  
  export
  composite : KeyframeEffect -> Attribute True I CompositeOperation
  composite = fromPrim "KeyframeEffect.getcomposite"
                       prim__composite
                       prim__setComposite
  
  export
  iterationComposite : KeyframeEffect -> Attribute True I IterationCompositeOperation
  iterationComposite = fromPrim "KeyframeEffect.getiterationComposite"
                                prim__iterationComposite
                                prim__setIterationComposite
  
  export
  target : KeyframeEffect -> Attribute False Maybe (NS I [ Element
                                                         , CSSPseudoElement
                                                         ])
  target = fromNullablePrim "KeyframeEffect.gettarget"
                            prim__target
                            prim__setTarget
  
  export
  getKeyframes :  JSType t1
               => {auto 0 _ : Elem KeyframeEffect (Types t1)}
               -> (obj : t1)
               -> JSIO (Array Object)
  getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes (up a)
  
  export
  setKeyframes :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem KeyframeEffect (Types t1)}
               -> {auto 0 _ : Elem Object (Types t2)}
               -> (obj : t1)
               -> (keyframes : Maybe t2)
               -> JSIO ()
  setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes (up a) (mayUp b)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable
  
  export
  animate :  JSType t1
          => {auto 0 _ : Elem Object (Types t1)}
          -> (obj : Animatable)
          -> (keyframes : Maybe t1)
          -> (options : Optional (NS I [ Double , KeyframeAnimationOptions ]))
          -> JSIO Animation
  animate a b c = primJS $ Animatable.prim__animate a (mayUp b) (toFFI c)

  export
  animate' :  JSType t1
           => {auto 0 _ : Elem Object (Types t1)}
           -> (obj : Animatable)
           -> (keyframes : Maybe t1)
           -> JSIO Animation
  animate' a b = primJS $ Animatable.prim__animate a (mayUp b) undef
  
  export
  getAnimations : (obj : Animatable) -> JSIO (Array Animation)
  getAnimations a = primJS $ Animatable.prim__getAnimations a

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  export
  new :  (currentTime : Optional (Maybe Double))
      -> (timelineTime : Optional (Maybe Double))
      -> JSIO AnimationPlaybackEventInit
  new a b = primJS $ AnimationPlaybackEventInit.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO AnimationPlaybackEventInit
  new' = primJS $ AnimationPlaybackEventInit.prim__new undef undef
  
  export
  currentTime : AnimationPlaybackEventInit -> Attribute True Optional (Maybe Double)
  currentTime = fromUndefOrPrim "AnimationPlaybackEventInit.getcurrentTime"
                                prim__currentTime
                                prim__setCurrentTime
                                Nothing
  
  export
  timelineTime : AnimationPlaybackEventInit -> Attribute True Optional (Maybe Double)
  timelineTime = fromUndefOrPrim "AnimationPlaybackEventInit.gettimelineTime"
                                 prim__timelineTime
                                 prim__setTimelineTime
                                 Nothing

namespace BaseComputedKeyframe
  
  export
  new :  (offset : Optional (Maybe Double))
      -> (computedOffset : Optional Double)
      -> (easing : Optional String)
      -> (composite : Optional CompositeOperationOrAuto)
      -> JSIO BaseComputedKeyframe
  new a b c d = primJS
              $ BaseComputedKeyframe.prim__new (toFFI a)
                                               (toFFI b)
                                               (toFFI c)
                                               (toFFI d)

  export
  new' : JSIO BaseComputedKeyframe
  new' = primJS $ BaseComputedKeyframe.prim__new undef undef undef undef
  
  export
  composite : BaseComputedKeyframe -> Attribute False Optional CompositeOperationOrAuto
  composite = fromUndefOrPrimNoDefault "BaseComputedKeyframe.getcomposite"
                                       prim__composite
                                       prim__setComposite
  
  export
  computedOffset : BaseComputedKeyframe -> Attribute False Optional Double
  computedOffset = fromUndefOrPrimNoDefault "BaseComputedKeyframe.getcomputedOffset"
                                            prim__computedOffset
                                            prim__setComputedOffset
  
  export
  easing : BaseComputedKeyframe -> Attribute True Optional String
  easing = fromUndefOrPrim "BaseComputedKeyframe.geteasing"
                           prim__easing
                           prim__setEasing
                           "linear"
  
  export
  offset : BaseComputedKeyframe -> Attribute True Optional (Maybe Double)
  offset = fromUndefOrPrim "BaseComputedKeyframe.getoffset"
                           prim__offset
                           prim__setOffset
                           Nothing

namespace BaseKeyframe
  
  export
  new :  (offset : Optional (Maybe Double))
      -> (easing : Optional String)
      -> (composite : Optional CompositeOperationOrAuto)
      -> JSIO BaseKeyframe
  new a b c = primJS $ BaseKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO BaseKeyframe
  new' = primJS $ BaseKeyframe.prim__new undef undef undef
  
  export
  composite : BaseKeyframe -> Attribute False Optional CompositeOperationOrAuto
  composite = fromUndefOrPrimNoDefault "BaseKeyframe.getcomposite"
                                       prim__composite
                                       prim__setComposite
  
  export
  easing : BaseKeyframe -> Attribute True Optional String
  easing = fromUndefOrPrim "BaseKeyframe.geteasing"
                           prim__easing
                           prim__setEasing
                           "linear"
  
  export
  offset : BaseKeyframe -> Attribute True Optional (Maybe Double)
  offset = fromUndefOrPrim "BaseKeyframe.getoffset"
                           prim__offset
                           prim__setOffset
                           Nothing

namespace BasePropertyIndexedKeyframe
  
  export
  new :  (offset : Optional (Maybe (NS I [ Double , Array (Nullable Double) ])))
      -> (easing : Optional (NS I [ String , Array String ]))
      -> (composite : Optional (NS I [ CompositeOperationOrAuto
                                     , Array String
                                     ]))
      -> JSIO BasePropertyIndexedKeyframe
  new a b c = primJS
            $ BasePropertyIndexedKeyframe.prim__new (toFFI a)
                                                    (toFFI b)
                                                    (toFFI c)

  export
  new' : JSIO BasePropertyIndexedKeyframe
  new' = primJS $ BasePropertyIndexedKeyframe.prim__new undef undef undef
  
  export
  composite : BasePropertyIndexedKeyframe -> Attribute False Optional (Union2 String
                                                                              (Array String))
  composite = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.getcomposite"
                                       prim__composite
                                       prim__setComposite
  
  export
  easing : BasePropertyIndexedKeyframe -> Attribute False Optional (Union2 String
                                                                           (Array String))
  easing = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.geteasing"
                                    prim__easing
                                    prim__setEasing
  
  export
  offset : BasePropertyIndexedKeyframe -> Attribute False Optional (Maybe (Union2 Double
                                                                                  (Array (Nullable Double))))
  offset = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.getoffset"
                                    prim__offset
                                    prim__setOffset

namespace ComputedEffectTiming
  
  export
  new :  (endTime : Optional Double)
      -> (activeDuration : Optional Double)
      -> (localTime : Optional (Maybe Double))
      -> (progress : Optional (Maybe Double))
      -> (currentIteration : Optional (Maybe Double))
      -> JSIO ComputedEffectTiming
  new a b c d e = primJS
                $ ComputedEffectTiming.prim__new (toFFI a)
                                                 (toFFI b)
                                                 (toFFI c)
                                                 (toFFI d)
                                                 (toFFI e)

  export
  new' : JSIO ComputedEffectTiming
  new' = primJS $ ComputedEffectTiming.prim__new undef undef undef undef undef
  
  export
  activeDuration : ComputedEffectTiming -> Attribute False Optional Double
  activeDuration = fromUndefOrPrimNoDefault "ComputedEffectTiming.getactiveDuration"
                                            prim__activeDuration
                                            prim__setActiveDuration
  
  export
  currentIteration : ComputedEffectTiming -> Attribute False Optional (Maybe Double)
  currentIteration = fromUndefOrPrimNoDefault "ComputedEffectTiming.getcurrentIteration"
                                              prim__currentIteration
                                              prim__setCurrentIteration
  
  export
  endTime : ComputedEffectTiming -> Attribute False Optional Double
  endTime = fromUndefOrPrimNoDefault "ComputedEffectTiming.getendTime"
                                     prim__endTime
                                     prim__setEndTime
  
  export
  localTime : ComputedEffectTiming -> Attribute False Optional (Maybe Double)
  localTime = fromUndefOrPrimNoDefault "ComputedEffectTiming.getlocalTime"
                                       prim__localTime
                                       prim__setLocalTime
  
  export
  progress : ComputedEffectTiming -> Attribute False Optional (Maybe Double)
  progress = fromUndefOrPrimNoDefault "ComputedEffectTiming.getprogress"
                                      prim__progress
                                      prim__setProgress

namespace DocumentTimelineOptions
  
  export
  new : (originTime : Optional Double) -> JSIO DocumentTimelineOptions
  new a = primJS $ DocumentTimelineOptions.prim__new (toFFI a)

  export
  new' : JSIO DocumentTimelineOptions
  new' = primJS $ DocumentTimelineOptions.prim__new undef
  
  export
  originTime : DocumentTimelineOptions -> Attribute True Optional Double
  originTime = fromUndefOrPrim "DocumentTimelineOptions.getoriginTime"
                               prim__originTime
                               prim__setOriginTime
                               0

namespace EffectTiming
  
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
  new a b c d e f g h = primJS
                      $ EffectTiming.prim__new (toFFI a)
                                               (toFFI b)
                                               (toFFI c)
                                               (toFFI d)
                                               (toFFI e)
                                               (toFFI f)
                                               (toFFI g)
                                               (toFFI h)

  export
  new' : JSIO EffectTiming
  new' = primJS
       $ EffectTiming.prim__new undef undef undef undef undef undef undef undef
  
  export
  delay : EffectTiming -> Attribute True Optional Double
  delay = fromUndefOrPrim "EffectTiming.getdelay" prim__delay prim__setDelay 0
  
  export
  direction : EffectTiming -> Attribute False Optional PlaybackDirection
  direction = fromUndefOrPrimNoDefault "EffectTiming.getdirection"
                                       prim__direction
                                       prim__setDirection
  
  export
  duration : EffectTiming -> Attribute False Optional (NS I [ Double , String ])
  duration = fromUndefOrPrimNoDefault "EffectTiming.getduration"
                                      prim__duration
                                      prim__setDuration
  
  export
  easing : EffectTiming -> Attribute True Optional String
  easing = fromUndefOrPrim "EffectTiming.geteasing"
                           prim__easing
                           prim__setEasing
                           "linear"
  
  export
  endDelay : EffectTiming -> Attribute True Optional Double
  endDelay = fromUndefOrPrim "EffectTiming.getendDelay"
                             prim__endDelay
                             prim__setEndDelay
                             0
  
  export
  fill : EffectTiming -> Attribute False Optional FillMode
  fill = fromUndefOrPrimNoDefault "EffectTiming.getfill"
                                  prim__fill
                                  prim__setFill
  
  export
  iterationStart : EffectTiming -> Attribute True Optional Double
  iterationStart = fromUndefOrPrim "EffectTiming.getiterationStart"
                                   prim__iterationStart
                                   prim__setIterationStart
                                   0.0
  
  export
  iterations : EffectTiming -> Attribute True Optional Double
  iterations = fromUndefOrPrim "EffectTiming.getiterations"
                               prim__iterations
                               prim__setIterations
                               1.0

namespace KeyframeAnimationOptions
  
  export
  new : (id : Optional String) -> JSIO KeyframeAnimationOptions
  new a = primJS $ KeyframeAnimationOptions.prim__new (toFFI a)

  export
  new' : JSIO KeyframeAnimationOptions
  new' = primJS $ KeyframeAnimationOptions.prim__new undef
  
  export
  id : KeyframeAnimationOptions -> Attribute True Optional String
  id = fromUndefOrPrim "KeyframeAnimationOptions.getid" prim__id prim__setId ""

namespace KeyframeEffectOptions
  
  export
  new :  (iterationComposite : Optional IterationCompositeOperation)
      -> (composite : Optional CompositeOperation)
      -> JSIO KeyframeEffectOptions
  new a b = primJS $ KeyframeEffectOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO KeyframeEffectOptions
  new' = primJS $ KeyframeEffectOptions.prim__new undef undef
  
  export
  composite : KeyframeEffectOptions -> Attribute False Optional CompositeOperation
  composite = fromUndefOrPrimNoDefault "KeyframeEffectOptions.getcomposite"
                                       prim__composite
                                       prim__setComposite
  
  export
  iterationComposite : KeyframeEffectOptions -> Attribute False Optional IterationCompositeOperation
  iterationComposite = fromUndefOrPrimNoDefault "KeyframeEffectOptions.getiterationComposite"
                                                prim__iterationComposite
                                                prim__setIterationComposite

namespace OptionalEffectTiming
  
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
  new a b c d e f g h = primJS
                      $ OptionalEffectTiming.prim__new (toFFI a)
                                                       (toFFI b)
                                                       (toFFI c)
                                                       (toFFI d)
                                                       (toFFI e)
                                                       (toFFI f)
                                                       (toFFI g)
                                                       (toFFI h)

  export
  new' : JSIO OptionalEffectTiming
  new' = primJS
       $ OptionalEffectTiming.prim__new undef
                                        undef
                                        undef
                                        undef
                                        undef
                                        undef
                                        undef
                                        undef
  
  export
  delay : OptionalEffectTiming -> Attribute False Optional Double
  delay = fromUndefOrPrimNoDefault "OptionalEffectTiming.getdelay"
                                   prim__delay
                                   prim__setDelay
  
  export
  direction : OptionalEffectTiming -> Attribute False Optional PlaybackDirection
  direction = fromUndefOrPrimNoDefault "OptionalEffectTiming.getdirection"
                                       prim__direction
                                       prim__setDirection
  
  export
  duration : OptionalEffectTiming -> Attribute False Optional (NS I [ Double
                                                                    , String
                                                                    ])
  duration = fromUndefOrPrimNoDefault "OptionalEffectTiming.getduration"
                                      prim__duration
                                      prim__setDuration
  
  export
  easing : OptionalEffectTiming -> Attribute False Optional String
  easing = fromUndefOrPrimNoDefault "OptionalEffectTiming.geteasing"
                                    prim__easing
                                    prim__setEasing
  
  export
  endDelay : OptionalEffectTiming -> Attribute False Optional Double
  endDelay = fromUndefOrPrimNoDefault "OptionalEffectTiming.getendDelay"
                                      prim__endDelay
                                      prim__setEndDelay
  
  export
  fill : OptionalEffectTiming -> Attribute False Optional FillMode
  fill = fromUndefOrPrimNoDefault "OptionalEffectTiming.getfill"
                                  prim__fill
                                  prim__setFill
  
  export
  iterationStart : OptionalEffectTiming -> Attribute False Optional Double
  iterationStart = fromUndefOrPrimNoDefault "OptionalEffectTiming.getiterationStart"
                                            prim__iterationStart
                                            prim__setIterationStart
  
  export
  iterations : OptionalEffectTiming -> Attribute False Optional Double
  iterations = fromUndefOrPrimNoDefault "OptionalEffectTiming.getiterations"
                                        prim__iterations
                                        prim__setIterations
