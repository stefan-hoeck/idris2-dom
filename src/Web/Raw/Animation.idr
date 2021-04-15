module Web.Raw.Animation
 
import JS
import Web.Internal.AnimationPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  export
  currentTime :  JSType t
              => {auto 0 _ : Elem Animation (Types t)}
              -> t
              -> Attribute False Maybe Double
  currentTime v = fromNullablePrim "Animation.getcurrentTime"
                                   prim__currentTime
                                   prim__setCurrentTime
                                   (v :> Animation)
  
  export
  effect :  JSType t
         => {auto 0 _ : Elem Animation (Types t)}
         -> t
         -> Attribute False Maybe AnimationEffect
  effect v = fromNullablePrim "Animation.geteffect"
                              prim__effect
                              prim__setEffect
                              (v :> Animation)
  
  export
  finished :  JSType t1
           => {auto 0 _ : Elem Animation (Types t1)}
           -> (obj : t1)
           -> JSIO (Promise Animation)
  finished a = primJS $ Animation.prim__finished (up a)
  
  export
  id :  JSType t
     => {auto 0 _ : Elem Animation (Types t)}
     -> t
     -> Attribute True I String
  id v = fromPrim "Animation.getid" prim__id prim__setId (v :> Animation)
  
  export
  oncancel :  JSType t
           => {auto 0 _ : Elem Animation (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  oncancel v = fromNullablePrim "Animation.getoncancel"
                                prim__oncancel
                                prim__setOncancel
                                (v :> Animation)
  
  export
  onfinish :  JSType t
           => {auto 0 _ : Elem Animation (Types t)}
           -> t
           -> Attribute False Maybe EventHandlerNonNull
  onfinish v = fromNullablePrim "Animation.getonfinish"
                                prim__onfinish
                                prim__setOnfinish
                                (v :> Animation)
  
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
  playbackRate :  JSType t
               => {auto 0 _ : Elem Animation (Types t)}
               -> t
               -> Attribute True I Double
  playbackRate v = fromPrim "Animation.getplaybackRate"
                            prim__playbackRate
                            prim__setPlaybackRate
                            (v :> Animation)
  
  export
  ready :  JSType t1
        => {auto 0 _ : Elem Animation (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Animation)
  ready a = primJS $ Animation.prim__ready (up a)
  
  export
  startTime :  JSType t
            => {auto 0 _ : Elem Animation (Types t)}
            -> t
            -> Attribute False Maybe Double
  startTime v = fromNullablePrim "Animation.getstartTime"
                                 prim__startTime
                                 prim__setStartTime
                                 (v :> Animation)
  
  export
  timeline :  JSType t
           => {auto 0 _ : Elem Animation (Types t)}
           -> t
           -> Attribute False Maybe AnimationTimeline
  timeline v = fromNullablePrim "Animation.gettimeline"
                                prim__timeline
                                prim__setTimeline
                                (v :> Animation)
  
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
  currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  currentTime a = tryJS "AnimationPlaybackEvent.currentTime"
                $ AnimationPlaybackEvent.prim__currentTime a
  
  export
  timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  timelineTime a = tryJS "AnimationPlaybackEvent.timelineTime"
                 $ AnimationPlaybackEvent.prim__timelineTime a

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
  composite v = fromPrim "KeyframeEffect.getcomposite"
                         prim__composite
                         prim__setComposite
                         v
  
  export
  iterationComposite :  KeyframeEffect
                     -> Attribute True I IterationCompositeOperation
  iterationComposite v = fromPrim "KeyframeEffect.getiterationComposite"
                                  prim__iterationComposite
                                  prim__setIterationComposite
                                  v
  
  export
  target :  KeyframeEffect
         -> Attribute False Maybe (NS I [ Element , CSSPseudoElement ])
  target v = fromNullablePrim "KeyframeEffect.gettarget"
                              prim__target
                              prim__setTarget
                              v
  
  export
  getKeyframes : (obj : KeyframeEffect) -> JSIO (Array Object)
  getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes a
  
  export
  setKeyframes :  JSType t1
               => {auto 0 _ : Elem Object (Types t1)}
               -> (obj : KeyframeEffect)
               -> (keyframes : Maybe t1)
               -> JSIO ()
  setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes a (mayUp b)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Animatable
  
  export
  animate :  JSType t1
          => JSType t2
          => {auto 0 _ : Elem Animatable (Types t1)}
          -> {auto 0 _ : Elem Object (Types t2)}
          -> (obj : t1)
          -> (keyframes : Maybe t2)
          -> (options : Optional (NS I [ Double , KeyframeAnimationOptions ]))
          -> JSIO Animation
  animate a b c = primJS $ Animatable.prim__animate (up a) (mayUp b) (toFFI c)

  export
  animate' :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem Animatable (Types t1)}
           -> {auto 0 _ : Elem Object (Types t2)}
           -> (obj : t1)
           -> (keyframes : Maybe t2)
           -> JSIO Animation
  animate' a b = primJS $ Animatable.prim__animate (up a) (mayUp b) undef
  
  export
  getAnimations :  JSType t1
                => {auto 0 _ : Elem Animatable (Types t1)}
                -> (obj : t1)
                -> JSIO (Array Animation)
  getAnimations a = primJS $ Animatable.prim__getAnimations (up a)

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
  currentTime :  JSType t
              => {auto 0 _ : Elem AnimationPlaybackEventInit (Types t)}
              -> t
              -> Attribute True Optional (Maybe Double)
  currentTime v = fromUndefOrPrim "AnimationPlaybackEventInit.getcurrentTime"
                                  prim__currentTime
                                  prim__setCurrentTime
                                  Nothing
                                  (v :> AnimationPlaybackEventInit)
  
  export
  timelineTime :  JSType t
               => {auto 0 _ : Elem AnimationPlaybackEventInit (Types t)}
               -> t
               -> Attribute True Optional (Maybe Double)
  timelineTime v = fromUndefOrPrim "AnimationPlaybackEventInit.gettimelineTime"
                                   prim__timelineTime
                                   prim__setTimelineTime
                                   Nothing
                                   (v :> AnimationPlaybackEventInit)

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
  composite :  JSType t
            => {auto 0 _ : Elem BaseComputedKeyframe (Types t)}
            -> t
            -> Attribute False Optional CompositeOperationOrAuto
  composite v = fromUndefOrPrimNoDefault "BaseComputedKeyframe.getcomposite"
                                         prim__composite
                                         prim__setComposite
                                         (v :> BaseComputedKeyframe)
  
  export
  computedOffset :  JSType t
                 => {auto 0 _ : Elem BaseComputedKeyframe (Types t)}
                 -> t
                 -> Attribute False Optional Double
  computedOffset v = fromUndefOrPrimNoDefault "BaseComputedKeyframe.getcomputedOffset"
                                              prim__computedOffset
                                              prim__setComputedOffset
                                              (v :> BaseComputedKeyframe)
  
  export
  easing :  JSType t
         => {auto 0 _ : Elem BaseComputedKeyframe (Types t)}
         -> t
         -> Attribute True Optional String
  easing v = fromUndefOrPrim "BaseComputedKeyframe.geteasing"
                             prim__easing
                             prim__setEasing
                             "linear"
                             (v :> BaseComputedKeyframe)
  
  export
  offset :  JSType t
         => {auto 0 _ : Elem BaseComputedKeyframe (Types t)}
         -> t
         -> Attribute True Optional (Maybe Double)
  offset v = fromUndefOrPrim "BaseComputedKeyframe.getoffset"
                             prim__offset
                             prim__setOffset
                             Nothing
                             (v :> BaseComputedKeyframe)

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
  composite :  JSType t
            => {auto 0 _ : Elem BaseKeyframe (Types t)}
            -> t
            -> Attribute False Optional CompositeOperationOrAuto
  composite v = fromUndefOrPrimNoDefault "BaseKeyframe.getcomposite"
                                         prim__composite
                                         prim__setComposite
                                         (v :> BaseKeyframe)
  
  export
  easing :  JSType t
         => {auto 0 _ : Elem BaseKeyframe (Types t)}
         -> t
         -> Attribute True Optional String
  easing v = fromUndefOrPrim "BaseKeyframe.geteasing"
                             prim__easing
                             prim__setEasing
                             "linear"
                             (v :> BaseKeyframe)
  
  export
  offset :  JSType t
         => {auto 0 _ : Elem BaseKeyframe (Types t)}
         -> t
         -> Attribute True Optional (Maybe Double)
  offset v = fromUndefOrPrim "BaseKeyframe.getoffset"
                             prim__offset
                             prim__setOffset
                             Nothing
                             (v :> BaseKeyframe)

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
  composite :  JSType t
            => {auto 0 _ : Elem BasePropertyIndexedKeyframe (Types t)}
            -> t
            -> Attribute False Optional (Union2 String (Array String))
  composite v = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.getcomposite"
                                         prim__composite
                                         prim__setComposite
                                         (v :> BasePropertyIndexedKeyframe)
  
  export
  easing :  JSType t
         => {auto 0 _ : Elem BasePropertyIndexedKeyframe (Types t)}
         -> t
         -> Attribute False Optional (Union2 String (Array String))
  easing v = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.geteasing"
                                      prim__easing
                                      prim__setEasing
                                      (v :> BasePropertyIndexedKeyframe)
  
  export
  offset :  JSType t
         => {auto 0 _ : Elem BasePropertyIndexedKeyframe (Types t)}
         -> t
         -> Attribute False Optional (Maybe (Union2 Double
                                                    (Array (Nullable Double))))
  offset v = fromUndefOrPrimNoDefault "BasePropertyIndexedKeyframe.getoffset"
                                      prim__offset
                                      prim__setOffset
                                      (v :> BasePropertyIndexedKeyframe)

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
  activeDuration :  JSType t
                 => {auto 0 _ : Elem ComputedEffectTiming (Types t)}
                 -> t
                 -> Attribute False Optional Double
  activeDuration v = fromUndefOrPrimNoDefault "ComputedEffectTiming.getactiveDuration"
                                              prim__activeDuration
                                              prim__setActiveDuration
                                              (v :> ComputedEffectTiming)
  
  export
  currentIteration :  JSType t
                   => {auto 0 _ : Elem ComputedEffectTiming (Types t)}
                   -> t
                   -> Attribute False Optional (Maybe Double)
  currentIteration v = fromUndefOrPrimNoDefault "ComputedEffectTiming.getcurrentIteration"
                                                prim__currentIteration
                                                prim__setCurrentIteration
                                                (v :> ComputedEffectTiming)
  
  export
  endTime :  JSType t
          => {auto 0 _ : Elem ComputedEffectTiming (Types t)}
          -> t
          -> Attribute False Optional Double
  endTime v = fromUndefOrPrimNoDefault "ComputedEffectTiming.getendTime"
                                       prim__endTime
                                       prim__setEndTime
                                       (v :> ComputedEffectTiming)
  
  export
  localTime :  JSType t
            => {auto 0 _ : Elem ComputedEffectTiming (Types t)}
            -> t
            -> Attribute False Optional (Maybe Double)
  localTime v = fromUndefOrPrimNoDefault "ComputedEffectTiming.getlocalTime"
                                         prim__localTime
                                         prim__setLocalTime
                                         (v :> ComputedEffectTiming)
  
  export
  progress :  JSType t
           => {auto 0 _ : Elem ComputedEffectTiming (Types t)}
           -> t
           -> Attribute False Optional (Maybe Double)
  progress v = fromUndefOrPrimNoDefault "ComputedEffectTiming.getprogress"
                                        prim__progress
                                        prim__setProgress
                                        (v :> ComputedEffectTiming)

namespace DocumentTimelineOptions
  
  export
  new : (originTime : Optional Double) -> JSIO DocumentTimelineOptions
  new a = primJS $ DocumentTimelineOptions.prim__new (toFFI a)

  export
  new' : JSIO DocumentTimelineOptions
  new' = primJS $ DocumentTimelineOptions.prim__new undef
  
  export
  originTime :  JSType t
             => {auto 0 _ : Elem DocumentTimelineOptions (Types t)}
             -> t
             -> Attribute True Optional Double
  originTime v = fromUndefOrPrim "DocumentTimelineOptions.getoriginTime"
                                 prim__originTime
                                 prim__setOriginTime
                                 0
                                 (v :> DocumentTimelineOptions)

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
  delay :  JSType t
        => {auto 0 _ : Elem EffectTiming (Types t)}
        -> t
        -> Attribute True Optional Double
  delay v = fromUndefOrPrim "EffectTiming.getdelay"
                            prim__delay
                            prim__setDelay
                            0
                            (v :> EffectTiming)
  
  export
  direction :  JSType t
            => {auto 0 _ : Elem EffectTiming (Types t)}
            -> t
            -> Attribute False Optional PlaybackDirection
  direction v = fromUndefOrPrimNoDefault "EffectTiming.getdirection"
                                         prim__direction
                                         prim__setDirection
                                         (v :> EffectTiming)
  
  export
  duration :  JSType t
           => {auto 0 _ : Elem EffectTiming (Types t)}
           -> t
           -> Attribute False Optional (NS I [ Double , String ])
  duration v = fromUndefOrPrimNoDefault "EffectTiming.getduration"
                                        prim__duration
                                        prim__setDuration
                                        (v :> EffectTiming)
  
  export
  easing :  JSType t
         => {auto 0 _ : Elem EffectTiming (Types t)}
         -> t
         -> Attribute True Optional String
  easing v = fromUndefOrPrim "EffectTiming.geteasing"
                             prim__easing
                             prim__setEasing
                             "linear"
                             (v :> EffectTiming)
  
  export
  endDelay :  JSType t
           => {auto 0 _ : Elem EffectTiming (Types t)}
           -> t
           -> Attribute True Optional Double
  endDelay v = fromUndefOrPrim "EffectTiming.getendDelay"
                               prim__endDelay
                               prim__setEndDelay
                               0
                               (v :> EffectTiming)
  
  export
  fill :  JSType t
       => {auto 0 _ : Elem EffectTiming (Types t)}
       -> t
       -> Attribute False Optional FillMode
  fill v = fromUndefOrPrimNoDefault "EffectTiming.getfill"
                                    prim__fill
                                    prim__setFill
                                    (v :> EffectTiming)
  
  export
  iterationStart :  JSType t
                 => {auto 0 _ : Elem EffectTiming (Types t)}
                 -> t
                 -> Attribute True Optional Double
  iterationStart v = fromUndefOrPrim "EffectTiming.getiterationStart"
                                     prim__iterationStart
                                     prim__setIterationStart
                                     0.0
                                     (v :> EffectTiming)
  
  export
  iterations :  JSType t
             => {auto 0 _ : Elem EffectTiming (Types t)}
             -> t
             -> Attribute True Optional Double
  iterations v = fromUndefOrPrim "EffectTiming.getiterations"
                                 prim__iterations
                                 prim__setIterations
                                 1.0
                                 (v :> EffectTiming)

namespace KeyframeAnimationOptions
  
  export
  new : (id : Optional String) -> JSIO KeyframeAnimationOptions
  new a = primJS $ KeyframeAnimationOptions.prim__new (toFFI a)

  export
  new' : JSIO KeyframeAnimationOptions
  new' = primJS $ KeyframeAnimationOptions.prim__new undef
  
  export
  id :  JSType t
     => {auto 0 _ : Elem KeyframeAnimationOptions (Types t)}
     -> t
     -> Attribute True Optional String
  id v = fromUndefOrPrim "KeyframeAnimationOptions.getid"
                         prim__id
                         prim__setId
                         ""
                         (v :> KeyframeAnimationOptions)

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
  composite :  JSType t
            => {auto 0 _ : Elem KeyframeEffectOptions (Types t)}
            -> t
            -> Attribute False Optional CompositeOperation
  composite v = fromUndefOrPrimNoDefault "KeyframeEffectOptions.getcomposite"
                                         prim__composite
                                         prim__setComposite
                                         (v :> KeyframeEffectOptions)
  
  export
  iterationComposite :  JSType t
                     => {auto 0 _ : Elem KeyframeEffectOptions (Types t)}
                     -> t
                     -> Attribute False Optional IterationCompositeOperation
  iterationComposite v = fromUndefOrPrimNoDefault "KeyframeEffectOptions.getiterationComposite"
                                                  prim__iterationComposite
                                                  prim__setIterationComposite
                                                  (v :> KeyframeEffectOptions)

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
  delay :  JSType t
        => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
        -> t
        -> Attribute False Optional Double
  delay v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getdelay"
                                     prim__delay
                                     prim__setDelay
                                     (v :> OptionalEffectTiming)
  
  export
  direction :  JSType t
            => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
            -> t
            -> Attribute False Optional PlaybackDirection
  direction v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getdirection"
                                         prim__direction
                                         prim__setDirection
                                         (v :> OptionalEffectTiming)
  
  export
  duration :  JSType t
           => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
           -> t
           -> Attribute False Optional (NS I [ Double , String ])
  duration v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getduration"
                                        prim__duration
                                        prim__setDuration
                                        (v :> OptionalEffectTiming)
  
  export
  easing :  JSType t
         => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
         -> t
         -> Attribute False Optional String
  easing v = fromUndefOrPrimNoDefault "OptionalEffectTiming.geteasing"
                                      prim__easing
                                      prim__setEasing
                                      (v :> OptionalEffectTiming)
  
  export
  endDelay :  JSType t
           => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
           -> t
           -> Attribute False Optional Double
  endDelay v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getendDelay"
                                        prim__endDelay
                                        prim__setEndDelay
                                        (v :> OptionalEffectTiming)
  
  export
  fill :  JSType t
       => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
       -> t
       -> Attribute False Optional FillMode
  fill v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getfill"
                                    prim__fill
                                    prim__setFill
                                    (v :> OptionalEffectTiming)
  
  export
  iterationStart :  JSType t
                 => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
                 -> t
                 -> Attribute False Optional Double
  iterationStart v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getiterationStart"
                                              prim__iterationStart
                                              prim__setIterationStart
                                              (v :> OptionalEffectTiming)
  
  export
  iterations :  JSType t
             => {auto 0 _ : Elem OptionalEffectTiming (Types t)}
             -> t
             -> Attribute False Optional Double
  iterations v = fromUndefOrPrimNoDefault "OptionalEffectTiming.getiterations"
                                          prim__iterations
                                          prim__setIterations
                                          (v :> OptionalEffectTiming)
