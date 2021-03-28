module Web.Animation
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Animation
  
  public export
  JSType Animation where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.finished"
  prim__finished : AnyPtr -> PrimIO AnyPtr

  export
  finished : (obj : Animation) -> JSIO (JSPromise Animation)
  finished a =   primToJSIO "finished" $ prim__finished (toJS a)
  
  %foreign "browser:lambda:x=>x.pending"
  prim__pending : AnyPtr -> PrimIO AnyPtr

  export
  pending : (obj : Animation) -> JSIO Bool
  pending a =   primToJSIO "pending" $ prim__pending (toJS a)
  
  %foreign "browser:lambda:x=>x.playState"
  prim__playState : AnyPtr -> PrimIO AnyPtr

  export
  playState : (obj : Animation) -> JSIO AnimationPlayState
  playState a =   primToJSIO "playState" $ prim__playState (toJS a)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready : (obj : Animation) -> JSIO (JSPromise Animation)
  ready a =   primToJSIO "ready" $ prim__ready (toJS a)
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : Animation) -> JSIO (Maybe Double)
  currentTime a =   primToJSIO "currentTime" $ prim__currentTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime : (obj : Animation) -> (v : Maybe Double) -> JSIO ()
  setCurrentTime a b =
    primToJSIO "setCurrentTime" $ prim__setCurrentTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.effect"
  prim__effect : AnyPtr -> PrimIO AnyPtr

  export
  effect : (obj : Animation) -> JSIO (Maybe AnimationEffect)
  effect a =   primToJSIO "effect" $ prim__effect (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.effect  = v}"
  prim__setEffect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEffect : (obj : Animation) -> (v : Maybe AnimationEffect) -> JSIO ()
  setEffect a b =   primToJSIO "setEffect" $ prim__setEffect (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Animation) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : Animation) -> (v : String) -> JSIO ()
  setId a b =   primToJSIO "setId" $ prim__setId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oncancel"
  prim__oncancel : AnyPtr -> PrimIO AnyPtr

  export
  oncancel : (obj : Animation) -> JSIO EventHandler
  oncancel a =   primToJSIO "oncancel" $ prim__oncancel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncancel  = v}"
  prim__setOncancel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncancel : (obj : Animation) -> (v : EventHandler) -> JSIO ()
  setOncancel a b =
    primToJSIO "setOncancel" $ prim__setOncancel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onfinish"
  prim__onfinish : AnyPtr -> PrimIO AnyPtr

  export
  onfinish : (obj : Animation) -> JSIO EventHandler
  onfinish a =   primToJSIO "onfinish" $ prim__onfinish (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onfinish  = v}"
  prim__setOnfinish : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfinish : (obj : Animation) -> (v : EventHandler) -> JSIO ()
  setOnfinish a b =
    primToJSIO "setOnfinish" $ prim__setOnfinish (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.playbackRate"
  prim__playbackRate : AnyPtr -> PrimIO AnyPtr

  export
  playbackRate : (obj : Animation) -> JSIO Double
  playbackRate a =   primToJSIO "playbackRate" $ prim__playbackRate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.playbackRate  = v}"
  prim__setPlaybackRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPlaybackRate : (obj : Animation) -> (v : Double) -> JSIO ()
  setPlaybackRate a b =
    primToJSIO "setPlaybackRate" $ prim__setPlaybackRate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.startTime"
  prim__startTime : AnyPtr -> PrimIO AnyPtr

  export
  startTime : (obj : Animation) -> JSIO (Maybe Double)
  startTime a =   primToJSIO "startTime" $ prim__startTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.startTime  = v}"
  prim__setStartTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStartTime : (obj : Animation) -> (v : Maybe Double) -> JSIO ()
  setStartTime a b =
    primToJSIO "setStartTime" $ prim__setStartTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.timeline"
  prim__timeline : AnyPtr -> PrimIO AnyPtr

  export
  timeline : (obj : Animation) -> JSIO (Maybe AnimationTimeline)
  timeline a =   primToJSIO "timeline" $ prim__timeline (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.timeline  = v}"
  prim__setTimeline : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimeline : (obj : Animation) -> (v : Maybe AnimationTimeline) -> JSIO ()
  setTimeline a b =
    primToJSIO "setTimeline" $ prim__setTimeline (toJS a) (toJS b)

namespace AnimationEffect
  
  public export
  JSType AnimationEffect where
    parents =  [ JSObject ]

    mixins =  []

namespace AnimationPlaybackEvent
  
  public export
  JSType AnimationPlaybackEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  currentTime a =   primToJSIO "currentTime" $ prim__currentTime (toJS a)
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

  export
  timelineTime : (obj : AnimationPlaybackEvent) -> JSIO (Maybe Double)
  timelineTime a =   primToJSIO "timelineTime" $ prim__timelineTime (toJS a)

namespace AnimationTimeline
  
  public export
  JSType AnimationTimeline where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationTimeline) -> JSIO (Maybe Double)
  currentTime a =   primToJSIO "currentTime" $ prim__currentTime (toJS a)

namespace DocumentTimeline
  
  public export
  JSType DocumentTimeline where
    parents =  [ AnimationTimeline , JSObject ]

    mixins =  []

namespace KeyframeEffect
  
  public export
  JSType KeyframeEffect where
    parents =  [ AnimationEffect , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : KeyframeEffect) -> JSIO CompositeOperation
  composite a =   primToJSIO "composite" $ prim__composite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite : (obj : KeyframeEffect) -> (v : CompositeOperation) -> JSIO ()
  setComposite a b =
    primToJSIO "setComposite" $ prim__setComposite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  export
  iterationComposite :  (obj : KeyframeEffect)
                     -> JSIO IterationCompositeOperation
  iterationComposite a =
    primToJSIO "iterationComposite" $ prim__iterationComposite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite  = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationComposite :  (obj : KeyframeEffect)
                        -> (v : IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b =
    primToJSIO "setIterationComposite" $ prim__setIterationComposite (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target :  (obj : KeyframeEffect)
         -> JSIO (Maybe (NS I [ Element , CSSPseudoElement ]))
  target a =   primToJSIO "target" $ prim__target (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.target  = v}"
  prim__setTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTarget :  (obj : KeyframeEffect)
            -> (v : Maybe (NS I [ Element , CSSPseudoElement ]))
            -> JSIO ()
  setTarget a b =   primToJSIO "setTarget" $ prim__setTarget (toJS a) (toJS b)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace AnimationPlaybackEventInit
  
  public export
  JSType AnimationPlaybackEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.currentTime"
  prim__currentTime : AnyPtr -> PrimIO AnyPtr

  export
  currentTime : (obj : AnimationPlaybackEventInit) -> JSIO (Maybe Double)
  currentTime a =   primToJSIO "currentTime" $ prim__currentTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentTime  = v}"
  prim__setCurrentTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentTime :  (obj : AnimationPlaybackEventInit)
                 -> (v : Maybe Double)
                 -> JSIO ()
  setCurrentTime a b =
    primToJSIO "setCurrentTime" $ prim__setCurrentTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.timelineTime"
  prim__timelineTime : AnyPtr -> PrimIO AnyPtr

  export
  timelineTime : (obj : AnimationPlaybackEventInit) -> JSIO (Maybe Double)
  timelineTime a =   primToJSIO "timelineTime" $ prim__timelineTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.timelineTime  = v}"
  prim__setTimelineTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimelineTime :  (obj : AnimationPlaybackEventInit)
                  -> (v : Maybe Double)
                  -> JSIO ()
  setTimelineTime a b =
    primToJSIO "setTimelineTime" $ prim__setTimelineTime (toJS a) (toJS b)

namespace BaseComputedKeyframe
  
  public export
  JSType BaseComputedKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : BaseComputedKeyframe) -> JSIO CompositeOperationOrAuto
  composite a =   primToJSIO "composite" $ prim__composite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : BaseComputedKeyframe)
               -> (v : CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b =
    primToJSIO "setComposite" $ prim__setComposite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.computedOffset"
  prim__computedOffset : AnyPtr -> PrimIO AnyPtr

  export
  computedOffset : (obj : BaseComputedKeyframe) -> JSIO Double
  computedOffset a =
    primToJSIO "computedOffset" $ prim__computedOffset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.computedOffset  = v}"
  prim__setComputedOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComputedOffset : (obj : BaseComputedKeyframe) -> (v : Double) -> JSIO ()
  setComputedOffset a b =
    primToJSIO "setComputedOffset" $ prim__setComputedOffset (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : BaseComputedKeyframe) -> JSIO String
  easing a =   primToJSIO "easing" $ prim__easing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : BaseComputedKeyframe) -> (v : String) -> JSIO ()
  setEasing a b =   primToJSIO "setEasing" $ prim__setEasing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset : (obj : BaseComputedKeyframe) -> JSIO (Maybe Double)
  offset a =   primToJSIO "offset" $ prim__offset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset : (obj : BaseComputedKeyframe) -> (v : Maybe Double) -> JSIO ()
  setOffset a b =   primToJSIO "setOffset" $ prim__setOffset (toJS a) (toJS b)

namespace BaseKeyframe
  
  public export
  JSType BaseKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : BaseKeyframe) -> JSIO CompositeOperationOrAuto
  composite a =   primToJSIO "composite" $ prim__composite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : BaseKeyframe)
               -> (v : CompositeOperationOrAuto)
               -> JSIO ()
  setComposite a b =
    primToJSIO "setComposite" $ prim__setComposite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : BaseKeyframe) -> JSIO String
  easing a =   primToJSIO "easing" $ prim__easing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : BaseKeyframe) -> (v : String) -> JSIO ()
  setEasing a b =   primToJSIO "setEasing" $ prim__setEasing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset : (obj : BaseKeyframe) -> JSIO (Maybe Double)
  offset a =   primToJSIO "offset" $ prim__offset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset : (obj : BaseKeyframe) -> (v : Maybe Double) -> JSIO ()
  setOffset a b =   primToJSIO "setOffset" $ prim__setOffset (toJS a) (toJS b)

namespace BasePropertyIndexedKeyframe
  
  public export
  JSType BasePropertyIndexedKeyframe where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite :  (obj : BasePropertyIndexedKeyframe)
            -> JSIO (NS I [ CompositeOperationOrAuto
                          , JSArray CompositeOperationOrAuto
                          ])
  composite a =   primToJSIO "composite" $ prim__composite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : BasePropertyIndexedKeyframe)
               -> (v : NS I [ CompositeOperationOrAuto
                            , JSArray CompositeOperationOrAuto
                            ])
               -> JSIO ()
  setComposite a b =
    primToJSIO "setComposite" $ prim__setComposite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO (NS I [ String , JSArray String ])
  easing a =   primToJSIO "easing" $ prim__easing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing :  (obj : BasePropertyIndexedKeyframe)
            -> (v : NS I [ String , JSArray String ])
            -> JSIO ()
  setEasing a b =   primToJSIO "setEasing" $ prim__setEasing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset :  (obj : BasePropertyIndexedKeyframe)
         -> JSIO (NS I [ Maybe Double , JSArray (Maybe Double) ])
  offset a =   primToJSIO "offset" $ prim__offset (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.offset  = v}"
  prim__setOffset : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOffset :  (obj : BasePropertyIndexedKeyframe)
            -> (v : NS I [ Maybe Double , JSArray (Maybe Double) ])
            -> JSIO ()
  setOffset a b =   primToJSIO "setOffset" $ prim__setOffset (toJS a) (toJS b)

namespace ComputedEffectTiming
  
  public export
  JSType ComputedEffectTiming where
    parents =  [ EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.activeDuration"
  prim__activeDuration : AnyPtr -> PrimIO AnyPtr

  export
  activeDuration : (obj : ComputedEffectTiming) -> JSIO Double
  activeDuration a =
    primToJSIO "activeDuration" $ prim__activeDuration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.activeDuration  = v}"
  prim__setActiveDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setActiveDuration : (obj : ComputedEffectTiming) -> (v : Double) -> JSIO ()
  setActiveDuration a b =
    primToJSIO "setActiveDuration" $ prim__setActiveDuration (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.currentIteration"
  prim__currentIteration : AnyPtr -> PrimIO AnyPtr

  export
  currentIteration : (obj : ComputedEffectTiming) -> JSIO (Maybe Double)
  currentIteration a =
    primToJSIO "currentIteration" $ prim__currentIteration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentIteration  = v}"
  prim__setCurrentIteration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentIteration :  (obj : ComputedEffectTiming)
                      -> (v : Maybe Double)
                      -> JSIO ()
  setCurrentIteration a b =
    primToJSIO "setCurrentIteration" $ prim__setCurrentIteration (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.endTime"
  prim__endTime : AnyPtr -> PrimIO AnyPtr

  export
  endTime : (obj : ComputedEffectTiming) -> JSIO Double
  endTime a =   primToJSIO "endTime" $ prim__endTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endTime  = v}"
  prim__setEndTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndTime : (obj : ComputedEffectTiming) -> (v : Double) -> JSIO ()
  setEndTime a b =
    primToJSIO "setEndTime" $ prim__setEndTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.localTime"
  prim__localTime : AnyPtr -> PrimIO AnyPtr

  export
  localTime : (obj : ComputedEffectTiming) -> JSIO (Maybe Double)
  localTime a =   primToJSIO "localTime" $ prim__localTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.localTime  = v}"
  prim__setLocalTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLocalTime : (obj : ComputedEffectTiming) -> (v : Maybe Double) -> JSIO ()
  setLocalTime a b =
    primToJSIO "setLocalTime" $ prim__setLocalTime (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.progress"
  prim__progress : AnyPtr -> PrimIO AnyPtr

  export
  progress : (obj : ComputedEffectTiming) -> JSIO (Maybe Double)
  progress a =   primToJSIO "progress" $ prim__progress (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.progress  = v}"
  prim__setProgress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setProgress : (obj : ComputedEffectTiming) -> (v : Maybe Double) -> JSIO ()
  setProgress a b =
    primToJSIO "setProgress" $ prim__setProgress (toJS a) (toJS b)

namespace DocumentTimelineOptions
  
  public export
  JSType DocumentTimelineOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.originTime"
  prim__originTime : AnyPtr -> PrimIO AnyPtr

  export
  originTime : (obj : DocumentTimelineOptions) -> JSIO DOMHighResTimeStamp
  originTime a =   primToJSIO "originTime" $ prim__originTime (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.originTime  = v}"
  prim__setOriginTime : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOriginTime :  (obj : DocumentTimelineOptions)
                -> (v : DOMHighResTimeStamp)
                -> JSIO ()
  setOriginTime a b =
    primToJSIO "setOriginTime" $ prim__setOriginTime (toJS a) (toJS b)

namespace EffectTiming
  
  public export
  JSType EffectTiming where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  export
  delay : (obj : EffectTiming) -> JSIO Double
  delay a =   primToJSIO "delay" $ prim__delay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.delay  = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelay : (obj : EffectTiming) -> (v : Double) -> JSIO ()
  setDelay a b =   primToJSIO "setDelay" $ prim__setDelay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : EffectTiming) -> JSIO PlaybackDirection
  direction a =   primToJSIO "direction" $ prim__direction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection : (obj : EffectTiming) -> (v : PlaybackDirection) -> JSIO ()
  setDirection a b =
    primToJSIO "setDirection" $ prim__setDirection (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : EffectTiming) -> JSIO (NS I [ Double , String ])
  duration a =   primToJSIO "duration" $ prim__duration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration :  (obj : EffectTiming)
              -> (v : NS I [ Double , String ])
              -> JSIO ()
  setDuration a b =
    primToJSIO "setDuration" $ prim__setDuration (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : EffectTiming) -> JSIO String
  easing a =   primToJSIO "easing" $ prim__easing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : EffectTiming) -> (v : String) -> JSIO ()
  setEasing a b =   primToJSIO "setEasing" $ prim__setEasing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  export
  endDelay : (obj : EffectTiming) -> JSIO Double
  endDelay a =   primToJSIO "endDelay" $ prim__endDelay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endDelay  = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndDelay : (obj : EffectTiming) -> (v : Double) -> JSIO ()
  setEndDelay a b =
    primToJSIO "setEndDelay" $ prim__setEndDelay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : EffectTiming) -> JSIO FillMode
  fill a =   primToJSIO "fill" $ prim__fill (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : EffectTiming) -> (v : FillMode) -> JSIO ()
  setFill a b =   primToJSIO "setFill" $ prim__setFill (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  export
  iterationStart : (obj : EffectTiming) -> JSIO Double
  iterationStart a =
    primToJSIO "iterationStart" $ prim__iterationStart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterationStart  = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationStart : (obj : EffectTiming) -> (v : Double) -> JSIO ()
  setIterationStart a b =
    primToJSIO "setIterationStart" $ prim__setIterationStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  export
  iterations : (obj : EffectTiming) -> JSIO Double
  iterations a =   primToJSIO "iterations" $ prim__iterations (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterations  = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterations : (obj : EffectTiming) -> (v : Double) -> JSIO ()
  setIterations a b =
    primToJSIO "setIterations" $ prim__setIterations (toJS a) (toJS b)

namespace KeyframeAnimationOptions
  
  public export
  JSType KeyframeAnimationOptions where
    parents =  [ KeyframeEffectOptions , EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : KeyframeAnimationOptions) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.id  = v}"
  prim__setId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setId : (obj : KeyframeAnimationOptions) -> (v : String) -> JSIO ()
  setId a b =   primToJSIO "setId" $ prim__setId (toJS a) (toJS b)

namespace KeyframeEffectOptions
  
  public export
  JSType KeyframeEffectOptions where
    parents =  [ EffectTiming , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.composite"
  prim__composite : AnyPtr -> PrimIO AnyPtr

  export
  composite : (obj : KeyframeEffectOptions) -> JSIO CompositeOperation
  composite a =   primToJSIO "composite" $ prim__composite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.composite  = v}"
  prim__setComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setComposite :  (obj : KeyframeEffectOptions)
               -> (v : CompositeOperation)
               -> JSIO ()
  setComposite a b =
    primToJSIO "setComposite" $ prim__setComposite (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterationComposite"
  prim__iterationComposite : AnyPtr -> PrimIO AnyPtr

  export
  iterationComposite :  (obj : KeyframeEffectOptions)
                     -> JSIO IterationCompositeOperation
  iterationComposite a =
    primToJSIO "iterationComposite" $ prim__iterationComposite (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterationComposite  = v}"
  prim__setIterationComposite : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationComposite :  (obj : KeyframeEffectOptions)
                        -> (v : IterationCompositeOperation)
                        -> JSIO ()
  setIterationComposite a b =
    primToJSIO "setIterationComposite" $ prim__setIterationComposite (toJS a)
                                                                     (toJS b)

namespace OptionalEffectTiming
  
  public export
  JSType OptionalEffectTiming where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.delay"
  prim__delay : AnyPtr -> PrimIO AnyPtr

  export
  delay : (obj : OptionalEffectTiming) -> JSIO Double
  delay a =   primToJSIO "delay" $ prim__delay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.delay  = v}"
  prim__setDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDelay : (obj : OptionalEffectTiming) -> (v : Double) -> JSIO ()
  setDelay a b =   primToJSIO "setDelay" $ prim__setDelay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : AnyPtr -> PrimIO AnyPtr

  export
  direction : (obj : OptionalEffectTiming) -> JSIO PlaybackDirection
  direction a =   primToJSIO "direction" $ prim__direction (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.direction  = v}"
  prim__setDirection : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDirection :  (obj : OptionalEffectTiming)
               -> (v : PlaybackDirection)
               -> JSIO ()
  setDirection a b =
    primToJSIO "setDirection" $ prim__setDirection (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.duration"
  prim__duration : AnyPtr -> PrimIO AnyPtr

  export
  duration : (obj : OptionalEffectTiming) -> JSIO (NS I [ Double , String ])
  duration a =   primToJSIO "duration" $ prim__duration (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.duration  = v}"
  prim__setDuration : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDuration :  (obj : OptionalEffectTiming)
              -> (v : NS I [ Double , String ])
              -> JSIO ()
  setDuration a b =
    primToJSIO "setDuration" $ prim__setDuration (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.easing"
  prim__easing : AnyPtr -> PrimIO AnyPtr

  export
  easing : (obj : OptionalEffectTiming) -> JSIO String
  easing a =   primToJSIO "easing" $ prim__easing (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.easing  = v}"
  prim__setEasing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEasing : (obj : OptionalEffectTiming) -> (v : String) -> JSIO ()
  setEasing a b =   primToJSIO "setEasing" $ prim__setEasing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.endDelay"
  prim__endDelay : AnyPtr -> PrimIO AnyPtr

  export
  endDelay : (obj : OptionalEffectTiming) -> JSIO Double
  endDelay a =   primToJSIO "endDelay" $ prim__endDelay (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.endDelay  = v}"
  prim__setEndDelay : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEndDelay : (obj : OptionalEffectTiming) -> (v : Double) -> JSIO ()
  setEndDelay a b =
    primToJSIO "setEndDelay" $ prim__setEndDelay (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : OptionalEffectTiming) -> JSIO FillMode
  fill a =   primToJSIO "fill" $ prim__fill (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : OptionalEffectTiming) -> (v : FillMode) -> JSIO ()
  setFill a b =   primToJSIO "setFill" $ prim__setFill (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterationStart"
  prim__iterationStart : AnyPtr -> PrimIO AnyPtr

  export
  iterationStart : (obj : OptionalEffectTiming) -> JSIO Double
  iterationStart a =
    primToJSIO "iterationStart" $ prim__iterationStart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterationStart  = v}"
  prim__setIterationStart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterationStart : (obj : OptionalEffectTiming) -> (v : Double) -> JSIO ()
  setIterationStart a b =
    primToJSIO "setIterationStart" $ prim__setIterationStart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.iterations"
  prim__iterations : AnyPtr -> PrimIO AnyPtr

  export
  iterations : (obj : OptionalEffectTiming) -> JSIO Double
  iterations a =   primToJSIO "iterations" $ prim__iterations (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.iterations  = v}"
  prim__setIterations : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIterations : (obj : OptionalEffectTiming) -> (v : Double) -> JSIO ()
  setIterations a b =
    primToJSIO "setIterations" $ prim__setIterations (toJS a) (toJS b)

