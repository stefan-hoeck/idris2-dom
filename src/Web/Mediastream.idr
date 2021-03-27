module Web.Mediastream
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  public export
  JSVal ConstrainablePattern where
    parents =  [ JSObject ]

    mixins =  []

namespace InputDeviceInfo
  
  public export
  JSVal InputDeviceInfo where
    parents =  [ MediaDeviceInfo , JSObject ]

    mixins =  []

namespace MediaDeviceInfo
  
  public export
  JSVal MediaDeviceInfo where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaDeviceInfo) -> IO String
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaDeviceInfo) -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : MediaDeviceInfo) -> IO MediaDeviceKind
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : MediaDeviceInfo) -> IO String

namespace MediaDevices
  
  public export
  JSVal MediaDevices where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ondevicechange"
  prim__ondevicechange : AnyPtr -> PrimIO AnyPtr

  export
  ondevicechange : (obj : MediaDevices) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ondevicechange  = v}"
  prim__setOndevicechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOndevicechange : (obj : MediaDevices) -> (v : EventHandler) -> IO ()

namespace MediaStream
  
  public export
  JSVal MediaStream where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr

  export
  active : (obj : MediaStream) -> IO Bool
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : MediaStream) -> IO String
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  export
  onaddtrack : (obj : MediaStream) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack  = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnaddtrack : (obj : MediaStream) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  export
  onremovetrack : (obj : MediaStream) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack  = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnremovetrack : (obj : MediaStream) -> (v : EventHandler) -> IO ()

namespace MediaStreamTrack
  
  public export
  JSVal MediaStreamTrack where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : MediaStreamTrack) -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr

  export
  kind : (obj : MediaStreamTrack) -> IO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

  export
  label : (obj : MediaStreamTrack) -> IO String
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr

  export
  muted : (obj : MediaStreamTrack) -> IO Bool
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : MediaStreamTrack) -> IO MediaStreamTrackState
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : MediaStreamTrack) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : MediaStreamTrack) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  export
  onended : (obj : MediaStreamTrack) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onended  = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnended : (obj : MediaStreamTrack) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onmute"
  prim__onmute : AnyPtr -> PrimIO AnyPtr

  export
  onmute : (obj : MediaStreamTrack) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmute  = v}"
  prim__setOnmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmute : (obj : MediaStreamTrack) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onunmute"
  prim__onunmute : AnyPtr -> PrimIO AnyPtr

  export
  onunmute : (obj : MediaStreamTrack) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onunmute  = v}"
  prim__setOnunmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnunmute : (obj : MediaStreamTrack) -> (v : EventHandler) -> IO ()

namespace MediaStreamTrackEvent
  
  public export
  JSVal MediaStreamTrackEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : MediaStreamTrackEvent) -> IO MediaStreamTrack

namespace OverconstrainedError
  
  public export
  JSVal OverconstrainedError where
    parents =  [ DOMException , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.constraint"
  prim__constraint : AnyPtr -> PrimIO AnyPtr

  export
  constraint : (obj : OverconstrainedError) -> IO String


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  public export
  JSVal Capabilities where
    parents =  [ JSObject ]

    mixins =  []

namespace ConstrainBooleanParameters
  
  public export
  JSVal ConstrainBooleanParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainBooleanParameters) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainBooleanParameters) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainBooleanParameters) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainBooleanParameters) -> (v : Bool) -> IO ()

namespace ConstrainDOMStringParameters
  
  public export
  JSVal ConstrainDOMStringParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact :  (obj : ConstrainDOMStringParameters)
        -> IO (NS I [ String , JSArray String ])

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact :  (obj : ConstrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal :  (obj : ConstrainDOMStringParameters)
        -> IO (NS I [ String , JSArray String ])

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal :  (obj : ConstrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> IO ()

namespace ConstrainDoubleRange
  
  public export
  JSVal ConstrainDoubleRange where
    parents =  [ DoubleRange , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainDoubleRange) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainDoubleRange) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainDoubleRange) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainDoubleRange) -> (v : Double) -> IO ()

namespace ConstrainULongRange
  
  public export
  JSVal ConstrainULongRange where
    parents =  [ ULongRange , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  export
  exact : (obj : ConstrainULongRange) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.exact  = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setExact : (obj : ConstrainULongRange) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  export
  ideal : (obj : ConstrainULongRange) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.ideal  = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIdeal : (obj : ConstrainULongRange) -> (v : UInt32) -> IO ()

namespace ConstraintSet
  
  public export
  JSVal ConstraintSet where
    parents =  [ JSObject ]

    mixins =  []

namespace Constraints
  
  public export
  JSVal Constraints where
    parents =  [ ConstraintSet , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  export
  advanced : (obj : Constraints) -> IO (JSArray ConstraintSet)

  %foreign "browser:lambda:(x,v)=>{x.advanced  = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAdvanced : (obj : Constraints) -> (v : JSArray ConstraintSet) -> IO ()

namespace DoubleRange
  
  public export
  JSVal DoubleRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : DoubleRange) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : DoubleRange) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : DoubleRange) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : DoubleRange) -> (v : Double) -> IO ()

namespace MediaStreamConstraints
  
  public export
  JSVal MediaStreamConstraints where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.audio"
  prim__audio : AnyPtr -> PrimIO AnyPtr

  export
  audio :  (obj : MediaStreamConstraints)
        -> IO (NS I [ Bool , MediaTrackConstraints ])

  %foreign "browser:lambda:(x,v)=>{x.audio  = v}"
  prim__setAudio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAudio :  (obj : MediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> IO ()
  
  %foreign "browser:lambda:x=>x.video"
  prim__video : AnyPtr -> PrimIO AnyPtr

  export
  video :  (obj : MediaStreamConstraints)
        -> IO (NS I [ Bool , MediaTrackConstraints ])

  %foreign "browser:lambda:(x,v)=>{x.video  = v}"
  prim__setVideo : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setVideo :  (obj : MediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> IO ()

namespace MediaStreamTrackEventInit
  
  public export
  JSVal MediaStreamTrackEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  export
  track : (obj : MediaStreamTrackEventInit) -> IO MediaStreamTrack

  %foreign "browser:lambda:(x,v)=>{x.track  = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTrack :  (obj : MediaStreamTrackEventInit)
           -> (v : MediaStreamTrack)
           -> IO ()

namespace MediaTrackCapabilities
  
  public export
  JSVal MediaTrackCapabilities where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackCapabilities) -> IO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio : (obj : MediaTrackCapabilities) -> (v : DoubleRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackCapabilities) -> IO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackCapabilities)
                     -> (v : JSArray Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackCapabilities) -> IO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackCapabilities) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackCapabilities) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackCapabilities) -> IO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackCapabilities) -> IO (JSArray String)

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode :  (obj : MediaTrackCapabilities)
                -> (v : JSArray String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackCapabilities) -> IO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackCapabilities) -> (v : DoubleRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackCapabilities) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackCapabilities) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackCapabilities) -> IO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackCapabilities) -> IO DoubleRange

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackCapabilities) -> (v : DoubleRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackCapabilities) -> IO (JSArray Bool)

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackCapabilities) -> IO (JSArray String)

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode :  (obj : MediaTrackCapabilities)
                -> (v : JSArray String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackCapabilities) -> IO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackCapabilities) -> IO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackCapabilities) -> IO ULongRange

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackCapabilities) -> (v : ULongRange) -> IO ()

namespace MediaTrackConstraintSet
  
  public export
  JSVal MediaTrackConstraintSet where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackConstraintSet) -> IO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio :  (obj : MediaTrackConstraintSet)
                 -> (v : ConstrainDouble)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackConstraintSet) -> IO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackConstraintSet)
                     -> (v : ConstrainBoolean)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackConstraintSet) -> IO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount :  (obj : MediaTrackConstraintSet)
                  -> (v : ConstrainULong)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackConstraintSet) -> IO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId :  (obj : MediaTrackConstraintSet)
              -> (v : ConstrainDOMString)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackConstraintSet) -> IO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackConstraintSet)
                      -> (v : ConstrainBoolean)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackConstraintSet) -> IO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainDOMString)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackConstraintSet) -> IO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate :  (obj : MediaTrackConstraintSet)
               -> (v : ConstrainDouble)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackConstraintSet) -> IO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId :  (obj : MediaTrackConstraintSet)
             -> (v : ConstrainDOMString)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackConstraintSet) -> IO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackConstraintSet) -> (v : ConstrainULong) -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackConstraintSet) -> IO ConstrainDouble

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackConstraintSet) -> (v : ConstrainDouble) -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackConstraintSet) -> IO ConstrainBoolean

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackConstraintSet)
                      -> (v : ConstrainBoolean)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackConstraintSet) -> IO ConstrainDOMString

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainDOMString)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackConstraintSet) -> IO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainULong)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackConstraintSet) -> IO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize :  (obj : MediaTrackConstraintSet)
                -> (v : ConstrainULong)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackConstraintSet) -> IO ConstrainULong

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackConstraintSet) -> (v : ConstrainULong) -> IO ()

namespace MediaTrackConstraints
  
  public export
  JSVal MediaTrackConstraints where
    parents =  [ MediaTrackConstraintSet , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  export
  advanced :  (obj : MediaTrackConstraints)
           -> IO (JSArray MediaTrackConstraintSet)

  %foreign "browser:lambda:(x,v)=>{x.advanced  = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAdvanced :  (obj : MediaTrackConstraints)
              -> (v : JSArray MediaTrackConstraintSet)
              -> IO ()

namespace MediaTrackSettings
  
  public export
  JSVal MediaTrackSettings where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackSettings) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio : (obj : MediaTrackSettings) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackSettings) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl : (obj : MediaTrackSettings) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackSettings) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount : (obj : MediaTrackSettings) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackSettings) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackSettings) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackSettings) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation : (obj : MediaTrackSettings) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackSettings) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode : (obj : MediaTrackSettings) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackSettings) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackSettings) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackSettings) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackSettings) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackSettings) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackSettings) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackSettings) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackSettings) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackSettings) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression : (obj : MediaTrackSettings) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackSettings) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode : (obj : MediaTrackSettings) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackSettings) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate : (obj : MediaTrackSettings) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackSettings) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize : (obj : MediaTrackSettings) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackSettings) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackSettings) -> (v : Int32) -> IO ()

namespace MediaTrackSupportedConstraints
  
  public export
  JSVal MediaTrackSupportedConstraints where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  aspectRatio : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio  = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAspectRatio : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  export
  autoGainControl : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl  = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAutoGainControl :  (obj : MediaTrackSupportedConstraints)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  export
  channelCount : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.channelCount  = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setChannelCount :  (obj : MediaTrackSupportedConstraints)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  export
  echoCancellation : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation  = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEchoCancellation :  (obj : MediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  export
  facingMode : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.facingMode  = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFacingMode : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  export
  frameRate : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.frameRate  = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFrameRate : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  export
  groupId : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.groupId  = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setGroupId : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  export
  latency : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.latency  = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLatency : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  export
  noiseSuppression : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression  = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setNoiseSuppression :  (obj : MediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  export
  resizeMode : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.resizeMode  = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResizeMode : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  export
  sampleRate : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.sampleRate  = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleRate : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  export
  sampleSize : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.sampleSize  = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSampleSize : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : MediaTrackSupportedConstraints) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : MediaTrackSupportedConstraints) -> (v : Bool) -> IO ()

namespace Settings
  
  public export
  JSVal Settings where
    parents =  [ JSObject ]

    mixins =  []

namespace ULongRange
  
  public export
  JSVal ULongRange where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  export
  max : (obj : ULongRange) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.max  = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMax : (obj : ULongRange) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  export
  min : (obj : ULongRange) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.min  = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMin : (obj : ULongRange) -> (v : UInt32) -> IO ()

