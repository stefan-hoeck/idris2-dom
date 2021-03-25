module Web.Animation

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  %foreign "browser:lambda:x=>x.finished"
  prim__finished : AnyPtr -> PrimIO AnyPtr
  
  export
  finished :  Cast animation Animation
           => ToJS Animation
           => (obj : animation)
           -> IO (JSPromise Animation)
  
  %foreign "browser:lambda:x=>x.pending"
  prim__pending : AnyPtr -> PrimIO AnyPtr
  
  export
  pending :  Cast animation Animation
          => ToJS Animation
          => (obj : animation)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.playState"
  prim__playState : AnyPtr -> PrimIO AnyPtr
  
  export
  playState :  Cast animation Animation
            => ToJS Animation
            => (obj : animation)
            -> IO AnimationPlayState
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr
  
  export
  ready :  Cast animation Animation
        => ToJS Animation
        => (obj : animation)
        -> IO (JSPromise Animation)
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTime :  Cast animation Animation
              => ToJS Animation
              => (obj : animation)
              -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentTime :  Cast animation Animation
                 => ToJS Animation
                 => (obj : animation)
                 -> (v : Maybe Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.effect"
  prim__effect : AnyPtr -> PrimIO AnyPtr
  
  export
  effect :  Cast animation Animation
         => ToJS Animation
         => (obj : animation)
         -> IO (Maybe AnimationEffect)
  
  %foreign "browser:lambda:(x,v)=>{x.effect = v}"
  prim__setEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEffect :  Cast animation Animation
            => ToJS Animation
            => Cast animationEffect AnimationEffect
            => ToJS AnimationEffect
            => (obj : animation)
            -> (v : Maybe animationEffect)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast animation Animation
     => ToJS Animation
     => (obj : animation)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setId :  Cast animation Animation
        => ToJS Animation
        => (obj : animation)
        -> (v : String)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr
  
  export
  oncancel :  Cast animation Animation
           => ToJS Animation
           => (obj : animation)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncancel = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncancel :  Cast animation Animation
              => ToJS Animation
              => Cast eventHandler EventHandler
              => ToJS EventHandler
              => (obj : animation)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.onfinish"
  prim__onfinish : AnyPtr -> PrimIO AnyPtr
  
  export
  onfinish :  Cast animation Animation
           => ToJS Animation
           => (obj : animation)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onfinish = v}"
  prim__setOnfinish : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnfinish :  Cast animation Animation
              => ToJS Animation
              => Cast eventHandler EventHandler
              => ToJS EventHandler
              => (obj : animation)
              -> (v : eventHandler)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr
  
  export
  playbackRate :  Cast animation Animation
               => ToJS Animation
               => (obj : animation)
               -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.playbackRate = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPlaybackRate :  Cast animation Animation
                  => ToJS Animation
                  => (obj : animation)
                  -> (v : Double)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr
  
  export
  startTime :  Cast animation Animation
            => ToJS Animation
            => (obj : animation)
            -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.startTime = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStartTime :  Cast animation Animation
               => ToJS Animation
               => (obj : animation)
               -> (v : Maybe Double)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr
  
  export
  timeline :  Cast animation Animation
           => ToJS Animation
           => (obj : animation)
           -> IO (Maybe AnimationTimeline)
  
  %foreign "browser:lambda:(x,v)=>{x.timeline = v}"
  prim__setTimeline : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTimeline :  Cast animation Animation
              => ToJS Animation
              => Cast animationTimeline AnimationTimeline
              => ToJS AnimationTimeline
              => (obj : animation)
              -> (v : Maybe animationTimeline)
              -> IO ()

namespace AnimationPlaybackEvent
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTime :  Cast animationPlaybackEvent AnimationPlaybackEvent
              => ToJS AnimationPlaybackEvent
              => (obj : animationPlaybackEvent)
              -> IO (Maybe Double)
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr
  
  export
  timelineTime :  Cast animationPlaybackEvent AnimationPlaybackEvent
               => ToJS AnimationPlaybackEvent
               => (obj : animationPlaybackEvent)
               -> IO (Maybe Double)

namespace AnimationTimeline
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTime :  Cast animationTimeline AnimationTimeline
              => ToJS AnimationTimeline
              => (obj : animationTimeline)
              -> IO (Maybe Double)

namespace KeyframeEffect
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr
  
  export
  composite :  Cast keyframeEffect KeyframeEffect
            => ToJS KeyframeEffect
            => (obj : keyframeEffect)
            -> IO CompositeOperation
  
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposite :  Cast compositeOperation CompositeOperation
               => ToJS CompositeOperation
               => Cast keyframeEffect KeyframeEffect
               => ToJS KeyframeEffect
               => (obj : keyframeEffect)
               -> (v : compositeOperation)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr
  
  export
  iterationComposite :  Cast keyframeEffect KeyframeEffect
                     => ToJS KeyframeEffect
                     => (obj : keyframeEffect)
                     -> IO IterationCompositeOperation
  
  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterationComposite :  Cast iterationCompositeOperation IterationCompositeOperation
                        => ToJS IterationCompositeOperation
                        => Cast keyframeEffect KeyframeEffect
                        => ToJS KeyframeEffect
                        => (obj : keyframeEffect)
                        -> (v : iterationCompositeOperation)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast keyframeEffect KeyframeEffect
         => ToJS KeyframeEffect
         => (obj : keyframeEffect)
         -> IO (Maybe (NS I [ Element , CSSPseudoElement ]))
  
  %foreign "browser:lambda:(x,v)=>{x.target = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTarget :  Cast keyframeEffect KeyframeEffect
            => ToJS KeyframeEffect
            => (obj : keyframeEffect)
            -> (v : Maybe (NS I [ Element , CSSPseudoElement ]))
            -> IO ()


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTime :  Cast animationPlaybackEventInit AnimationPlaybackEventInit
              => ToJS AnimationPlaybackEventInit
              => (obj : animationPlaybackEventInit)
              -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.currentTime = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentTime :  Cast animationPlaybackEventInit AnimationPlaybackEventInit
                 => ToJS AnimationPlaybackEventInit
                 => (obj : animationPlaybackEventInit)
                 -> (v : Maybe Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr
  
  export
  timelineTime :  Cast animationPlaybackEventInit AnimationPlaybackEventInit
               => ToJS AnimationPlaybackEventInit
               => (obj : animationPlaybackEventInit)
               -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.timelineTime = v}"
  prim__setTimelineTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTimelineTime :  Cast animationPlaybackEventInit AnimationPlaybackEventInit
                  => ToJS AnimationPlaybackEventInit
                  => (obj : animationPlaybackEventInit)
                  -> (v : Maybe Double)
                  -> IO ()

namespace BaseComputedKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr
  
  export
  composite :  Cast baseComputedKeyframe BaseComputedKeyframe
            => ToJS BaseComputedKeyframe
            => (obj : baseComputedKeyframe)
            -> IO CompositeOperationOrAuto
  
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposite :  Cast baseComputedKeyframe BaseComputedKeyframe
               => ToJS BaseComputedKeyframe
               => Cast compositeOperationOrAuto CompositeOperationOrAuto
               => ToJS CompositeOperationOrAuto
               => (obj : baseComputedKeyframe)
               -> (v : compositeOperationOrAuto)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.computedOffset"
  prim__computedOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  computedOffset :  Cast baseComputedKeyframe BaseComputedKeyframe
                 => ToJS BaseComputedKeyframe
                 => (obj : baseComputedKeyframe)
                 -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.computedOffset = v}"
  prim__setComputedOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComputedOffset :  Cast baseComputedKeyframe BaseComputedKeyframe
                    => ToJS BaseComputedKeyframe
                    => (obj : baseComputedKeyframe)
                    -> (v : Double)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr
  
  export
  easing :  Cast baseComputedKeyframe BaseComputedKeyframe
         => ToJS BaseComputedKeyframe
         => (obj : baseComputedKeyframe)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEasing :  Cast baseComputedKeyframe BaseComputedKeyframe
            => ToJS BaseComputedKeyframe
            => (obj : baseComputedKeyframe)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr
  
  export
  offset :  Cast baseComputedKeyframe BaseComputedKeyframe
         => ToJS BaseComputedKeyframe
         => (obj : baseComputedKeyframe)
         -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOffset :  Cast baseComputedKeyframe BaseComputedKeyframe
            => ToJS BaseComputedKeyframe
            => (obj : baseComputedKeyframe)
            -> (v : Maybe Double)
            -> IO ()

namespace BaseKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr
  
  export
  composite :  Cast baseKeyframe BaseKeyframe
            => ToJS BaseKeyframe
            => (obj : baseKeyframe)
            -> IO CompositeOperationOrAuto
  
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposite :  Cast baseKeyframe BaseKeyframe
               => ToJS BaseKeyframe
               => Cast compositeOperationOrAuto CompositeOperationOrAuto
               => ToJS CompositeOperationOrAuto
               => (obj : baseKeyframe)
               -> (v : compositeOperationOrAuto)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr
  
  export
  easing :  Cast baseKeyframe BaseKeyframe
         => ToJS BaseKeyframe
         => (obj : baseKeyframe)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEasing :  Cast baseKeyframe BaseKeyframe
            => ToJS BaseKeyframe
            => (obj : baseKeyframe)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr
  
  export
  offset :  Cast baseKeyframe BaseKeyframe
         => ToJS BaseKeyframe
         => (obj : baseKeyframe)
         -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOffset :  Cast baseKeyframe BaseKeyframe
            => ToJS BaseKeyframe
            => (obj : baseKeyframe)
            -> (v : Maybe Double)
            -> IO ()

namespace BasePropertyIndexedKeyframe
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr
  
  export
  composite :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
            => ToJS BasePropertyIndexedKeyframe
            => (obj : basePropertyIndexedKeyframe)
            -> IO (NS I [ CompositeOperationOrAuto
                        , JSArray CompositeOperationOrAuto
                        ])
  
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposite :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
               => ToJS BasePropertyIndexedKeyframe
               => (obj : basePropertyIndexedKeyframe)
               -> (v : NS I [ CompositeOperationOrAuto
                            , JSArray CompositeOperationOrAuto
                            ])
               -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr
  
  export
  easing :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
         => ToJS BasePropertyIndexedKeyframe
         => (obj : basePropertyIndexedKeyframe)
         -> IO (NS I [ String , JSArray String ])
  
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEasing :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
            => ToJS BasePropertyIndexedKeyframe
            => (obj : basePropertyIndexedKeyframe)
            -> (v : NS I [ String , JSArray String ])
            -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr
  
  export
  offset :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
         => ToJS BasePropertyIndexedKeyframe
         => (obj : basePropertyIndexedKeyframe)
         -> IO (NS I [ Maybe Double , JSArray (Maybe Double) ])
  
  %foreign "browser:lambda:(x,v)=>{x.offset = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOffset :  Cast basePropertyIndexedKeyframe BasePropertyIndexedKeyframe
            => ToJS BasePropertyIndexedKeyframe
            => (obj : basePropertyIndexedKeyframe)
            -> (v : NS I [ Maybe Double , JSArray (Maybe Double) ])
            -> IO ()

namespace ComputedEffectTiming
  
  %foreign "browser:lambda:x=>x.activeDuration"
  prim__activeDuration : AnyPtr -> PrimIO AnyPtr
  
  export
  activeDuration :  Cast computedEffectTiming ComputedEffectTiming
                 => ToJS ComputedEffectTiming
                 => (obj : computedEffectTiming)
                 -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.activeDuration = v}"
  prim__setActiveDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setActiveDuration :  Cast computedEffectTiming ComputedEffectTiming
                    => ToJS ComputedEffectTiming
                    => (obj : computedEffectTiming)
                    -> (v : Double)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.currentIteration"
  prim__currentIteration : AnyPtr -> PrimIO AnyPtr
  
  export
  currentIteration :  Cast computedEffectTiming ComputedEffectTiming
                   => ToJS ComputedEffectTiming
                   => (obj : computedEffectTiming)
                   -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.currentIteration = v}"
  prim__setCurrentIteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentIteration :  Cast computedEffectTiming ComputedEffectTiming
                      => ToJS ComputedEffectTiming
                      => (obj : computedEffectTiming)
                      -> (v : Maybe Double)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr
  
  export
  endTime :  Cast computedEffectTiming ComputedEffectTiming
          => ToJS ComputedEffectTiming
          => (obj : computedEffectTiming)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.endTime = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndTime :  Cast computedEffectTiming ComputedEffectTiming
             => ToJS ComputedEffectTiming
             => (obj : computedEffectTiming)
             -> (v : Double)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.localTime"
  prim__localTime : AnyPtr -> PrimIO AnyPtr
  
  export
  localTime :  Cast computedEffectTiming ComputedEffectTiming
            => ToJS ComputedEffectTiming
            => (obj : computedEffectTiming)
            -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.localTime = v}"
  prim__setLocalTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLocalTime :  Cast computedEffectTiming ComputedEffectTiming
               => ToJS ComputedEffectTiming
               => (obj : computedEffectTiming)
               -> (v : Maybe Double)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.progress"
  prim__progress : AnyPtr -> PrimIO AnyPtr
  
  export
  progress :  Cast computedEffectTiming ComputedEffectTiming
           => ToJS ComputedEffectTiming
           => (obj : computedEffectTiming)
           -> IO (Maybe Double)
  
  %foreign "browser:lambda:(x,v)=>{x.progress = v}"
  prim__setProgress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setProgress :  Cast computedEffectTiming ComputedEffectTiming
              => ToJS ComputedEffectTiming
              => (obj : computedEffectTiming)
              -> (v : Maybe Double)
              -> IO ()

namespace DocumentTimelineOptions
  
  %foreign "browser:lambda:x=>x.originTime"
  prim__originTime : AnyPtr -> PrimIO AnyPtr
  
  export
  originTime :  Cast documentTimelineOptions DocumentTimelineOptions
             => ToJS DocumentTimelineOptions
             => (obj : documentTimelineOptions)
             -> IO DOMHighResTimeStamp
  
  %foreign "browser:lambda:(x,v)=>{x.originTime = v}"
  prim__setOriginTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOriginTime :  Cast dOMHighResTimeStamp DOMHighResTimeStamp
                => ToJS DOMHighResTimeStamp
                => Cast documentTimelineOptions DocumentTimelineOptions
                => ToJS DocumentTimelineOptions
                => (obj : documentTimelineOptions)
                -> (v : dOMHighResTimeStamp)
                -> IO ()

namespace EffectTiming
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr
  
  export
  delay :  Cast effectTiming EffectTiming
        => ToJS EffectTiming
        => (obj : effectTiming)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDelay :  Cast effectTiming EffectTiming
           => ToJS EffectTiming
           => (obj : effectTiming)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr
  
  export
  direction :  Cast effectTiming EffectTiming
            => ToJS EffectTiming
            => (obj : effectTiming)
            -> IO PlaybackDirection
  
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirection :  Cast effectTiming EffectTiming
               => ToJS EffectTiming
               => Cast playbackDirection PlaybackDirection
               => ToJS PlaybackDirection
               => (obj : effectTiming)
               -> (v : playbackDirection)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr
  
  export
  duration :  Cast effectTiming EffectTiming
           => ToJS EffectTiming
           => (obj : effectTiming)
           -> IO (NS I [ Double , String ])
  
  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDuration :  Cast effectTiming EffectTiming
              => ToJS EffectTiming
              => (obj : effectTiming)
              -> (v : NS I [ Double , String ])
              -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr
  
  export
  easing :  Cast effectTiming EffectTiming
         => ToJS EffectTiming
         => (obj : effectTiming)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEasing :  Cast effectTiming EffectTiming
            => ToJS EffectTiming
            => (obj : effectTiming)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr
  
  export
  endDelay :  Cast effectTiming EffectTiming
           => ToJS EffectTiming
           => (obj : effectTiming)
           -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndDelay :  Cast effectTiming EffectTiming
              => ToJS EffectTiming
              => (obj : effectTiming)
              -> (v : Double)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr
  
  export
  fill :  Cast effectTiming EffectTiming
       => ToJS EffectTiming
       => (obj : effectTiming)
       -> IO FillMode
  
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFill :  Cast effectTiming EffectTiming
          => ToJS EffectTiming
          => Cast fillMode FillMode
          => ToJS FillMode
          => (obj : effectTiming)
          -> (v : fillMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr
  
  export
  iterationStart :  Cast effectTiming EffectTiming
                 => ToJS EffectTiming
                 => (obj : effectTiming)
                 -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterationStart :  Cast effectTiming EffectTiming
                    => ToJS EffectTiming
                    => (obj : effectTiming)
                    -> (v : Double)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr
  
  export
  iterations :  Cast effectTiming EffectTiming
             => ToJS EffectTiming
             => (obj : effectTiming)
             -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterations :  Cast effectTiming EffectTiming
                => ToJS EffectTiming
                => (obj : effectTiming)
                -> (v : Double)
                -> IO ()

namespace KeyframeAnimationOptions
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast keyframeAnimationOptions KeyframeAnimationOptions
     => ToJS KeyframeAnimationOptions
     => (obj : keyframeAnimationOptions)
     -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.id = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setId :  Cast keyframeAnimationOptions KeyframeAnimationOptions
        => ToJS KeyframeAnimationOptions
        => (obj : keyframeAnimationOptions)
        -> (v : String)
        -> IO ()

namespace KeyframeEffectOptions
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr
  
  export
  composite :  Cast keyframeEffectOptions KeyframeEffectOptions
            => ToJS KeyframeEffectOptions
            => (obj : keyframeEffectOptions)
            -> IO CompositeOperation
  
  %foreign "browser:lambda:(x,v)=>{x.composite = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setComposite :  Cast compositeOperation CompositeOperation
               => ToJS CompositeOperation
               => Cast keyframeEffectOptions KeyframeEffectOptions
               => ToJS KeyframeEffectOptions
               => (obj : keyframeEffectOptions)
               -> (v : compositeOperation)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr
  
  export
  iterationComposite :  Cast keyframeEffectOptions KeyframeEffectOptions
                     => ToJS KeyframeEffectOptions
                     => (obj : keyframeEffectOptions)
                     -> IO IterationCompositeOperation
  
  %foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterationComposite :  Cast iterationCompositeOperation IterationCompositeOperation
                        => ToJS IterationCompositeOperation
                        => Cast keyframeEffectOptions KeyframeEffectOptions
                        => ToJS KeyframeEffectOptions
                        => (obj : keyframeEffectOptions)
                        -> (v : iterationCompositeOperation)
                        -> IO ()

namespace OptionalEffectTiming
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr
  
  export
  delay :  Cast optionalEffectTiming OptionalEffectTiming
        => ToJS OptionalEffectTiming
        => (obj : optionalEffectTiming)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.delay = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDelay :  Cast optionalEffectTiming OptionalEffectTiming
           => ToJS OptionalEffectTiming
           => (obj : optionalEffectTiming)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr
  
  export
  direction :  Cast optionalEffectTiming OptionalEffectTiming
            => ToJS OptionalEffectTiming
            => (obj : optionalEffectTiming)
            -> IO PlaybackDirection
  
  %foreign "browser:lambda:(x,v)=>{x.direction = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDirection :  Cast optionalEffectTiming OptionalEffectTiming
               => ToJS OptionalEffectTiming
               => Cast playbackDirection PlaybackDirection
               => ToJS PlaybackDirection
               => (obj : optionalEffectTiming)
               -> (v : playbackDirection)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr
  
  export
  duration :  Cast optionalEffectTiming OptionalEffectTiming
           => ToJS OptionalEffectTiming
           => (obj : optionalEffectTiming)
           -> IO (NS I [ Double , String ])
  
  %foreign "browser:lambda:(x,v)=>{x.duration = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDuration :  Cast optionalEffectTiming OptionalEffectTiming
              => ToJS OptionalEffectTiming
              => (obj : optionalEffectTiming)
              -> (v : NS I [ Double , String ])
              -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr
  
  export
  easing :  Cast optionalEffectTiming OptionalEffectTiming
         => ToJS OptionalEffectTiming
         => (obj : optionalEffectTiming)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.easing = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEasing :  Cast optionalEffectTiming OptionalEffectTiming
            => ToJS OptionalEffectTiming
            => (obj : optionalEffectTiming)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr
  
  export
  endDelay :  Cast optionalEffectTiming OptionalEffectTiming
           => ToJS OptionalEffectTiming
           => (obj : optionalEffectTiming)
           -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.endDelay = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEndDelay :  Cast optionalEffectTiming OptionalEffectTiming
              => ToJS OptionalEffectTiming
              => (obj : optionalEffectTiming)
              -> (v : Double)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr
  
  export
  fill :  Cast optionalEffectTiming OptionalEffectTiming
       => ToJS OptionalEffectTiming
       => (obj : optionalEffectTiming)
       -> IO FillMode
  
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFill :  Cast fillMode FillMode
          => ToJS FillMode
          => Cast optionalEffectTiming OptionalEffectTiming
          => ToJS OptionalEffectTiming
          => (obj : optionalEffectTiming)
          -> (v : fillMode)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr
  
  export
  iterationStart :  Cast optionalEffectTiming OptionalEffectTiming
                 => ToJS OptionalEffectTiming
                 => (obj : optionalEffectTiming)
                 -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.iterationStart = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterationStart :  Cast optionalEffectTiming OptionalEffectTiming
                    => ToJS OptionalEffectTiming
                    => (obj : optionalEffectTiming)
                    -> (v : Double)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr
  
  export
  iterations :  Cast optionalEffectTiming OptionalEffectTiming
             => ToJS OptionalEffectTiming
             => (obj : optionalEffectTiming)
             -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.iterations = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIterations :  Cast optionalEffectTiming OptionalEffectTiming
                => ToJS OptionalEffectTiming
                => (obj : optionalEffectTiming)
                -> (v : Double)
                -> IO ()



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