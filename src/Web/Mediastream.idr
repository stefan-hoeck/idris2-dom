module Web.Mediastream
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  public export
  JSType ConstrainablePattern where
    parents =  [ JSObject ]

    mixins =  []

namespace InputDeviceInfo
  
  public export
  JSType InputDeviceInfo where
    parents =  [ MediaDeviceInfo , JSObject ]

    mixins =  []

namespace MediaDeviceInfo
  
  public export
  JSType MediaDeviceInfo where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaDeviceInfo) -> JSIO String
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaDeviceInfo) -> JSIO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : MediaDeviceInfo) -> JSIO MediaDeviceKind
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : MediaDeviceInfo) -> JSIO String

namespace MediaDevices
  
  public export
  JSType MediaDevices where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ondevicechange"
  prim__ondevicechange : AnyPtr -> PrimIO AnyPtr

  export
  ondevicechange : (obj : MediaDevices) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondevicechange  = v}"
  prim__setOndevicechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndevicechange : (obj : MediaDevices) -> (v : EventHandler) -> JSIO ()

namespace MediaStream
  
  public export
  JSType MediaStream where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr

  export
  active : (obj : MediaStream) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : MediaStream) -> JSIO String
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : MediaStream) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : MediaStream) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : MediaStream) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : MediaStream) -> (v : EventHandler) -> JSIO ()

namespace MediaStreamTrack
  
  public export
  JSType MediaStreamTrack where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : MediaStreamTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : MediaStreamTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : MediaStreamTrack) -> JSIO String
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr

  export
  muted : (obj : MediaStreamTrack) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : MediaStreamTrack) -> JSIO MediaStreamTrackState
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : MediaStreamTrack) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : MediaStreamTrack) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  export
  onended : (obj : MediaStreamTrack) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onended  = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnended : (obj : MediaStreamTrack) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onmute"
  prim__onmute : AnyPtr -> PrimIO AnyPtr

  export
  onmute : (obj : MediaStreamTrack) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmute  = v}"
  prim__setOnmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmute : (obj : MediaStreamTrack) -> (v : EventHandler) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.onunmute"
  prim__onunmute : AnyPtr -> PrimIO AnyPtr

  export
  onunmute : (obj : MediaStreamTrack) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onunmute  = v}"
  prim__setOnunmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunmute : (obj : MediaStreamTrack) -> (v : EventHandler) -> JSIO ()

namespace MediaStreamTrackEvent
  
  public export
  JSType MediaStreamTrackEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : MediaStreamTrackEvent) -> JSIO MediaStreamTrack

namespace OverconstrainedError
  
  public export
  JSType OverconstrainedError where
    parents =  [ DOMException , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.constraint"
  prim__constraint : AnyPtr -> PrimIO AnyPtr

  export
  constraint : (obj : OverconstrainedError) -> JSIO String


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  public export
  JSType Capabilities where
    parents =  [ JSObject ]

    mixins =  []

namespace ConstrainBooleanParameters
  
  public export
  JSType ConstrainBooleanParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainBooleanParameters) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainBooleanParameters) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainBooleanParameters) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainBooleanParameters) -> (v : Bool) -> JSIO ()

namespace ConstrainDOMStringParameters
  
  public export
  JSType ConstrainDOMStringParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact :  (obj : ConstrainDOMStringParameters)
        -> JSIO (NS I [ String , JSArray String ])

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact :  (obj : ConstrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal :  (obj : ConstrainDOMStringParameters)
        -> JSIO (NS I [ String , JSArray String ])

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal :  (obj : ConstrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> JSIO ()

namespace ConstrainDoubleRange
  
  public export
  JSType ConstrainDoubleRange where
    parents =  [ DoubleRange , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainDoubleRange) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainDoubleRange) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainDoubleRange) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainDoubleRange) -> (v : Double) -> JSIO ()

namespace ConstrainULongRange
  
  public export
  JSType ConstrainULongRange where
    parents =  [ ULongRange , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainULongRange) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainULongRange) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainULongRange) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainULongRange) -> (v : UInt32) -> JSIO ()

namespace ConstraintSet
  
  public export
  JSType ConstraintSet where
    parents =  [ JSObject ]

    mixins =  []

namespace Constraints
  
  public export
  JSType Constraints where
    parents =  [ ConstraintSet , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  export
  advanced : (obj : Constraints) -> JSIO (JSArray ConstraintSet)

  %foreign "browser:lambda:(x,v)=>{x.advanced  = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAdvanced : (obj : Constraints) -> (v : JSArray ConstraintSet) -> JSIO ()

namespace DoubleRange
  
  public export
  JSType DoubleRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : DoubleRange) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : DoubleRange) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : DoubleRange) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : DoubleRange) -> (v : Double) -> JSIO ()

namespace MediaStreamConstraints
  
  public export
  JSType MediaStreamConstraints where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.audio"
  prim__audio : AnyPtr -> PrimIO AnyPtr

  export
  audio :  (obj : MediaStreamConstraints)
        -> JSIO (NS I [ Bool , MediaTrackConstraints ])

  %foreign "browser:lambda:(x,v)=>{x.audio  = v}"
  prim__setAudio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAudio :  (obj : MediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> JSIO ()
  
  %foreign "browser:lambda:x=>x.video"
  prim__video : AnyPtr -> PrimIO AnyPtr

  export
  video :  (obj : MediaStreamConstraints)
        -> JSIO (NS I [ Bool , MediaTrackConstraints ])

  %foreign "browser:lambda:(x,v)=>{x.video  = v}"
  prim__setVideo : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVideo :  (obj : MediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> JSIO ()

namespace MediaStreamTrackEventInit
  
  public export
  JSType MediaStreamTrackEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : MediaStreamTrackEventInit) -> JSIO MediaStreamTrack

  %foreign "browser:lambda:(x,v)=>{x.track  = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrack :  (obj : MediaStreamTrackEventInit)
           -> (v : MediaStreamTrack)
           -> JSIO ()

namespace MediaTrackCapabilities
  
  public export
  JSType MediaTrackCapabilities where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackCapabilities) -> JSIO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio :  (obj : MediaTrackCapabilities)
                 -> (v : DoubleRange)
                 -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackCapabilities) -> JSIO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackCapabilities)
                     -> (v : JSArray Bool)
                     -> JSIO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackCapabilities) -> JSIO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount :  (obj : MediaTrackCapabilities)
                  -> (v : ULongRange)
                  -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackCapabilities) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackCapabilities) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackCapabilities) -> JSIO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackCapabilities) -> JSIO (JSArray String)

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode :  (obj : MediaTrackCapabilities)
                -> (v : JSArray String)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackCapabilities) -> JSIO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackCapabilities) -> (v : DoubleRange) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackCapabilities) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackCapabilities) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackCapabilities) -> JSIO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackCapabilities) -> JSIO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackCapabilities) -> (v : DoubleRange) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackCapabilities) -> JSIO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackCapabilities) -> JSIO (JSArray String)

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode :  (obj : MediaTrackCapabilities)
                -> (v : JSArray String)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackCapabilities) -> JSIO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackCapabilities) -> JSIO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackCapabilities) -> JSIO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> JSIO ()

namespace MediaTrackConstraintSet
  
  public export
  JSType MediaTrackConstraintSet where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio :  (obj : MediaTrackConstraintSet)
                 -> (v : ConstrainDouble)
                 -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackConstraintSet) -> JSIO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackConstraintSet)
                     -> (v : ConstrainBoolean)
                     -> JSIO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackConstraintSet) -> JSIO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount :  (obj : MediaTrackConstraintSet)
                  -> (v : ConstrainULong)
                  -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId :  (obj : MediaTrackConstraintSet)
              -> (v : ConstrainDOMString)
              -> JSIO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackConstraintSet) -> JSIO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackConstraintSet)
                      -> (v : ConstrainBoolean)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainDOMString)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate :  (obj : MediaTrackConstraintSet)
               -> (v : ConstrainDouble)
               -> JSIO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId :  (obj : MediaTrackConstraintSet)
             -> (v : ConstrainDOMString)
             -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackConstraintSet) -> JSIO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackConstraintSet) -> (v : ConstrainULong) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency :  (obj : MediaTrackConstraintSet)
             -> (v : ConstrainDouble)
             -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackConstraintSet) -> JSIO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackConstraintSet)
                      -> (v : ConstrainBoolean)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackConstraintSet) -> JSIO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainDOMString)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackConstraintSet) -> JSIO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainULong)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackConstraintSet) -> JSIO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainULong)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackConstraintSet) -> JSIO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackConstraintSet) -> (v : ConstrainULong) -> JSIO ()

namespace MediaTrackConstraints
  
  public export
  JSType MediaTrackConstraints where
    parents =  [ MediaTrackConstraintSet , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  export
  advanced :  (obj : MediaTrackConstraints)
           -> JSIO (JSArray MediaTrackConstraintSet)

  %foreign "browser:lambda:(x,v)=>{x.advanced  = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAdvanced :  (obj : MediaTrackConstraints)
              -> (v : JSArray MediaTrackConstraintSet)
              -> JSIO ()

namespace MediaTrackSettings
  
  public export
  JSType MediaTrackSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackSettings) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio : (obj : MediaTrackSettings) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl : (obj : MediaTrackSettings) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackSettings) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount : (obj : MediaTrackSettings) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackSettings) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackSettings) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation : (obj : MediaTrackSettings) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackSettings) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode : (obj : MediaTrackSettings) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackSettings) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackSettings) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackSettings) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackSettings) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackSettings) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackSettings) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackSettings) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackSettings) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackSettings) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression : (obj : MediaTrackSettings) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackSettings) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode : (obj : MediaTrackSettings) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackSettings) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate : (obj : MediaTrackSettings) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackSettings) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize : (obj : MediaTrackSettings) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackSettings) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackSettings) -> (v : Int32) -> JSIO ()

namespace MediaTrackSupportedConstraints
  
  public export
  JSType MediaTrackSupportedConstraints where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio :  (obj : MediaTrackSupportedConstraints)
                 -> (v : Bool)
                 -> JSIO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackSupportedConstraints)
                     -> (v : Bool)
                     -> JSIO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount :  (obj : MediaTrackSupportedConstraints)
                  -> (v : Bool)
                  -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode :  (obj : MediaTrackSupportedConstraints)
                -> (v : Bool)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> JSIO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode :  (obj : MediaTrackSupportedConstraints)
                -> (v : Bool)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate :  (obj : MediaTrackSupportedConstraints)
                -> (v : Bool)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize :  (obj : MediaTrackSupportedConstraints)
                -> (v : Bool)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackSupportedConstraints) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> JSIO ()

namespace Settings
  
  public export
  JSType Settings where
    parents =  [ JSObject ]

    mixins =  []

namespace ULongRange
  
  public export
  JSType ULongRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : ULongRange) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : ULongRange) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : ULongRange) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : ULongRange) -> (v : UInt32) -> JSIO ()

