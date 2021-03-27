module Web.Animation
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  public export
  JSVal Animation where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.finished"
  prim__finished : AnyPtr -> PrimIO AnyPtr

  export
  finished : (obj : Animation) -> IO (JSPromise Animation)
  
  %foreign "browser:lambda:x=>x.pending"
  prim__pending : AnyPtr -> PrimIO AnyPtr

  export
  pending : (obj : Animation) -> IO Bool
  
  %foreign "browser:lambda:x=>x.playState"
  prim__playState : AnyPtr -> PrimIO AnyPtr

  export
  playState : (obj : Animation) -> IO AnimationPlayState
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready : (obj : Animation) -> IO (JSPromise Animation)
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : Animation) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime : (obj : Animation) -> (v : Maybe Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.effect"
  prim__effect : AnyPtr -> PrimIO AnyPtr

  export
  effect : (obj : Animation) -> IO (Maybe AnimationEffect)

  %foreign "browser:lambda:(x,v)=>{x.effect  = v}"
  prim__setEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEffect : (obj : Animation) -> (v : Maybe AnimationEffect) -> IO ()
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Animation) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : Animation) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  export
  oncancel : (obj : Animation) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncancel  = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncancel : (obj : Animation) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onfinish"
  prim__onfinish : AnyPtr -> PrimIO AnyPtr

  export
  onfinish : (obj : Animation) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onfinish  = v}"
  prim__setOnfinish : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfinish : (obj : Animation) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  export
  playbackRate : (obj : Animation) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.playbackRate  = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaybackRate : (obj : Animation) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  export
  startTime : (obj : Animation) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.startTime  = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartTime : (obj : Animation) -> (v : Maybe Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr

  export
  timeline : (obj : Animation) -> IO (Maybe AnimationTimeline)

  %foreign "browser:lambda:(x,v)=>{x.timeline  = v}"
  prim__setTimeline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimeline : (obj : Animation) -> (v : Maybe AnimationTimeline) -> IO ()

namespace AnimationEffect
  
  public export
  JSVal AnimationEffect where
    parents =  [ JSObject ]

    mixins =  []

namespace AnimationPlaybackEvent
  
  public export
  JSVal AnimationPlaybackEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationPlaybackEvent) -> IO (Maybe Double)
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

  export
  timelineTime : (obj : AnimationPlaybackEvent) -> IO (Maybe Double)

namespace AnimationTimeline
  
  public export
  JSVal AnimationTimeline where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationTimeline) -> IO (Maybe Double)

namespace DocumentTimeline
  
  public export
  JSVal DocumentTimeline where
    parents =  [ AnimationTimeline , JSObject ]

    mixins =  []

namespace KeyframeEffect
  
  public export
  JSVal KeyframeEffect where
    parents =  [ AnimationEffect , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : KeyframeEffect) -> IO CompositeOperation

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite : (obj : KeyframeEffect) -> (v : CompositeOperation) -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  export
  iterationComposite : (obj : KeyframeEffect) -> IO IterationCompositeOperation

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite  = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationComposite :  (obj : KeyframeEffect)
                        -> (v : IterationCompositeOperation)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target :  (obj : KeyframeEffect)
         -> IO (Maybe (NS I [ Element , CSSPseudoElement ]))

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget :  (obj : KeyframeEffect)
            -> (v : Maybe (NS I [ Element , CSSPseudoElement ]))
            -> IO ()

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  public export
  JSVal AnimationPlaybackEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationPlaybackEventInit) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime :  (obj : AnimationPlaybackEventInit)
                 -> (v : Maybe Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

  export
  timelineTime : (obj : AnimationPlaybackEventInit) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.timelineTime  = v}"
  prim__setTimelineTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimelineTime :  (obj : AnimationPlaybackEventInit)
                  -> (v : Maybe Double)
                  -> IO ()

namespace BaseComputedKeyframe
  
  public export
  JSVal BaseComputedKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : BaseComputedKeyframe) -> IO CompositeOperationOrAuto

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : BaseComputedKeyframe)
               -> (v : CompositeOperationOrAuto)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.computedOffset"
  prim__computedOffset : AnyPtr -> PrimIO AnyPtr

  export
  computedOffset : (obj : BaseComputedKeyframe) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.computedOffset  = v}"
  prim__setComputedOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComputedOffset : (obj : BaseComputedKeyframe) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : BaseComputedKeyframe) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : BaseComputedKeyframe) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset : (obj : BaseComputedKeyframe) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset : (obj : BaseComputedKeyframe) -> (v : Maybe Double) -> IO ()

namespace BaseKeyframe
  
  public export
  JSVal BaseKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : BaseKeyframe) -> IO CompositeOperationOrAuto

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite : (obj : BaseKeyframe) -> (v : CompositeOperationOrAuto) -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : BaseKeyframe) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : BaseKeyframe) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset : (obj : BaseKeyframe) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset : (obj : BaseKeyframe) -> (v : Maybe Double) -> IO ()

namespace BasePropertyIndexedKeyframe
  
  public export
  JSVal BasePropertyIndexedKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite :  (obj : BasePropertyIndexedKeyframe)
            -> IO (NS I [ CompositeOperationOrAuto
                        , JSArray CompositeOperationOrAuto
                        ])

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : BasePropertyIndexedKeyframe)
               -> (v : NS I [ CompositeOperationOrAuto
                            , JSArray CompositeOperationOrAuto
                            ])
               -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing :  (obj : BasePropertyIndexedKeyframe)
         -> IO (NS I [ String , JSArray String ])

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing :  (obj : BasePropertyIndexedKeyframe)
            -> (v : NS I [ String , JSArray String ])
            -> IO ()
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset :  (obj : BasePropertyIndexedKeyframe)
         -> IO (NS I [ Maybe Double , JSArray (Maybe Double) ])

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset :  (obj : BasePropertyIndexedKeyframe)
            -> (v : NS I [ Maybe Double , JSArray (Maybe Double) ])
            -> IO ()

namespace ComputedEffectTiming
  
  public export
  JSVal ComputedEffectTiming where
    parents =  [ EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.activeDuration"
  prim__activeDuration : AnyPtr -> PrimIO AnyPtr

  export
  activeDuration : (obj : ComputedEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.activeDuration  = v}"
  prim__setActiveDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setActiveDuration : (obj : ComputedEffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.currentIteration"
  prim__currentIteration : AnyPtr -> PrimIO AnyPtr

  export
  currentIteration : (obj : ComputedEffectTiming) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.currentIteration  = v}"
  prim__setCurrentIteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentIteration :  (obj : ComputedEffectTiming)
                      -> (v : Maybe Double)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  export
  endTime : (obj : ComputedEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.endTime  = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndTime : (obj : ComputedEffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.localTime"
  prim__localTime : AnyPtr -> PrimIO AnyPtr

  export
  localTime : (obj : ComputedEffectTiming) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.localTime  = v}"
  prim__setLocalTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLocalTime : (obj : ComputedEffectTiming) -> (v : Maybe Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.progress"
  prim__progress : AnyPtr -> PrimIO AnyPtr

  export
  progress : (obj : ComputedEffectTiming) -> IO (Maybe Double)

  %foreign "browser:lambda:(x,v)=>{x.progress  = v}"
  prim__setProgress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProgress : (obj : ComputedEffectTiming) -> (v : Maybe Double) -> IO ()

namespace DocumentTimelineOptions
  
  public export
  JSVal DocumentTimelineOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.originTime"
  prim__originTime : AnyPtr -> PrimIO AnyPtr

  export
  originTime : (obj : DocumentTimelineOptions) -> IO DOMHighResTimeStamp

  %foreign "browser:lambda:(x,v)=>{x.originTime  = v}"
  prim__setOriginTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOriginTime :  (obj : DocumentTimelineOptions)
                -> (v : DOMHighResTimeStamp)
                -> IO ()

namespace EffectTiming
  
  public export
  JSVal EffectTiming where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  export
  delay : (obj : EffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.delay  = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelay : (obj : EffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : EffectTiming) -> IO PlaybackDirection

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection : (obj : EffectTiming) -> (v : PlaybackDirection) -> IO ()
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : EffectTiming) -> IO (NS I [ Double , String ])

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration : (obj : EffectTiming) -> (v : NS I [ Double , String ]) -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : EffectTiming) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : EffectTiming) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  export
  endDelay : (obj : EffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.endDelay  = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndDelay : (obj : EffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : EffectTiming) -> IO FillMode

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : EffectTiming) -> (v : FillMode) -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  export
  iterationStart : (obj : EffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.iterationStart  = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationStart : (obj : EffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  export
  iterations : (obj : EffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.iterations  = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterations : (obj : EffectTiming) -> (v : Double) -> IO ()

namespace KeyframeAnimationOptions
  
  public export
  JSVal KeyframeAnimationOptions where
    parents =  [ KeyframeEffectOptions , EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : KeyframeAnimationOptions) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : KeyframeAnimationOptions) -> (v : String) -> IO ()

namespace KeyframeEffectOptions
  
  public export
  JSVal KeyframeEffectOptions where
    parents =  [ EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : KeyframeEffectOptions) -> IO CompositeOperation

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : KeyframeEffectOptions)
               -> (v : CompositeOperation)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  export
  iterationComposite :  (obj : KeyframeEffectOptions)
                     -> IO IterationCompositeOperation

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite  = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationComposite :  (obj : KeyframeEffectOptions)
                        -> (v : IterationCompositeOperation)
                        -> IO ()

namespace OptionalEffectTiming
  
  public export
  JSVal OptionalEffectTiming where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  export
  delay : (obj : OptionalEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.delay  = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelay : (obj : OptionalEffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : OptionalEffectTiming) -> IO PlaybackDirection

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection :  (obj : OptionalEffectTiming)
               -> (v : PlaybackDirection)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : OptionalEffectTiming) -> IO (NS I [ Double , String ])

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration :  (obj : OptionalEffectTiming)
              -> (v : NS I [ Double , String ])
              -> IO ()
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : OptionalEffectTiming) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : OptionalEffectTiming) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  export
  endDelay : (obj : OptionalEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.endDelay  = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndDelay : (obj : OptionalEffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : OptionalEffectTiming) -> IO FillMode

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : OptionalEffectTiming) -> (v : FillMode) -> IO ()
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  export
  iterationStart : (obj : OptionalEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.iterationStart  = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationStart : (obj : OptionalEffectTiming) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  export
  iterations : (obj : OptionalEffectTiming) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.iterations  = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterations : (obj : OptionalEffectTiming) -> (v : Double) -> IO ()

