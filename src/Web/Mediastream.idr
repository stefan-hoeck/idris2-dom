module Web.Mediastream
 
import JS
import Web.Internal.MediastreamPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  public export
  JSType ConstrainablePattern where
    parents =  [ Object ]

    mixins =  []
  
  export
  applyConstraints :  (obj : ConstrainablePattern)
                   -> (constraints : UndefOr Constraints)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS $ ConstrainablePattern.prim__applyConstraints a
                                                                              b
  
  export
  getCapabilities : (obj : ConstrainablePattern) -> JSIO Capabilities
  getCapabilities a = primJS $ ConstrainablePattern.prim__getCapabilities a
  
  export
  getConstraints : (obj : ConstrainablePattern) -> JSIO Constraints
  getConstraints a = primJS $ ConstrainablePattern.prim__getConstraints a
  
  export
  getSettings : (obj : ConstrainablePattern) -> JSIO Settings
  getSettings a = primJS $ ConstrainablePattern.prim__getSettings a

namespace InputDeviceInfo
  
  public export
  JSType InputDeviceInfo where
    parents =  [ MediaDeviceInfo , Object ]

    mixins =  []
  
  export
  getCapabilities : (obj : InputDeviceInfo) -> JSIO MediaTrackCapabilities
  getCapabilities a = primJS $ InputDeviceInfo.prim__getCapabilities a

namespace MediaDeviceInfo
  
  public export
  JSType MediaDeviceInfo where
    parents =  [ Object ]

    mixins =  []
  
  export
  deviceId : (obj : MediaDeviceInfo) -> JSIO String
  deviceId a = primJS $ MediaDeviceInfo.prim__deviceId a
  
  export
  groupId : (obj : MediaDeviceInfo) -> JSIO String
  groupId a = primJS $ MediaDeviceInfo.prim__groupId a
  
  export
  kind : (obj : MediaDeviceInfo) -> JSIO MediaDeviceKind
  kind a = primJS $ MediaDeviceInfo.prim__kind a
  
  export
  label : (obj : MediaDeviceInfo) -> JSIO String
  label a = primJS $ MediaDeviceInfo.prim__label a
  
  export
  toJSON : (obj : MediaDeviceInfo) -> JSIO Object
  toJSON a = primJS $ MediaDeviceInfo.prim__toJSON a

namespace MediaDevices
  
  public export
  JSType MediaDevices where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  ondevicechange : (obj : MediaDevices) -> JSIO EventHandler
  ondevicechange a = primJS $ MediaDevices.prim__ondevicechange a
  
  export
  setOndevicechange : (obj : MediaDevices) -> (value : EventHandler) -> JSIO ()
  setOndevicechange a b = primJS $ MediaDevices.prim__setOndevicechange a b
  
  export
  enumerateDevices :  (obj : MediaDevices)
                   -> JSIO (Promise (Array MediaDeviceInfo))
  enumerateDevices a = primJS $ MediaDevices.prim__enumerateDevices a
  
  export
  getSupportedConstraints :  (obj : MediaDevices)
                          -> JSIO MediaTrackSupportedConstraints
  getSupportedConstraints a = primJS $ MediaDevices.prim__getSupportedConstraints a
  
  export
  getUserMedia :  (obj : MediaDevices)
               -> (constraints : UndefOr MediaStreamConstraints)
               -> JSIO (Promise MediaStream)
  getUserMedia a b = primJS $ MediaDevices.prim__getUserMedia a b

namespace MediaStream
  
  public export
  JSType MediaStream where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  new : JSIO MediaStream
  new = primJS $ MediaStream.prim__new 
  
  export
  new1 : (stream : MediaStream) -> JSIO MediaStream
  new1 a = primJS $ MediaStream.prim__new1 a
  
  export
  new2 : (tracks : Array MediaStreamTrack) -> JSIO MediaStream
  new2 a = primJS $ MediaStream.prim__new2 a
  
  export
  active : (obj : MediaStream) -> JSIO Boolean
  active a = primJS $ MediaStream.prim__active a
  
  export
  id : (obj : MediaStream) -> JSIO String
  id a = primJS $ MediaStream.prim__id a
  
  export
  onaddtrack : (obj : MediaStream) -> JSIO EventHandler
  onaddtrack a = primJS $ MediaStream.prim__onaddtrack a
  
  export
  setOnaddtrack : (obj : MediaStream) -> (value : EventHandler) -> JSIO ()
  setOnaddtrack a b = primJS $ MediaStream.prim__setOnaddtrack a b
  
  export
  onremovetrack : (obj : MediaStream) -> JSIO EventHandler
  onremovetrack a = primJS $ MediaStream.prim__onremovetrack a
  
  export
  setOnremovetrack : (obj : MediaStream) -> (value : EventHandler) -> JSIO ()
  setOnremovetrack a b = primJS $ MediaStream.prim__setOnremovetrack a b
  
  export
  addTrack : (obj : MediaStream) -> (track : MediaStreamTrack) -> JSIO ()
  addTrack a b = primJS $ MediaStream.prim__addTrack a b
  
  export
  clone : (obj : MediaStream) -> JSIO MediaStream
  clone a = primJS $ MediaStream.prim__clone a
  
  export
  getAudioTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
  getAudioTracks a = primJS $ MediaStream.prim__getAudioTracks a
  
  export
  getTrackById :  (obj : MediaStream)
               -> (trackId : String)
               -> JSIO (Nullable MediaStreamTrack)
  getTrackById a b = primJS $ MediaStream.prim__getTrackById a b
  
  export
  getTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
  getTracks a = primJS $ MediaStream.prim__getTracks a
  
  export
  getVideoTracks : (obj : MediaStream) -> JSIO (Array MediaStreamTrack)
  getVideoTracks a = primJS $ MediaStream.prim__getVideoTracks a
  
  export
  removeTrack : (obj : MediaStream) -> (track : MediaStreamTrack) -> JSIO ()
  removeTrack a b = primJS $ MediaStream.prim__removeTrack a b

namespace MediaStreamTrack
  
  public export
  JSType MediaStreamTrack where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  enabled : (obj : MediaStreamTrack) -> JSIO Boolean
  enabled a = primJS $ MediaStreamTrack.prim__enabled a
  
  export
  setEnabled : (obj : MediaStreamTrack) -> (value : Boolean) -> JSIO ()
  setEnabled a b = primJS $ MediaStreamTrack.prim__setEnabled a b
  
  export
  id : (obj : MediaStreamTrack) -> JSIO String
  id a = primJS $ MediaStreamTrack.prim__id a
  
  export
  kind : (obj : MediaStreamTrack) -> JSIO String
  kind a = primJS $ MediaStreamTrack.prim__kind a
  
  export
  label : (obj : MediaStreamTrack) -> JSIO String
  label a = primJS $ MediaStreamTrack.prim__label a
  
  export
  muted : (obj : MediaStreamTrack) -> JSIO Boolean
  muted a = primJS $ MediaStreamTrack.prim__muted a
  
  export
  onended : (obj : MediaStreamTrack) -> JSIO EventHandler
  onended a = primJS $ MediaStreamTrack.prim__onended a
  
  export
  setOnended : (obj : MediaStreamTrack) -> (value : EventHandler) -> JSIO ()
  setOnended a b = primJS $ MediaStreamTrack.prim__setOnended a b
  
  export
  onmute : (obj : MediaStreamTrack) -> JSIO EventHandler
  onmute a = primJS $ MediaStreamTrack.prim__onmute a
  
  export
  setOnmute : (obj : MediaStreamTrack) -> (value : EventHandler) -> JSIO ()
  setOnmute a b = primJS $ MediaStreamTrack.prim__setOnmute a b
  
  export
  onunmute : (obj : MediaStreamTrack) -> JSIO EventHandler
  onunmute a = primJS $ MediaStreamTrack.prim__onunmute a
  
  export
  setOnunmute : (obj : MediaStreamTrack) -> (value : EventHandler) -> JSIO ()
  setOnunmute a b = primJS $ MediaStreamTrack.prim__setOnunmute a b
  
  export
  readyState : (obj : MediaStreamTrack) -> JSIO MediaStreamTrackState
  readyState a = primJS $ MediaStreamTrack.prim__readyState a
  
  export
  applyConstraints :  (obj : MediaStreamTrack)
                   -> (constraints : UndefOr MediaTrackConstraints)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS $ MediaStreamTrack.prim__applyConstraints a b
  
  export
  clone : (obj : MediaStreamTrack) -> JSIO MediaStreamTrack
  clone a = primJS $ MediaStreamTrack.prim__clone a
  
  export
  getCapabilities : (obj : MediaStreamTrack) -> JSIO MediaTrackCapabilities
  getCapabilities a = primJS $ MediaStreamTrack.prim__getCapabilities a
  
  export
  getConstraints : (obj : MediaStreamTrack) -> JSIO MediaTrackConstraints
  getConstraints a = primJS $ MediaStreamTrack.prim__getConstraints a
  
  export
  getSettings : (obj : MediaStreamTrack) -> JSIO MediaTrackSettings
  getSettings a = primJS $ MediaStreamTrack.prim__getSettings a
  
  export
  stop : (obj : MediaStreamTrack) -> JSIO ()
  stop a = primJS $ MediaStreamTrack.prim__stop a

namespace MediaStreamTrackEvent
  
  public export
  JSType MediaStreamTrackEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : MediaStreamTrackEventInit)
      -> JSIO MediaStreamTrackEvent
  new a b = primJS $ MediaStreamTrackEvent.prim__new a b
  
  export
  track : (obj : MediaStreamTrackEvent) -> JSIO MediaStreamTrack
  track a = primJS $ MediaStreamTrackEvent.prim__track a

namespace OverconstrainedError
  
  public export
  JSType OverconstrainedError where
    parents =  [ DOMException , Object ]

    mixins =  []
  
  export
  new :  (constraint : String)
      -> (message : UndefOr String)
      -> JSIO OverconstrainedError
  new a b = primJS $ OverconstrainedError.prim__new a b
  
  export
  constraint : (obj : OverconstrainedError) -> JSIO String
  constraint a = primJS $ OverconstrainedError.prim__constraint a


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  public export
  JSType Capabilities where
    parents =  [ Object ]

    mixins =  []

namespace ConstrainBooleanParameters
  
  public export
  JSType ConstrainBooleanParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  exact : (obj : ConstrainBooleanParameters) -> JSIO (UndefOr Boolean)
  exact a = primJS $ ConstrainBooleanParameters.prim__exact a
  
  export
  setExact :  (obj : ConstrainBooleanParameters)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setExact a b = primJS $ ConstrainBooleanParameters.prim__setExact a b
  
  export
  ideal : (obj : ConstrainBooleanParameters) -> JSIO (UndefOr Boolean)
  ideal a = primJS $ ConstrainBooleanParameters.prim__ideal a
  
  export
  setIdeal :  (obj : ConstrainBooleanParameters)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setIdeal a b = primJS $ ConstrainBooleanParameters.prim__setIdeal a b

namespace ConstrainDOMStringParameters
  
  public export
  JSType ConstrainDOMStringParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  exact :  (obj : ConstrainDOMStringParameters)
        -> JSIO (UndefOr (Union2 String (Array String)))
  exact a = primJS $ ConstrainDOMStringParameters.prim__exact a
  
  export
  setExact :  (obj : ConstrainDOMStringParameters)
           -> (value : UndefOr (Union2 String (Array String)))
           -> JSIO ()
  setExact a b = primJS $ ConstrainDOMStringParameters.prim__setExact a b
  
  export
  ideal :  (obj : ConstrainDOMStringParameters)
        -> JSIO (UndefOr (Union2 String (Array String)))
  ideal a = primJS $ ConstrainDOMStringParameters.prim__ideal a
  
  export
  setIdeal :  (obj : ConstrainDOMStringParameters)
           -> (value : UndefOr (Union2 String (Array String)))
           -> JSIO ()
  setIdeal a b = primJS $ ConstrainDOMStringParameters.prim__setIdeal a b

namespace ConstrainDoubleRange
  
  public export
  JSType ConstrainDoubleRange where
    parents =  [ DoubleRange , Object ]

    mixins =  []
  
  export
  exact : (obj : ConstrainDoubleRange) -> JSIO (UndefOr Double)
  exact a = primJS $ ConstrainDoubleRange.prim__exact a
  
  export
  setExact : (obj : ConstrainDoubleRange) -> (value : UndefOr Double) -> JSIO ()
  setExact a b = primJS $ ConstrainDoubleRange.prim__setExact a b
  
  export
  ideal : (obj : ConstrainDoubleRange) -> JSIO (UndefOr Double)
  ideal a = primJS $ ConstrainDoubleRange.prim__ideal a
  
  export
  setIdeal : (obj : ConstrainDoubleRange) -> (value : UndefOr Double) -> JSIO ()
  setIdeal a b = primJS $ ConstrainDoubleRange.prim__setIdeal a b

namespace ConstrainULongRange
  
  public export
  JSType ConstrainULongRange where
    parents =  [ ULongRange , Object ]

    mixins =  []
  
  export
  exact : (obj : ConstrainULongRange) -> JSIO (UndefOr UInt32)
  exact a = primJS $ ConstrainULongRange.prim__exact a
  
  export
  setExact : (obj : ConstrainULongRange) -> (value : UndefOr UInt32) -> JSIO ()
  setExact a b = primJS $ ConstrainULongRange.prim__setExact a b
  
  export
  ideal : (obj : ConstrainULongRange) -> JSIO (UndefOr UInt32)
  ideal a = primJS $ ConstrainULongRange.prim__ideal a
  
  export
  setIdeal : (obj : ConstrainULongRange) -> (value : UndefOr UInt32) -> JSIO ()
  setIdeal a b = primJS $ ConstrainULongRange.prim__setIdeal a b

namespace ConstraintSet
  
  public export
  JSType ConstraintSet where
    parents =  [ Object ]

    mixins =  []

namespace Constraints
  
  public export
  JSType Constraints where
    parents =  [ ConstraintSet , Object ]

    mixins =  []
  
  export
  advanced : (obj : Constraints) -> JSIO (UndefOr (Array ConstraintSet))
  advanced a = primJS $ Constraints.prim__advanced a
  
  export
  setAdvanced :  (obj : Constraints)
              -> (value : UndefOr (Array ConstraintSet))
              -> JSIO ()
  setAdvanced a b = primJS $ Constraints.prim__setAdvanced a b

namespace DoubleRange
  
  public export
  JSType DoubleRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  max : (obj : DoubleRange) -> JSIO (UndefOr Double)
  max a = primJS $ DoubleRange.prim__max a
  
  export
  setMax : (obj : DoubleRange) -> (value : UndefOr Double) -> JSIO ()
  setMax a b = primJS $ DoubleRange.prim__setMax a b
  
  export
  min : (obj : DoubleRange) -> JSIO (UndefOr Double)
  min a = primJS $ DoubleRange.prim__min a
  
  export
  setMin : (obj : DoubleRange) -> (value : UndefOr Double) -> JSIO ()
  setMin a b = primJS $ DoubleRange.prim__setMin a b

namespace MediaStreamConstraints
  
  public export
  JSType MediaStreamConstraints where
    parents =  [ Object ]

    mixins =  []
  
  export
  audio :  (obj : MediaStreamConstraints)
        -> JSIO (UndefOr (Union2 Boolean MediaTrackConstraints))
  audio a = primJS $ MediaStreamConstraints.prim__audio a
  
  export
  setAudio :  (obj : MediaStreamConstraints)
           -> (value : UndefOr (Union2 Boolean MediaTrackConstraints))
           -> JSIO ()
  setAudio a b = primJS $ MediaStreamConstraints.prim__setAudio a b
  
  export
  video :  (obj : MediaStreamConstraints)
        -> JSIO (UndefOr (Union2 Boolean MediaTrackConstraints))
  video a = primJS $ MediaStreamConstraints.prim__video a
  
  export
  setVideo :  (obj : MediaStreamConstraints)
           -> (value : UndefOr (Union2 Boolean MediaTrackConstraints))
           -> JSIO ()
  setVideo a b = primJS $ MediaStreamConstraints.prim__setVideo a b

namespace MediaStreamTrackEventInit
  
  public export
  JSType MediaStreamTrackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  track : (obj : MediaStreamTrackEventInit) -> JSIO MediaStreamTrack
  track a = primJS $ MediaStreamTrackEventInit.prim__track a
  
  export
  setTrack :  (obj : MediaStreamTrackEventInit)
           -> (value : MediaStreamTrack)
           -> JSIO ()
  setTrack a b = primJS $ MediaStreamTrackEventInit.prim__setTrack a b

namespace MediaTrackCapabilities
  
  public export
  JSType MediaTrackCapabilities where
    parents =  [ Object ]

    mixins =  []
  
  export
  aspectRatio : (obj : MediaTrackCapabilities) -> JSIO (UndefOr DoubleRange)
  aspectRatio a = primJS $ MediaTrackCapabilities.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackCapabilities)
                 -> (value : UndefOr DoubleRange)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackCapabilities.prim__setAspectRatio a b
  
  export
  autoGainControl :  (obj : MediaTrackCapabilities)
                  -> JSIO (UndefOr (Array Boolean))
  autoGainControl a = primJS $ MediaTrackCapabilities.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackCapabilities)
                     -> (value : UndefOr (Array Boolean))
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackCapabilities.prim__setAutoGainControl a
                                                                                    b
  
  export
  channelCount : (obj : MediaTrackCapabilities) -> JSIO (UndefOr ULongRange)
  channelCount a = primJS $ MediaTrackCapabilities.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackCapabilities)
                  -> (value : UndefOr ULongRange)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackCapabilities.prim__setChannelCount a
                                                                              b
  
  export
  deviceId : (obj : MediaTrackCapabilities) -> JSIO (UndefOr String)
  deviceId a = primJS $ MediaTrackCapabilities.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackCapabilities)
              -> (value : UndefOr String)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackCapabilities.prim__setDeviceId a b
  
  export
  echoCancellation :  (obj : MediaTrackCapabilities)
                   -> JSIO (UndefOr (Array Boolean))
  echoCancellation a = primJS $ MediaTrackCapabilities.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackCapabilities)
                      -> (value : UndefOr (Array Boolean))
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackCapabilities.prim__setEchoCancellation a
                                                                                      b
  
  export
  facingMode : (obj : MediaTrackCapabilities) -> JSIO (UndefOr (Array String))
  facingMode a = primJS $ MediaTrackCapabilities.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackCapabilities)
                -> (value : UndefOr (Array String))
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackCapabilities.prim__setFacingMode a b
  
  export
  frameRate : (obj : MediaTrackCapabilities) -> JSIO (UndefOr DoubleRange)
  frameRate a = primJS $ MediaTrackCapabilities.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackCapabilities)
               -> (value : UndefOr DoubleRange)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackCapabilities.prim__setFrameRate a b
  
  export
  groupId : (obj : MediaTrackCapabilities) -> JSIO (UndefOr String)
  groupId a = primJS $ MediaTrackCapabilities.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackCapabilities)
             -> (value : UndefOr String)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackCapabilities.prim__setGroupId a b
  
  export
  height : (obj : MediaTrackCapabilities) -> JSIO (UndefOr ULongRange)
  height a = primJS $ MediaTrackCapabilities.prim__height a
  
  export
  setHeight :  (obj : MediaTrackCapabilities)
            -> (value : UndefOr ULongRange)
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackCapabilities.prim__setHeight a b
  
  export
  latency : (obj : MediaTrackCapabilities) -> JSIO (UndefOr DoubleRange)
  latency a = primJS $ MediaTrackCapabilities.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackCapabilities)
             -> (value : UndefOr DoubleRange)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackCapabilities.prim__setLatency a b
  
  export
  noiseSuppression :  (obj : MediaTrackCapabilities)
                   -> JSIO (UndefOr (Array Boolean))
  noiseSuppression a = primJS $ MediaTrackCapabilities.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackCapabilities)
                      -> (value : UndefOr (Array Boolean))
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackCapabilities.prim__setNoiseSuppression a
                                                                                      b
  
  export
  resizeMode : (obj : MediaTrackCapabilities) -> JSIO (UndefOr (Array String))
  resizeMode a = primJS $ MediaTrackCapabilities.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackCapabilities)
                -> (value : UndefOr (Array String))
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackCapabilities.prim__setResizeMode a b
  
  export
  sampleRate : (obj : MediaTrackCapabilities) -> JSIO (UndefOr ULongRange)
  sampleRate a = primJS $ MediaTrackCapabilities.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackCapabilities)
                -> (value : UndefOr ULongRange)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackCapabilities.prim__setSampleRate a b
  
  export
  sampleSize : (obj : MediaTrackCapabilities) -> JSIO (UndefOr ULongRange)
  sampleSize a = primJS $ MediaTrackCapabilities.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackCapabilities)
                -> (value : UndefOr ULongRange)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackCapabilities.prim__setSampleSize a b
  
  export
  width : (obj : MediaTrackCapabilities) -> JSIO (UndefOr ULongRange)
  width a = primJS $ MediaTrackCapabilities.prim__width a
  
  export
  setWidth :  (obj : MediaTrackCapabilities)
           -> (value : UndefOr ULongRange)
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackCapabilities.prim__setWidth a b

namespace MediaTrackConstraintSet
  
  public export
  JSType MediaTrackConstraintSet where
    parents =  [ Object ]

    mixins =  []
  
  export
  aspectRatio :  (obj : MediaTrackConstraintSet)
              -> JSIO (UndefOr ConstrainDouble)
  aspectRatio a = primJS $ MediaTrackConstraintSet.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackConstraintSet)
                 -> (value : UndefOr ConstrainDouble)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackConstraintSet.prim__setAspectRatio a b
  
  export
  autoGainControl :  (obj : MediaTrackConstraintSet)
                  -> JSIO (UndefOr ConstrainBoolean)
  autoGainControl a = primJS $ MediaTrackConstraintSet.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackConstraintSet)
                     -> (value : UndefOr ConstrainBoolean)
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackConstraintSet.prim__setAutoGainControl a
                                                                                     b
  
  export
  channelCount :  (obj : MediaTrackConstraintSet)
               -> JSIO (UndefOr ConstrainULong)
  channelCount a = primJS $ MediaTrackConstraintSet.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackConstraintSet)
                  -> (value : UndefOr ConstrainULong)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackConstraintSet.prim__setChannelCount a
                                                                               b
  
  export
  deviceId :  (obj : MediaTrackConstraintSet)
           -> JSIO (UndefOr ConstrainDOMString)
  deviceId a = primJS $ MediaTrackConstraintSet.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackConstraintSet)
              -> (value : UndefOr ConstrainDOMString)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackConstraintSet.prim__setDeviceId a b
  
  export
  echoCancellation :  (obj : MediaTrackConstraintSet)
                   -> JSIO (UndefOr ConstrainBoolean)
  echoCancellation a = primJS $ MediaTrackConstraintSet.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackConstraintSet)
                      -> (value : UndefOr ConstrainBoolean)
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackConstraintSet.prim__setEchoCancellation a
                                                                                       b
  
  export
  facingMode :  (obj : MediaTrackConstraintSet)
             -> JSIO (UndefOr ConstrainDOMString)
  facingMode a = primJS $ MediaTrackConstraintSet.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackConstraintSet)
                -> (value : UndefOr ConstrainDOMString)
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackConstraintSet.prim__setFacingMode a b
  
  export
  frameRate : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainDouble)
  frameRate a = primJS $ MediaTrackConstraintSet.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackConstraintSet)
               -> (value : UndefOr ConstrainDouble)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackConstraintSet.prim__setFrameRate a b
  
  export
  groupId : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainDOMString)
  groupId a = primJS $ MediaTrackConstraintSet.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackConstraintSet)
             -> (value : UndefOr ConstrainDOMString)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackConstraintSet.prim__setGroupId a b
  
  export
  height : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainULong)
  height a = primJS $ MediaTrackConstraintSet.prim__height a
  
  export
  setHeight :  (obj : MediaTrackConstraintSet)
            -> (value : UndefOr ConstrainULong)
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackConstraintSet.prim__setHeight a b
  
  export
  latency : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainDouble)
  latency a = primJS $ MediaTrackConstraintSet.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackConstraintSet)
             -> (value : UndefOr ConstrainDouble)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackConstraintSet.prim__setLatency a b
  
  export
  noiseSuppression :  (obj : MediaTrackConstraintSet)
                   -> JSIO (UndefOr ConstrainBoolean)
  noiseSuppression a = primJS $ MediaTrackConstraintSet.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackConstraintSet)
                      -> (value : UndefOr ConstrainBoolean)
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackConstraintSet.prim__setNoiseSuppression a
                                                                                       b
  
  export
  resizeMode :  (obj : MediaTrackConstraintSet)
             -> JSIO (UndefOr ConstrainDOMString)
  resizeMode a = primJS $ MediaTrackConstraintSet.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackConstraintSet)
                -> (value : UndefOr ConstrainDOMString)
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackConstraintSet.prim__setResizeMode a b
  
  export
  sampleRate : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainULong)
  sampleRate a = primJS $ MediaTrackConstraintSet.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackConstraintSet)
                -> (value : UndefOr ConstrainULong)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackConstraintSet.prim__setSampleRate a b
  
  export
  sampleSize : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainULong)
  sampleSize a = primJS $ MediaTrackConstraintSet.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackConstraintSet)
                -> (value : UndefOr ConstrainULong)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackConstraintSet.prim__setSampleSize a b
  
  export
  width : (obj : MediaTrackConstraintSet) -> JSIO (UndefOr ConstrainULong)
  width a = primJS $ MediaTrackConstraintSet.prim__width a
  
  export
  setWidth :  (obj : MediaTrackConstraintSet)
           -> (value : UndefOr ConstrainULong)
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackConstraintSet.prim__setWidth a b

namespace MediaTrackConstraints
  
  public export
  JSType MediaTrackConstraints where
    parents =  [ MediaTrackConstraintSet , Object ]

    mixins =  []
  
  export
  advanced :  (obj : MediaTrackConstraints)
           -> JSIO (UndefOr (Array MediaTrackConstraintSet))
  advanced a = primJS $ MediaTrackConstraints.prim__advanced a
  
  export
  setAdvanced :  (obj : MediaTrackConstraints)
              -> (value : UndefOr (Array MediaTrackConstraintSet))
              -> JSIO ()
  setAdvanced a b = primJS $ MediaTrackConstraints.prim__setAdvanced a b

namespace MediaTrackSettings
  
  public export
  JSType MediaTrackSettings where
    parents =  [ Object ]

    mixins =  []
  
  export
  aspectRatio : (obj : MediaTrackSettings) -> JSIO (UndefOr Double)
  aspectRatio a = primJS $ MediaTrackSettings.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackSettings)
                 -> (value : UndefOr Double)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackSettings.prim__setAspectRatio a b
  
  export
  autoGainControl : (obj : MediaTrackSettings) -> JSIO (UndefOr Boolean)
  autoGainControl a = primJS $ MediaTrackSettings.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackSettings)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackSettings.prim__setAutoGainControl a
                                                                                b
  
  export
  channelCount : (obj : MediaTrackSettings) -> JSIO (UndefOr Int32)
  channelCount a = primJS $ MediaTrackSettings.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackSettings)
                  -> (value : UndefOr Int32)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackSettings.prim__setChannelCount a b
  
  export
  deviceId : (obj : MediaTrackSettings) -> JSIO (UndefOr String)
  deviceId a = primJS $ MediaTrackSettings.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackSettings)
              -> (value : UndefOr String)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackSettings.prim__setDeviceId a b
  
  export
  echoCancellation : (obj : MediaTrackSettings) -> JSIO (UndefOr Boolean)
  echoCancellation a = primJS $ MediaTrackSettings.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackSettings)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackSettings.prim__setEchoCancellation a
                                                                                  b
  
  export
  facingMode : (obj : MediaTrackSettings) -> JSIO (UndefOr String)
  facingMode a = primJS $ MediaTrackSettings.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackSettings)
                -> (value : UndefOr String)
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackSettings.prim__setFacingMode a b
  
  export
  frameRate : (obj : MediaTrackSettings) -> JSIO (UndefOr Double)
  frameRate a = primJS $ MediaTrackSettings.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackSettings)
               -> (value : UndefOr Double)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackSettings.prim__setFrameRate a b
  
  export
  groupId : (obj : MediaTrackSettings) -> JSIO (UndefOr String)
  groupId a = primJS $ MediaTrackSettings.prim__groupId a
  
  export
  setGroupId : (obj : MediaTrackSettings) -> (value : UndefOr String) -> JSIO ()
  setGroupId a b = primJS $ MediaTrackSettings.prim__setGroupId a b
  
  export
  height : (obj : MediaTrackSettings) -> JSIO (UndefOr Int32)
  height a = primJS $ MediaTrackSettings.prim__height a
  
  export
  setHeight : (obj : MediaTrackSettings) -> (value : UndefOr Int32) -> JSIO ()
  setHeight a b = primJS $ MediaTrackSettings.prim__setHeight a b
  
  export
  latency : (obj : MediaTrackSettings) -> JSIO (UndefOr Double)
  latency a = primJS $ MediaTrackSettings.prim__latency a
  
  export
  setLatency : (obj : MediaTrackSettings) -> (value : UndefOr Double) -> JSIO ()
  setLatency a b = primJS $ MediaTrackSettings.prim__setLatency a b
  
  export
  noiseSuppression : (obj : MediaTrackSettings) -> JSIO (UndefOr Boolean)
  noiseSuppression a = primJS $ MediaTrackSettings.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackSettings)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackSettings.prim__setNoiseSuppression a
                                                                                  b
  
  export
  resizeMode : (obj : MediaTrackSettings) -> JSIO (UndefOr String)
  resizeMode a = primJS $ MediaTrackSettings.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackSettings)
                -> (value : UndefOr String)
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackSettings.prim__setResizeMode a b
  
  export
  sampleRate : (obj : MediaTrackSettings) -> JSIO (UndefOr Int32)
  sampleRate a = primJS $ MediaTrackSettings.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackSettings)
                -> (value : UndefOr Int32)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackSettings.prim__setSampleRate a b
  
  export
  sampleSize : (obj : MediaTrackSettings) -> JSIO (UndefOr Int32)
  sampleSize a = primJS $ MediaTrackSettings.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackSettings)
                -> (value : UndefOr Int32)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackSettings.prim__setSampleSize a b
  
  export
  width : (obj : MediaTrackSettings) -> JSIO (UndefOr Int32)
  width a = primJS $ MediaTrackSettings.prim__width a
  
  export
  setWidth : (obj : MediaTrackSettings) -> (value : UndefOr Int32) -> JSIO ()
  setWidth a b = primJS $ MediaTrackSettings.prim__setWidth a b

namespace MediaTrackSupportedConstraints
  
  public export
  JSType MediaTrackSupportedConstraints where
    parents =  [ Object ]

    mixins =  []
  
  export
  aspectRatio : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  aspectRatio a = primJS $ MediaTrackSupportedConstraints.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackSupportedConstraints)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackSupportedConstraints.prim__setAspectRatio a
                                                                                    b
  
  export
  autoGainControl :  (obj : MediaTrackSupportedConstraints)
                  -> JSIO (UndefOr Boolean)
  autoGainControl a = primJS $ MediaTrackSupportedConstraints.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackSupportedConstraints)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackSupportedConstraints.prim__setAutoGainControl a
                                                                                            b
  
  export
  channelCount :  (obj : MediaTrackSupportedConstraints)
               -> JSIO (UndefOr Boolean)
  channelCount a = primJS $ MediaTrackSupportedConstraints.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackSupportedConstraints)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackSupportedConstraints.prim__setChannelCount a
                                                                                      b
  
  export
  deviceId : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  deviceId a = primJS $ MediaTrackSupportedConstraints.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackSupportedConstraints)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackSupportedConstraints.prim__setDeviceId a
                                                                              b
  
  export
  echoCancellation :  (obj : MediaTrackSupportedConstraints)
                   -> JSIO (UndefOr Boolean)
  echoCancellation a = primJS $ MediaTrackSupportedConstraints.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackSupportedConstraints)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackSupportedConstraints.prim__setEchoCancellation a
                                                                                              b
  
  export
  facingMode : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  facingMode a = primJS $ MediaTrackSupportedConstraints.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackSupportedConstraints)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackSupportedConstraints.prim__setFacingMode a
                                                                                  b
  
  export
  frameRate : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  frameRate a = primJS $ MediaTrackSupportedConstraints.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackSupportedConstraints)
               -> (value : UndefOr Boolean)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackSupportedConstraints.prim__setFrameRate a
                                                                                b
  
  export
  groupId : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  groupId a = primJS $ MediaTrackSupportedConstraints.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackSupportedConstraints)
             -> (value : UndefOr Boolean)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackSupportedConstraints.prim__setGroupId a b
  
  export
  height : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  height a = primJS $ MediaTrackSupportedConstraints.prim__height a
  
  export
  setHeight :  (obj : MediaTrackSupportedConstraints)
            -> (value : UndefOr Boolean)
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackSupportedConstraints.prim__setHeight a b
  
  export
  latency : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  latency a = primJS $ MediaTrackSupportedConstraints.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackSupportedConstraints)
             -> (value : UndefOr Boolean)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackSupportedConstraints.prim__setLatency a b
  
  export
  noiseSuppression :  (obj : MediaTrackSupportedConstraints)
                   -> JSIO (UndefOr Boolean)
  noiseSuppression a = primJS $ MediaTrackSupportedConstraints.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackSupportedConstraints)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackSupportedConstraints.prim__setNoiseSuppression a
                                                                                              b
  
  export
  resizeMode : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  resizeMode a = primJS $ MediaTrackSupportedConstraints.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackSupportedConstraints)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackSupportedConstraints.prim__setResizeMode a
                                                                                  b
  
  export
  sampleRate : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  sampleRate a = primJS $ MediaTrackSupportedConstraints.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackSupportedConstraints)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackSupportedConstraints.prim__setSampleRate a
                                                                                  b
  
  export
  sampleSize : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  sampleSize a = primJS $ MediaTrackSupportedConstraints.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackSupportedConstraints)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackSupportedConstraints.prim__setSampleSize a
                                                                                  b
  
  export
  width : (obj : MediaTrackSupportedConstraints) -> JSIO (UndefOr Boolean)
  width a = primJS $ MediaTrackSupportedConstraints.prim__width a
  
  export
  setWidth :  (obj : MediaTrackSupportedConstraints)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackSupportedConstraints.prim__setWidth a b

namespace Settings
  
  public export
  JSType Settings where
    parents =  [ Object ]

    mixins =  []

namespace ULongRange
  
  public export
  JSType ULongRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  max : (obj : ULongRange) -> JSIO (UndefOr UInt32)
  max a = primJS $ ULongRange.prim__max a
  
  export
  setMax : (obj : ULongRange) -> (value : UndefOr UInt32) -> JSIO ()
  setMax a b = primJS $ ULongRange.prim__setMax a b
  
  export
  min : (obj : ULongRange) -> JSIO (UndefOr UInt32)
  min a = primJS $ ULongRange.prim__min a
  
  export
  setMin : (obj : ULongRange) -> (value : UndefOr UInt32) -> JSIO ()
  setMin a b = primJS $ ULongRange.prim__setMin a b

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

