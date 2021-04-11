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
                   -> (constraints : Optional Constraints)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS $ ConstrainablePattern.prim__applyConstraints a
                                                                              (toFFI b)

  export
  applyConstraints' : (obj : ConstrainablePattern) -> JSIO (Promise Undefined)
  applyConstraints' a = applyConstraints a Undef
  
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
  kind a = tryJS "MediaDeviceInfo.kind" $ MediaDeviceInfo.prim__kind a
  
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
  ondevicechange : (obj : MediaDevices) -> JSIO (Maybe EventHandlerNonNull)
  ondevicechange a = tryJS "MediaDevices.ondevicechange" $ MediaDevices.prim__ondevicechange a
  
  export
  setOndevicechange :  (obj : MediaDevices)
                    -> (value : Maybe EventHandlerNonNull)
                    -> JSIO ()
  setOndevicechange a b = primJS $ MediaDevices.prim__setOndevicechange a
                                                                        (toFFI b)
  
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
               -> (constraints : Optional MediaStreamConstraints)
               -> JSIO (Promise MediaStream)
  getUserMedia a b = primJS $ MediaDevices.prim__getUserMedia a (toFFI b)

  export
  getUserMedia' : (obj : MediaDevices) -> JSIO (Promise MediaStream)
  getUserMedia' a = getUserMedia a Undef

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
  active : (obj : MediaStream) -> JSIO Bool
  active a = tryJS "MediaStream.active" $ MediaStream.prim__active a
  
  export
  id : (obj : MediaStream) -> JSIO String
  id a = primJS $ MediaStream.prim__id a
  
  export
  onaddtrack : (obj : MediaStream) -> JSIO (Maybe EventHandlerNonNull)
  onaddtrack a = tryJS "MediaStream.onaddtrack" $ MediaStream.prim__onaddtrack a
  
  export
  setOnaddtrack :  (obj : MediaStream)
                -> (value : Maybe EventHandlerNonNull)
                -> JSIO ()
  setOnaddtrack a b = primJS $ MediaStream.prim__setOnaddtrack a (toFFI b)
  
  export
  onremovetrack : (obj : MediaStream) -> JSIO (Maybe EventHandlerNonNull)
  onremovetrack a = tryJS "MediaStream.onremovetrack" $ MediaStream.prim__onremovetrack a
  
  export
  setOnremovetrack :  (obj : MediaStream)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnremovetrack a b = primJS $ MediaStream.prim__setOnremovetrack a (toFFI b)
  
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
               -> JSIO (Maybe MediaStreamTrack)
  getTrackById a b = tryJS "MediaStream.getTrackById" $ MediaStream.prim__getTrackById a
                                                                                       b
  
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
  enabled : (obj : MediaStreamTrack) -> JSIO Bool
  enabled a = tryJS "MediaStreamTrack.enabled" $ MediaStreamTrack.prim__enabled a
  
  export
  setEnabled : (obj : MediaStreamTrack) -> (value : Bool) -> JSIO ()
  setEnabled a b = primJS $ MediaStreamTrack.prim__setEnabled a (toFFI b)
  
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
  muted : (obj : MediaStreamTrack) -> JSIO Bool
  muted a = tryJS "MediaStreamTrack.muted" $ MediaStreamTrack.prim__muted a
  
  export
  onended : (obj : MediaStreamTrack) -> JSIO (Maybe EventHandlerNonNull)
  onended a = tryJS "MediaStreamTrack.onended" $ MediaStreamTrack.prim__onended a
  
  export
  setOnended :  (obj : MediaStreamTrack)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnended a b = primJS $ MediaStreamTrack.prim__setOnended a (toFFI b)
  
  export
  onmute : (obj : MediaStreamTrack) -> JSIO (Maybe EventHandlerNonNull)
  onmute a = tryJS "MediaStreamTrack.onmute" $ MediaStreamTrack.prim__onmute a
  
  export
  setOnmute :  (obj : MediaStreamTrack)
            -> (value : Maybe EventHandlerNonNull)
            -> JSIO ()
  setOnmute a b = primJS $ MediaStreamTrack.prim__setOnmute a (toFFI b)
  
  export
  onunmute : (obj : MediaStreamTrack) -> JSIO (Maybe EventHandlerNonNull)
  onunmute a = tryJS "MediaStreamTrack.onunmute" $ MediaStreamTrack.prim__onunmute a
  
  export
  setOnunmute :  (obj : MediaStreamTrack)
              -> (value : Maybe EventHandlerNonNull)
              -> JSIO ()
  setOnunmute a b = primJS $ MediaStreamTrack.prim__setOnunmute a (toFFI b)
  
  export
  readyState : (obj : MediaStreamTrack) -> JSIO MediaStreamTrackState
  readyState a = tryJS "MediaStreamTrack.readyState" $ MediaStreamTrack.prim__readyState a
  
  export
  applyConstraints :  (obj : MediaStreamTrack)
                   -> (constraints : Optional MediaTrackConstraints)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS $ MediaStreamTrack.prim__applyConstraints a
                                                                          (toFFI b)

  export
  applyConstraints' : (obj : MediaStreamTrack) -> JSIO (Promise Undefined)
  applyConstraints' a = applyConstraints a Undef
  
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
      -> (message : Optional String)
      -> JSIO OverconstrainedError
  new a b = primJS $ OverconstrainedError.prim__new a (toFFI b)

  export
  new' : (constraint : String) -> JSIO OverconstrainedError
  new' a = new a Undef
  
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
  
  export
  new : JSIO Capabilities
  new = primJS $ Capabilities.prim__new 

namespace ConstrainBooleanParameters
  
  public export
  JSType ConstrainBooleanParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (exact : Optional Bool)
      -> (ideal : Optional Bool)
      -> JSIO ConstrainBooleanParameters
  new a b = primJS $ ConstrainBooleanParameters.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainBooleanParameters
  new' = new Undef Undef
  
  export
  exact : (obj : ConstrainBooleanParameters) -> JSIO $ Optional Bool
  exact a = tryJS "ConstrainBooleanParameters.exact" $ ConstrainBooleanParameters.prim__exact a
  
  export
  setExact :  (obj : ConstrainBooleanParameters)
           -> (value : Optional Bool)
           -> JSIO ()
  setExact a b = primJS $ ConstrainBooleanParameters.prim__setExact a (toFFI b)

  export
  setExact' : (obj : ConstrainBooleanParameters) -> JSIO ()
  setExact' a = setExact a Undef
  
  export
  ideal : (obj : ConstrainBooleanParameters) -> JSIO $ Optional Bool
  ideal a = tryJS "ConstrainBooleanParameters.ideal" $ ConstrainBooleanParameters.prim__ideal a
  
  export
  setIdeal :  (obj : ConstrainBooleanParameters)
           -> (value : Optional Bool)
           -> JSIO ()
  setIdeal a b = primJS $ ConstrainBooleanParameters.prim__setIdeal a (toFFI b)

  export
  setIdeal' : (obj : ConstrainBooleanParameters) -> JSIO ()
  setIdeal' a = setIdeal a Undef

namespace ConstrainDOMStringParameters
  
  public export
  JSType ConstrainDOMStringParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (exact : Optional (NS I [ String , Array String ]))
      -> (ideal : Optional (NS I [ String , Array String ]))
      -> JSIO ConstrainDOMStringParameters
  new a b = primJS $ ConstrainDOMStringParameters.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainDOMStringParameters
  new' = new Undef Undef
  
  export
  exact :  (obj : ConstrainDOMStringParameters)
        -> JSIO $ Optional (Union2 String (Array String))
  exact a = tryJS "ConstrainDOMStringParameters.exact" $ ConstrainDOMStringParameters.prim__exact a
  
  export
  setExact :  (obj : ConstrainDOMStringParameters)
           -> (value : Optional (NS I [ String , Array String ]))
           -> JSIO ()
  setExact a b = primJS $ ConstrainDOMStringParameters.prim__setExact a
                                                                      (toFFI b)

  export
  setExact' : (obj : ConstrainDOMStringParameters) -> JSIO ()
  setExact' a = setExact a Undef
  
  export
  ideal :  (obj : ConstrainDOMStringParameters)
        -> JSIO $ Optional (Union2 String (Array String))
  ideal a = tryJS "ConstrainDOMStringParameters.ideal" $ ConstrainDOMStringParameters.prim__ideal a
  
  export
  setIdeal :  (obj : ConstrainDOMStringParameters)
           -> (value : Optional (NS I [ String , Array String ]))
           -> JSIO ()
  setIdeal a b = primJS $ ConstrainDOMStringParameters.prim__setIdeal a
                                                                      (toFFI b)

  export
  setIdeal' : (obj : ConstrainDOMStringParameters) -> JSIO ()
  setIdeal' a = setIdeal a Undef

namespace ConstrainDoubleRange
  
  public export
  JSType ConstrainDoubleRange where
    parents =  [ DoubleRange , Object ]

    mixins =  []
  
  export
  new :  (exact : Optional Double)
      -> (ideal : Optional Double)
      -> JSIO ConstrainDoubleRange
  new a b = primJS $ ConstrainDoubleRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainDoubleRange
  new' = new Undef Undef
  
  export
  exact : (obj : ConstrainDoubleRange) -> JSIO $ Optional Double
  exact a = tryJS "ConstrainDoubleRange.exact" $ ConstrainDoubleRange.prim__exact a
  
  export
  setExact :  (obj : ConstrainDoubleRange)
           -> (value : Optional Double)
           -> JSIO ()
  setExact a b = primJS $ ConstrainDoubleRange.prim__setExact a (toFFI b)

  export
  setExact' : (obj : ConstrainDoubleRange) -> JSIO ()
  setExact' a = setExact a Undef
  
  export
  ideal : (obj : ConstrainDoubleRange) -> JSIO $ Optional Double
  ideal a = tryJS "ConstrainDoubleRange.ideal" $ ConstrainDoubleRange.prim__ideal a
  
  export
  setIdeal :  (obj : ConstrainDoubleRange)
           -> (value : Optional Double)
           -> JSIO ()
  setIdeal a b = primJS $ ConstrainDoubleRange.prim__setIdeal a (toFFI b)

  export
  setIdeal' : (obj : ConstrainDoubleRange) -> JSIO ()
  setIdeal' a = setIdeal a Undef

namespace ConstrainULongRange
  
  public export
  JSType ConstrainULongRange where
    parents =  [ ULongRange , Object ]

    mixins =  []
  
  export
  new :  (exact : Optional UInt32)
      -> (ideal : Optional UInt32)
      -> JSIO ConstrainULongRange
  new a b = primJS $ ConstrainULongRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainULongRange
  new' = new Undef Undef
  
  export
  exact : (obj : ConstrainULongRange) -> JSIO $ Optional UInt32
  exact a = tryJS "ConstrainULongRange.exact" $ ConstrainULongRange.prim__exact a
  
  export
  setExact : (obj : ConstrainULongRange) -> (value : Optional UInt32) -> JSIO ()
  setExact a b = primJS $ ConstrainULongRange.prim__setExact a (toFFI b)

  export
  setExact' : (obj : ConstrainULongRange) -> JSIO ()
  setExact' a = setExact a Undef
  
  export
  ideal : (obj : ConstrainULongRange) -> JSIO $ Optional UInt32
  ideal a = tryJS "ConstrainULongRange.ideal" $ ConstrainULongRange.prim__ideal a
  
  export
  setIdeal : (obj : ConstrainULongRange) -> (value : Optional UInt32) -> JSIO ()
  setIdeal a b = primJS $ ConstrainULongRange.prim__setIdeal a (toFFI b)

  export
  setIdeal' : (obj : ConstrainULongRange) -> JSIO ()
  setIdeal' a = setIdeal a Undef

namespace ConstraintSet
  
  public export
  JSType ConstraintSet where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO ConstraintSet
  new = primJS $ ConstraintSet.prim__new 

namespace Constraints
  
  public export
  JSType Constraints where
    parents =  [ ConstraintSet , Object ]

    mixins =  []
  
  export
  new : (advanced : Optional (Array ConstraintSet)) -> JSIO Constraints
  new a = primJS $ Constraints.prim__new (toFFI a)

  export
  new' : JSIO Constraints
  new' = new Undef
  
  export
  advanced : (obj : Constraints) -> JSIO $ Optional (Array ConstraintSet)
  advanced a = tryJS "Constraints.advanced" $ Constraints.prim__advanced a
  
  export
  setAdvanced :  (obj : Constraints)
              -> (value : Optional (Array ConstraintSet))
              -> JSIO ()
  setAdvanced a b = primJS $ Constraints.prim__setAdvanced a (toFFI b)

  export
  setAdvanced' : (obj : Constraints) -> JSIO ()
  setAdvanced' a = setAdvanced a Undef

namespace DoubleRange
  
  public export
  JSType DoubleRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (max : Optional Double) -> (min : Optional Double) -> JSIO DoubleRange
  new a b = primJS $ DoubleRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO DoubleRange
  new' = new Undef Undef
  
  export
  max : (obj : DoubleRange) -> JSIO $ Optional Double
  max a = tryJS "DoubleRange.max" $ DoubleRange.prim__max a
  
  export
  setMax : (obj : DoubleRange) -> (value : Optional Double) -> JSIO ()
  setMax a b = primJS $ DoubleRange.prim__setMax a (toFFI b)

  export
  setMax' : (obj : DoubleRange) -> JSIO ()
  setMax' a = setMax a Undef
  
  export
  min : (obj : DoubleRange) -> JSIO $ Optional Double
  min a = tryJS "DoubleRange.min" $ DoubleRange.prim__min a
  
  export
  setMin : (obj : DoubleRange) -> (value : Optional Double) -> JSIO ()
  setMin a b = primJS $ DoubleRange.prim__setMin a (toFFI b)

  export
  setMin' : (obj : DoubleRange) -> JSIO ()
  setMin' a = setMin a Undef

namespace MediaStreamConstraints
  
  public export
  JSType MediaStreamConstraints where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (video : Optional (NS I [ Bool , MediaTrackConstraints ]))
      -> (audio : Optional (NS I [ Bool , MediaTrackConstraints ]))
      -> JSIO MediaStreamConstraints
  new a b = primJS $ MediaStreamConstraints.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO MediaStreamConstraints
  new' = new Undef Undef
  
  export
  audio :  (obj : MediaStreamConstraints)
        -> JSIO $ Optional (NS I [ Bool , MediaTrackConstraints ])
  audio a = tryJS "MediaStreamConstraints.audio" $ MediaStreamConstraints.prim__audio a
  
  export
  setAudio :  (obj : MediaStreamConstraints)
           -> (value : Optional (NS I [ Bool , MediaTrackConstraints ]))
           -> JSIO ()
  setAudio a b = primJS $ MediaStreamConstraints.prim__setAudio a (toFFI b)

  export
  setAudio' : (obj : MediaStreamConstraints) -> JSIO ()
  setAudio' a = setAudio a Undef
  
  export
  video :  (obj : MediaStreamConstraints)
        -> JSIO $ Optional (NS I [ Bool , MediaTrackConstraints ])
  video a = tryJS "MediaStreamConstraints.video" $ MediaStreamConstraints.prim__video a
  
  export
  setVideo :  (obj : MediaStreamConstraints)
           -> (value : Optional (NS I [ Bool , MediaTrackConstraints ]))
           -> JSIO ()
  setVideo a b = primJS $ MediaStreamConstraints.prim__setVideo a (toFFI b)

  export
  setVideo' : (obj : MediaStreamConstraints) -> JSIO ()
  setVideo' a = setVideo a Undef

namespace MediaStreamTrackEventInit
  
  public export
  JSType MediaStreamTrackEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : (track : MediaStreamTrack) -> JSIO MediaStreamTrackEventInit
  new a = primJS $ MediaStreamTrackEventInit.prim__new a
  
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
  new :  (width : Optional ULongRange)
      -> (height : Optional ULongRange)
      -> (aspectRatio : Optional DoubleRange)
      -> (frameRate : Optional DoubleRange)
      -> (facingMode : Optional (Array String))
      -> (resizeMode : Optional (Array String))
      -> (sampleRate : Optional ULongRange)
      -> (sampleSize : Optional ULongRange)
      -> (echoCancellation : Optional (Array Boolean))
      -> (autoGainControl : Optional (Array Boolean))
      -> (noiseSuppression : Optional (Array Boolean))
      -> (latency : Optional DoubleRange)
      -> (channelCount : Optional ULongRange)
      -> (deviceId : Optional String)
      -> (groupId : Optional String)
      -> JSIO MediaTrackCapabilities
  new a b c d e f g h i j k l m n o = primJS $ MediaTrackCapabilities.prim__new (toFFI a)
                                                                                (toFFI b)
                                                                                (toFFI c)
                                                                                (toFFI d)
                                                                                (toFFI e)
                                                                                (toFFI f)
                                                                                (toFFI g)
                                                                                (toFFI h)
                                                                                (toFFI i)
                                                                                (toFFI j)
                                                                                (toFFI k)
                                                                                (toFFI l)
                                                                                (toFFI m)
                                                                                (toFFI n)
                                                                                (toFFI o)

  export
  new' : JSIO MediaTrackCapabilities
  new' = new Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
  
  export
  aspectRatio : (obj : MediaTrackCapabilities) -> JSIO $ Optional DoubleRange
  aspectRatio a = tryJS "MediaTrackCapabilities.aspectRatio" $ MediaTrackCapabilities.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackCapabilities)
                 -> (value : Optional DoubleRange)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackCapabilities.prim__setAspectRatio a
                                                                            (toFFI b)

  export
  setAspectRatio' : (obj : MediaTrackCapabilities) -> JSIO ()
  setAspectRatio' a = setAspectRatio a Undef
  
  export
  autoGainControl :  (obj : MediaTrackCapabilities)
                  -> JSIO $ Optional (Array Boolean)
  autoGainControl a = tryJS "MediaTrackCapabilities.autoGainControl" $ MediaTrackCapabilities.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackCapabilities)
                     -> (value : Optional (Array Boolean))
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackCapabilities.prim__setAutoGainControl a
                                                                                    (toFFI b)

  export
  setAutoGainControl' : (obj : MediaTrackCapabilities) -> JSIO ()
  setAutoGainControl' a = setAutoGainControl a Undef
  
  export
  channelCount : (obj : MediaTrackCapabilities) -> JSIO $ Optional ULongRange
  channelCount a = tryJS "MediaTrackCapabilities.channelCount" $ MediaTrackCapabilities.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackCapabilities)
                  -> (value : Optional ULongRange)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackCapabilities.prim__setChannelCount a
                                                                              (toFFI b)

  export
  setChannelCount' : (obj : MediaTrackCapabilities) -> JSIO ()
  setChannelCount' a = setChannelCount a Undef
  
  export
  deviceId : (obj : MediaTrackCapabilities) -> JSIO $ Optional String
  deviceId a = tryJS "MediaTrackCapabilities.deviceId" $ MediaTrackCapabilities.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackCapabilities)
              -> (value : Optional String)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackCapabilities.prim__setDeviceId a
                                                                      (toFFI b)

  export
  setDeviceId' : (obj : MediaTrackCapabilities) -> JSIO ()
  setDeviceId' a = setDeviceId a Undef
  
  export
  echoCancellation :  (obj : MediaTrackCapabilities)
                   -> JSIO $ Optional (Array Boolean)
  echoCancellation a = tryJS "MediaTrackCapabilities.echoCancellation" $ MediaTrackCapabilities.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackCapabilities)
                      -> (value : Optional (Array Boolean))
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackCapabilities.prim__setEchoCancellation a
                                                                                      (toFFI b)

  export
  setEchoCancellation' : (obj : MediaTrackCapabilities) -> JSIO ()
  setEchoCancellation' a = setEchoCancellation a Undef
  
  export
  facingMode : (obj : MediaTrackCapabilities) -> JSIO $ Optional (Array String)
  facingMode a = tryJS "MediaTrackCapabilities.facingMode" $ MediaTrackCapabilities.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackCapabilities)
                -> (value : Optional (Array String))
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackCapabilities.prim__setFacingMode a
                                                                          (toFFI b)

  export
  setFacingMode' : (obj : MediaTrackCapabilities) -> JSIO ()
  setFacingMode' a = setFacingMode a Undef
  
  export
  frameRate : (obj : MediaTrackCapabilities) -> JSIO $ Optional DoubleRange
  frameRate a = tryJS "MediaTrackCapabilities.frameRate" $ MediaTrackCapabilities.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackCapabilities)
               -> (value : Optional DoubleRange)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackCapabilities.prim__setFrameRate a
                                                                        (toFFI b)

  export
  setFrameRate' : (obj : MediaTrackCapabilities) -> JSIO ()
  setFrameRate' a = setFrameRate a Undef
  
  export
  groupId : (obj : MediaTrackCapabilities) -> JSIO $ Optional String
  groupId a = tryJS "MediaTrackCapabilities.groupId" $ MediaTrackCapabilities.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackCapabilities)
             -> (value : Optional String)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackCapabilities.prim__setGroupId a (toFFI b)

  export
  setGroupId' : (obj : MediaTrackCapabilities) -> JSIO ()
  setGroupId' a = setGroupId a Undef
  
  export
  height : (obj : MediaTrackCapabilities) -> JSIO $ Optional ULongRange
  height a = tryJS "MediaTrackCapabilities.height" $ MediaTrackCapabilities.prim__height a
  
  export
  setHeight :  (obj : MediaTrackCapabilities)
            -> (value : Optional ULongRange)
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackCapabilities.prim__setHeight a (toFFI b)

  export
  setHeight' : (obj : MediaTrackCapabilities) -> JSIO ()
  setHeight' a = setHeight a Undef
  
  export
  latency : (obj : MediaTrackCapabilities) -> JSIO $ Optional DoubleRange
  latency a = tryJS "MediaTrackCapabilities.latency" $ MediaTrackCapabilities.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackCapabilities)
             -> (value : Optional DoubleRange)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackCapabilities.prim__setLatency a (toFFI b)

  export
  setLatency' : (obj : MediaTrackCapabilities) -> JSIO ()
  setLatency' a = setLatency a Undef
  
  export
  noiseSuppression :  (obj : MediaTrackCapabilities)
                   -> JSIO $ Optional (Array Boolean)
  noiseSuppression a = tryJS "MediaTrackCapabilities.noiseSuppression" $ MediaTrackCapabilities.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackCapabilities)
                      -> (value : Optional (Array Boolean))
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackCapabilities.prim__setNoiseSuppression a
                                                                                      (toFFI b)

  export
  setNoiseSuppression' : (obj : MediaTrackCapabilities) -> JSIO ()
  setNoiseSuppression' a = setNoiseSuppression a Undef
  
  export
  resizeMode : (obj : MediaTrackCapabilities) -> JSIO $ Optional (Array String)
  resizeMode a = tryJS "MediaTrackCapabilities.resizeMode" $ MediaTrackCapabilities.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackCapabilities)
                -> (value : Optional (Array String))
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackCapabilities.prim__setResizeMode a
                                                                          (toFFI b)

  export
  setResizeMode' : (obj : MediaTrackCapabilities) -> JSIO ()
  setResizeMode' a = setResizeMode a Undef
  
  export
  sampleRate : (obj : MediaTrackCapabilities) -> JSIO $ Optional ULongRange
  sampleRate a = tryJS "MediaTrackCapabilities.sampleRate" $ MediaTrackCapabilities.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackCapabilities)
                -> (value : Optional ULongRange)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackCapabilities.prim__setSampleRate a
                                                                          (toFFI b)

  export
  setSampleRate' : (obj : MediaTrackCapabilities) -> JSIO ()
  setSampleRate' a = setSampleRate a Undef
  
  export
  sampleSize : (obj : MediaTrackCapabilities) -> JSIO $ Optional ULongRange
  sampleSize a = tryJS "MediaTrackCapabilities.sampleSize" $ MediaTrackCapabilities.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackCapabilities)
                -> (value : Optional ULongRange)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackCapabilities.prim__setSampleSize a
                                                                          (toFFI b)

  export
  setSampleSize' : (obj : MediaTrackCapabilities) -> JSIO ()
  setSampleSize' a = setSampleSize a Undef
  
  export
  width : (obj : MediaTrackCapabilities) -> JSIO $ Optional ULongRange
  width a = tryJS "MediaTrackCapabilities.width" $ MediaTrackCapabilities.prim__width a
  
  export
  setWidth :  (obj : MediaTrackCapabilities)
           -> (value : Optional ULongRange)
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackCapabilities.prim__setWidth a (toFFI b)

  export
  setWidth' : (obj : MediaTrackCapabilities) -> JSIO ()
  setWidth' a = setWidth a Undef

namespace MediaTrackConstraintSet
  
  public export
  JSType MediaTrackConstraintSet where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (width : Optional (NS I [ UInt32 , ConstrainULongRange ]))
      -> (height : Optional (NS I [ UInt32 , ConstrainULongRange ]))
      -> (aspectRatio : Optional (NS I [ Double , ConstrainDoubleRange ]))
      -> (frameRate : Optional (NS I [ Double , ConstrainDoubleRange ]))
      -> (facingMode : Optional (NS I [ String
                                      , Array String
                                      , ConstrainDOMStringParameters
                                      ]))
      -> (resizeMode : Optional (NS I [ String
                                      , Array String
                                      , ConstrainDOMStringParameters
                                      ]))
      -> (sampleRate : Optional (NS I [ UInt32 , ConstrainULongRange ]))
      -> (sampleSize : Optional (NS I [ UInt32 , ConstrainULongRange ]))
      -> (echoCancellation : Optional (NS I [ Bool
                                            , ConstrainBooleanParameters
                                            ]))
      -> (autoGainControl : Optional (NS I [ Bool
                                           , ConstrainBooleanParameters
                                           ]))
      -> (noiseSuppression : Optional (NS I [ Bool
                                            , ConstrainBooleanParameters
                                            ]))
      -> (latency : Optional (NS I [ Double , ConstrainDoubleRange ]))
      -> (channelCount : Optional (NS I [ UInt32 , ConstrainULongRange ]))
      -> (deviceId : Optional (NS I [ String
                                    , Array String
                                    , ConstrainDOMStringParameters
                                    ]))
      -> (groupId : Optional (NS I [ String
                                   , Array String
                                   , ConstrainDOMStringParameters
                                   ]))
      -> JSIO MediaTrackConstraintSet
  new a b c d e f g h i j k l m n o = primJS $ MediaTrackConstraintSet.prim__new (toFFI a)
                                                                                 (toFFI b)
                                                                                 (toFFI c)
                                                                                 (toFFI d)
                                                                                 (toFFI e)
                                                                                 (toFFI f)
                                                                                 (toFFI g)
                                                                                 (toFFI h)
                                                                                 (toFFI i)
                                                                                 (toFFI j)
                                                                                 (toFFI k)
                                                                                 (toFFI l)
                                                                                 (toFFI m)
                                                                                 (toFFI n)
                                                                                 (toFFI o)

  export
  new' : JSIO MediaTrackConstraintSet
  new' = new Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
  
  export
  aspectRatio :  (obj : MediaTrackConstraintSet)
              -> JSIO $ Optional (NS I [ Double , ConstrainDoubleRange ])
  aspectRatio a = tryJS "MediaTrackConstraintSet.aspectRatio" $ MediaTrackConstraintSet.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackConstraintSet)
                 -> (value : Optional (NS I [ Double , ConstrainDoubleRange ]))
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackConstraintSet.prim__setAspectRatio a
                                                                             (toFFI b)

  export
  setAspectRatio' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setAspectRatio' a = setAspectRatio a Undef
  
  export
  autoGainControl :  (obj : MediaTrackConstraintSet)
                  -> JSIO $ Optional (NS I [ Bool
                                           , ConstrainBooleanParameters
                                           ])
  autoGainControl a = tryJS "MediaTrackConstraintSet.autoGainControl" $ MediaTrackConstraintSet.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackConstraintSet)
                     -> (value : Optional (NS I [ Bool
                                                , ConstrainBooleanParameters
                                                ]))
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackConstraintSet.prim__setAutoGainControl a
                                                                                     (toFFI b)

  export
  setAutoGainControl' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setAutoGainControl' a = setAutoGainControl a Undef
  
  export
  channelCount :  (obj : MediaTrackConstraintSet)
               -> JSIO $ Optional (NS I [ UInt32 , ConstrainULongRange ])
  channelCount a = tryJS "MediaTrackConstraintSet.channelCount" $ MediaTrackConstraintSet.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackConstraintSet)
                  -> (value : Optional (NS I [ UInt32 , ConstrainULongRange ]))
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackConstraintSet.prim__setChannelCount a
                                                                               (toFFI b)

  export
  setChannelCount' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setChannelCount' a = setChannelCount a Undef
  
  export
  deviceId :  (obj : MediaTrackConstraintSet)
           -> JSIO $ Optional (Union3 String
                                      (Array String)
                                      ConstrainDOMStringParameters)
  deviceId a = tryJS "MediaTrackConstraintSet.deviceId" $ MediaTrackConstraintSet.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackConstraintSet)
              -> (value : Optional (NS I [ String
                                         , Array String
                                         , ConstrainDOMStringParameters
                                         ]))
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackConstraintSet.prim__setDeviceId a
                                                                       (toFFI b)

  export
  setDeviceId' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setDeviceId' a = setDeviceId a Undef
  
  export
  echoCancellation :  (obj : MediaTrackConstraintSet)
                   -> JSIO $ Optional (NS I [ Bool
                                            , ConstrainBooleanParameters
                                            ])
  echoCancellation a = tryJS "MediaTrackConstraintSet.echoCancellation" $ MediaTrackConstraintSet.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackConstraintSet)
                      -> (value : Optional (NS I [ Bool
                                                 , ConstrainBooleanParameters
                                                 ]))
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackConstraintSet.prim__setEchoCancellation a
                                                                                       (toFFI b)

  export
  setEchoCancellation' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setEchoCancellation' a = setEchoCancellation a Undef
  
  export
  facingMode :  (obj : MediaTrackConstraintSet)
             -> JSIO $ Optional (Union3 String
                                        (Array String)
                                        ConstrainDOMStringParameters)
  facingMode a = tryJS "MediaTrackConstraintSet.facingMode" $ MediaTrackConstraintSet.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackConstraintSet)
                -> (value : Optional (NS I [ String
                                           , Array String
                                           , ConstrainDOMStringParameters
                                           ]))
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackConstraintSet.prim__setFacingMode a
                                                                           (toFFI b)

  export
  setFacingMode' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setFacingMode' a = setFacingMode a Undef
  
  export
  frameRate :  (obj : MediaTrackConstraintSet)
            -> JSIO $ Optional (NS I [ Double , ConstrainDoubleRange ])
  frameRate a = tryJS "MediaTrackConstraintSet.frameRate" $ MediaTrackConstraintSet.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackConstraintSet)
               -> (value : Optional (NS I [ Double , ConstrainDoubleRange ]))
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackConstraintSet.prim__setFrameRate a
                                                                         (toFFI b)

  export
  setFrameRate' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setFrameRate' a = setFrameRate a Undef
  
  export
  groupId :  (obj : MediaTrackConstraintSet)
          -> JSIO $ Optional (Union3 String
                                     (Array String)
                                     ConstrainDOMStringParameters)
  groupId a = tryJS "MediaTrackConstraintSet.groupId" $ MediaTrackConstraintSet.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackConstraintSet)
             -> (value : Optional (NS I [ String
                                        , Array String
                                        , ConstrainDOMStringParameters
                                        ]))
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackConstraintSet.prim__setGroupId a (toFFI b)

  export
  setGroupId' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setGroupId' a = setGroupId a Undef
  
  export
  height :  (obj : MediaTrackConstraintSet)
         -> JSIO $ Optional (NS I [ UInt32 , ConstrainULongRange ])
  height a = tryJS "MediaTrackConstraintSet.height" $ MediaTrackConstraintSet.prim__height a
  
  export
  setHeight :  (obj : MediaTrackConstraintSet)
            -> (value : Optional (NS I [ UInt32 , ConstrainULongRange ]))
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackConstraintSet.prim__setHeight a (toFFI b)

  export
  setHeight' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setHeight' a = setHeight a Undef
  
  export
  latency :  (obj : MediaTrackConstraintSet)
          -> JSIO $ Optional (NS I [ Double , ConstrainDoubleRange ])
  latency a = tryJS "MediaTrackConstraintSet.latency" $ MediaTrackConstraintSet.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackConstraintSet)
             -> (value : Optional (NS I [ Double , ConstrainDoubleRange ]))
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackConstraintSet.prim__setLatency a (toFFI b)

  export
  setLatency' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setLatency' a = setLatency a Undef
  
  export
  noiseSuppression :  (obj : MediaTrackConstraintSet)
                   -> JSIO $ Optional (NS I [ Bool
                                            , ConstrainBooleanParameters
                                            ])
  noiseSuppression a = tryJS "MediaTrackConstraintSet.noiseSuppression" $ MediaTrackConstraintSet.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackConstraintSet)
                      -> (value : Optional (NS I [ Bool
                                                 , ConstrainBooleanParameters
                                                 ]))
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackConstraintSet.prim__setNoiseSuppression a
                                                                                       (toFFI b)

  export
  setNoiseSuppression' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setNoiseSuppression' a = setNoiseSuppression a Undef
  
  export
  resizeMode :  (obj : MediaTrackConstraintSet)
             -> JSIO $ Optional (Union3 String
                                        (Array String)
                                        ConstrainDOMStringParameters)
  resizeMode a = tryJS "MediaTrackConstraintSet.resizeMode" $ MediaTrackConstraintSet.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackConstraintSet)
                -> (value : Optional (NS I [ String
                                           , Array String
                                           , ConstrainDOMStringParameters
                                           ]))
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackConstraintSet.prim__setResizeMode a
                                                                           (toFFI b)

  export
  setResizeMode' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setResizeMode' a = setResizeMode a Undef
  
  export
  sampleRate :  (obj : MediaTrackConstraintSet)
             -> JSIO $ Optional (NS I [ UInt32 , ConstrainULongRange ])
  sampleRate a = tryJS "MediaTrackConstraintSet.sampleRate" $ MediaTrackConstraintSet.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackConstraintSet)
                -> (value : Optional (NS I [ UInt32 , ConstrainULongRange ]))
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackConstraintSet.prim__setSampleRate a
                                                                           (toFFI b)

  export
  setSampleRate' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setSampleRate' a = setSampleRate a Undef
  
  export
  sampleSize :  (obj : MediaTrackConstraintSet)
             -> JSIO $ Optional (NS I [ UInt32 , ConstrainULongRange ])
  sampleSize a = tryJS "MediaTrackConstraintSet.sampleSize" $ MediaTrackConstraintSet.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackConstraintSet)
                -> (value : Optional (NS I [ UInt32 , ConstrainULongRange ]))
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackConstraintSet.prim__setSampleSize a
                                                                           (toFFI b)

  export
  setSampleSize' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setSampleSize' a = setSampleSize a Undef
  
  export
  width :  (obj : MediaTrackConstraintSet)
        -> JSIO $ Optional (NS I [ UInt32 , ConstrainULongRange ])
  width a = tryJS "MediaTrackConstraintSet.width" $ MediaTrackConstraintSet.prim__width a
  
  export
  setWidth :  (obj : MediaTrackConstraintSet)
           -> (value : Optional (NS I [ UInt32 , ConstrainULongRange ]))
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackConstraintSet.prim__setWidth a (toFFI b)

  export
  setWidth' : (obj : MediaTrackConstraintSet) -> JSIO ()
  setWidth' a = setWidth a Undef

namespace MediaTrackConstraints
  
  public export
  JSType MediaTrackConstraints where
    parents =  [ MediaTrackConstraintSet , Object ]

    mixins =  []
  
  export
  new :  (advanced : Optional (Array MediaTrackConstraintSet))
      -> JSIO MediaTrackConstraints
  new a = primJS $ MediaTrackConstraints.prim__new (toFFI a)

  export
  new' : JSIO MediaTrackConstraints
  new' = new Undef
  
  export
  advanced :  (obj : MediaTrackConstraints)
           -> JSIO $ Optional (Array MediaTrackConstraintSet)
  advanced a = tryJS "MediaTrackConstraints.advanced" $ MediaTrackConstraints.prim__advanced a
  
  export
  setAdvanced :  (obj : MediaTrackConstraints)
              -> (value : Optional (Array MediaTrackConstraintSet))
              -> JSIO ()
  setAdvanced a b = primJS $ MediaTrackConstraints.prim__setAdvanced a (toFFI b)

  export
  setAdvanced' : (obj : MediaTrackConstraints) -> JSIO ()
  setAdvanced' a = setAdvanced a Undef

namespace MediaTrackSettings
  
  public export
  JSType MediaTrackSettings where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (width : Optional Int32)
      -> (height : Optional Int32)
      -> (aspectRatio : Optional Double)
      -> (frameRate : Optional Double)
      -> (facingMode : Optional String)
      -> (resizeMode : Optional String)
      -> (sampleRate : Optional Int32)
      -> (sampleSize : Optional Int32)
      -> (echoCancellation : Optional Bool)
      -> (autoGainControl : Optional Bool)
      -> (noiseSuppression : Optional Bool)
      -> (latency : Optional Double)
      -> (channelCount : Optional Int32)
      -> (deviceId : Optional String)
      -> (groupId : Optional String)
      -> JSIO MediaTrackSettings
  new a b c d e f g h i j k l m n o = primJS $ MediaTrackSettings.prim__new (toFFI a)
                                                                            (toFFI b)
                                                                            (toFFI c)
                                                                            (toFFI d)
                                                                            (toFFI e)
                                                                            (toFFI f)
                                                                            (toFFI g)
                                                                            (toFFI h)
                                                                            (toFFI i)
                                                                            (toFFI j)
                                                                            (toFFI k)
                                                                            (toFFI l)
                                                                            (toFFI m)
                                                                            (toFFI n)
                                                                            (toFFI o)

  export
  new' : JSIO MediaTrackSettings
  new' = new Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
  
  export
  aspectRatio : (obj : MediaTrackSettings) -> JSIO $ Optional Double
  aspectRatio a = tryJS "MediaTrackSettings.aspectRatio" $ MediaTrackSettings.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackSettings)
                 -> (value : Optional Double)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackSettings.prim__setAspectRatio a
                                                                        (toFFI b)

  export
  setAspectRatio' : (obj : MediaTrackSettings) -> JSIO ()
  setAspectRatio' a = setAspectRatio a Undef
  
  export
  autoGainControl : (obj : MediaTrackSettings) -> JSIO $ Optional Bool
  autoGainControl a = tryJS "MediaTrackSettings.autoGainControl" $ MediaTrackSettings.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackSettings)
                     -> (value : Optional Bool)
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackSettings.prim__setAutoGainControl a
                                                                                (toFFI b)

  export
  setAutoGainControl' : (obj : MediaTrackSettings) -> JSIO ()
  setAutoGainControl' a = setAutoGainControl a Undef
  
  export
  channelCount : (obj : MediaTrackSettings) -> JSIO $ Optional Int32
  channelCount a = tryJS "MediaTrackSettings.channelCount" $ MediaTrackSettings.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackSettings)
                  -> (value : Optional Int32)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackSettings.prim__setChannelCount a
                                                                          (toFFI b)

  export
  setChannelCount' : (obj : MediaTrackSettings) -> JSIO ()
  setChannelCount' a = setChannelCount a Undef
  
  export
  deviceId : (obj : MediaTrackSettings) -> JSIO $ Optional String
  deviceId a = tryJS "MediaTrackSettings.deviceId" $ MediaTrackSettings.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackSettings)
              -> (value : Optional String)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackSettings.prim__setDeviceId a (toFFI b)

  export
  setDeviceId' : (obj : MediaTrackSettings) -> JSIO ()
  setDeviceId' a = setDeviceId a Undef
  
  export
  echoCancellation : (obj : MediaTrackSettings) -> JSIO $ Optional Bool
  echoCancellation a = tryJS "MediaTrackSettings.echoCancellation" $ MediaTrackSettings.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackSettings)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackSettings.prim__setEchoCancellation a
                                                                                  (toFFI b)

  export
  setEchoCancellation' : (obj : MediaTrackSettings) -> JSIO ()
  setEchoCancellation' a = setEchoCancellation a Undef
  
  export
  facingMode : (obj : MediaTrackSettings) -> JSIO $ Optional String
  facingMode a = tryJS "MediaTrackSettings.facingMode" $ MediaTrackSettings.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackSettings)
                -> (value : Optional String)
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackSettings.prim__setFacingMode a
                                                                      (toFFI b)

  export
  setFacingMode' : (obj : MediaTrackSettings) -> JSIO ()
  setFacingMode' a = setFacingMode a Undef
  
  export
  frameRate : (obj : MediaTrackSettings) -> JSIO $ Optional Double
  frameRate a = tryJS "MediaTrackSettings.frameRate" $ MediaTrackSettings.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackSettings)
               -> (value : Optional Double)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackSettings.prim__setFrameRate a (toFFI b)

  export
  setFrameRate' : (obj : MediaTrackSettings) -> JSIO ()
  setFrameRate' a = setFrameRate a Undef
  
  export
  groupId : (obj : MediaTrackSettings) -> JSIO $ Optional String
  groupId a = tryJS "MediaTrackSettings.groupId" $ MediaTrackSettings.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackSettings)
             -> (value : Optional String)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackSettings.prim__setGroupId a (toFFI b)

  export
  setGroupId' : (obj : MediaTrackSettings) -> JSIO ()
  setGroupId' a = setGroupId a Undef
  
  export
  height : (obj : MediaTrackSettings) -> JSIO $ Optional Int32
  height a = tryJS "MediaTrackSettings.height" $ MediaTrackSettings.prim__height a
  
  export
  setHeight : (obj : MediaTrackSettings) -> (value : Optional Int32) -> JSIO ()
  setHeight a b = primJS $ MediaTrackSettings.prim__setHeight a (toFFI b)

  export
  setHeight' : (obj : MediaTrackSettings) -> JSIO ()
  setHeight' a = setHeight a Undef
  
  export
  latency : (obj : MediaTrackSettings) -> JSIO $ Optional Double
  latency a = tryJS "MediaTrackSettings.latency" $ MediaTrackSettings.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackSettings)
             -> (value : Optional Double)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackSettings.prim__setLatency a (toFFI b)

  export
  setLatency' : (obj : MediaTrackSettings) -> JSIO ()
  setLatency' a = setLatency a Undef
  
  export
  noiseSuppression : (obj : MediaTrackSettings) -> JSIO $ Optional Bool
  noiseSuppression a = tryJS "MediaTrackSettings.noiseSuppression" $ MediaTrackSettings.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackSettings)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackSettings.prim__setNoiseSuppression a
                                                                                  (toFFI b)

  export
  setNoiseSuppression' : (obj : MediaTrackSettings) -> JSIO ()
  setNoiseSuppression' a = setNoiseSuppression a Undef
  
  export
  resizeMode : (obj : MediaTrackSettings) -> JSIO $ Optional String
  resizeMode a = tryJS "MediaTrackSettings.resizeMode" $ MediaTrackSettings.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackSettings)
                -> (value : Optional String)
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackSettings.prim__setResizeMode a
                                                                      (toFFI b)

  export
  setResizeMode' : (obj : MediaTrackSettings) -> JSIO ()
  setResizeMode' a = setResizeMode a Undef
  
  export
  sampleRate : (obj : MediaTrackSettings) -> JSIO $ Optional Int32
  sampleRate a = tryJS "MediaTrackSettings.sampleRate" $ MediaTrackSettings.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackSettings)
                -> (value : Optional Int32)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackSettings.prim__setSampleRate a
                                                                      (toFFI b)

  export
  setSampleRate' : (obj : MediaTrackSettings) -> JSIO ()
  setSampleRate' a = setSampleRate a Undef
  
  export
  sampleSize : (obj : MediaTrackSettings) -> JSIO $ Optional Int32
  sampleSize a = tryJS "MediaTrackSettings.sampleSize" $ MediaTrackSettings.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackSettings)
                -> (value : Optional Int32)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackSettings.prim__setSampleSize a
                                                                      (toFFI b)

  export
  setSampleSize' : (obj : MediaTrackSettings) -> JSIO ()
  setSampleSize' a = setSampleSize a Undef
  
  export
  width : (obj : MediaTrackSettings) -> JSIO $ Optional Int32
  width a = tryJS "MediaTrackSettings.width" $ MediaTrackSettings.prim__width a
  
  export
  setWidth : (obj : MediaTrackSettings) -> (value : Optional Int32) -> JSIO ()
  setWidth a b = primJS $ MediaTrackSettings.prim__setWidth a (toFFI b)

  export
  setWidth' : (obj : MediaTrackSettings) -> JSIO ()
  setWidth' a = setWidth a Undef

namespace MediaTrackSupportedConstraints
  
  public export
  JSType MediaTrackSupportedConstraints where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (width : Optional Bool)
      -> (height : Optional Bool)
      -> (aspectRatio : Optional Bool)
      -> (frameRate : Optional Bool)
      -> (facingMode : Optional Bool)
      -> (resizeMode : Optional Bool)
      -> (sampleRate : Optional Bool)
      -> (sampleSize : Optional Bool)
      -> (echoCancellation : Optional Bool)
      -> (autoGainControl : Optional Bool)
      -> (noiseSuppression : Optional Bool)
      -> (latency : Optional Bool)
      -> (channelCount : Optional Bool)
      -> (deviceId : Optional Bool)
      -> (groupId : Optional Bool)
      -> JSIO MediaTrackSupportedConstraints
  new a b c d e f g h i j k l m n o = primJS $ MediaTrackSupportedConstraints.prim__new (toFFI a)
                                                                                        (toFFI b)
                                                                                        (toFFI c)
                                                                                        (toFFI d)
                                                                                        (toFFI e)
                                                                                        (toFFI f)
                                                                                        (toFFI g)
                                                                                        (toFFI h)
                                                                                        (toFFI i)
                                                                                        (toFFI j)
                                                                                        (toFFI k)
                                                                                        (toFFI l)
                                                                                        (toFFI m)
                                                                                        (toFFI n)
                                                                                        (toFFI o)

  export
  new' : JSIO MediaTrackSupportedConstraints
  new' = new Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
  
  export
  aspectRatio : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  aspectRatio a = tryJS "MediaTrackSupportedConstraints.aspectRatio" $ MediaTrackSupportedConstraints.prim__aspectRatio a
  
  export
  setAspectRatio :  (obj : MediaTrackSupportedConstraints)
                 -> (value : Optional Bool)
                 -> JSIO ()
  setAspectRatio a b = primJS $ MediaTrackSupportedConstraints.prim__setAspectRatio a
                                                                                    (toFFI b)

  export
  setAspectRatio' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setAspectRatio' a = setAspectRatio a Undef
  
  export
  autoGainControl :  (obj : MediaTrackSupportedConstraints)
                  -> JSIO $ Optional Bool
  autoGainControl a = tryJS "MediaTrackSupportedConstraints.autoGainControl" $ MediaTrackSupportedConstraints.prim__autoGainControl a
  
  export
  setAutoGainControl :  (obj : MediaTrackSupportedConstraints)
                     -> (value : Optional Bool)
                     -> JSIO ()
  setAutoGainControl a b = primJS $ MediaTrackSupportedConstraints.prim__setAutoGainControl a
                                                                                            (toFFI b)

  export
  setAutoGainControl' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setAutoGainControl' a = setAutoGainControl a Undef
  
  export
  channelCount : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  channelCount a = tryJS "MediaTrackSupportedConstraints.channelCount" $ MediaTrackSupportedConstraints.prim__channelCount a
  
  export
  setChannelCount :  (obj : MediaTrackSupportedConstraints)
                  -> (value : Optional Bool)
                  -> JSIO ()
  setChannelCount a b = primJS $ MediaTrackSupportedConstraints.prim__setChannelCount a
                                                                                      (toFFI b)

  export
  setChannelCount' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setChannelCount' a = setChannelCount a Undef
  
  export
  deviceId : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  deviceId a = tryJS "MediaTrackSupportedConstraints.deviceId" $ MediaTrackSupportedConstraints.prim__deviceId a
  
  export
  setDeviceId :  (obj : MediaTrackSupportedConstraints)
              -> (value : Optional Bool)
              -> JSIO ()
  setDeviceId a b = primJS $ MediaTrackSupportedConstraints.prim__setDeviceId a
                                                                              (toFFI b)

  export
  setDeviceId' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setDeviceId' a = setDeviceId a Undef
  
  export
  echoCancellation :  (obj : MediaTrackSupportedConstraints)
                   -> JSIO $ Optional Bool
  echoCancellation a = tryJS "MediaTrackSupportedConstraints.echoCancellation" $ MediaTrackSupportedConstraints.prim__echoCancellation a
  
  export
  setEchoCancellation :  (obj : MediaTrackSupportedConstraints)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setEchoCancellation a b = primJS $ MediaTrackSupportedConstraints.prim__setEchoCancellation a
                                                                                              (toFFI b)

  export
  setEchoCancellation' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setEchoCancellation' a = setEchoCancellation a Undef
  
  export
  facingMode : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  facingMode a = tryJS "MediaTrackSupportedConstraints.facingMode" $ MediaTrackSupportedConstraints.prim__facingMode a
  
  export
  setFacingMode :  (obj : MediaTrackSupportedConstraints)
                -> (value : Optional Bool)
                -> JSIO ()
  setFacingMode a b = primJS $ MediaTrackSupportedConstraints.prim__setFacingMode a
                                                                                  (toFFI b)

  export
  setFacingMode' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setFacingMode' a = setFacingMode a Undef
  
  export
  frameRate : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  frameRate a = tryJS "MediaTrackSupportedConstraints.frameRate" $ MediaTrackSupportedConstraints.prim__frameRate a
  
  export
  setFrameRate :  (obj : MediaTrackSupportedConstraints)
               -> (value : Optional Bool)
               -> JSIO ()
  setFrameRate a b = primJS $ MediaTrackSupportedConstraints.prim__setFrameRate a
                                                                                (toFFI b)

  export
  setFrameRate' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setFrameRate' a = setFrameRate a Undef
  
  export
  groupId : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  groupId a = tryJS "MediaTrackSupportedConstraints.groupId" $ MediaTrackSupportedConstraints.prim__groupId a
  
  export
  setGroupId :  (obj : MediaTrackSupportedConstraints)
             -> (value : Optional Bool)
             -> JSIO ()
  setGroupId a b = primJS $ MediaTrackSupportedConstraints.prim__setGroupId a
                                                                            (toFFI b)

  export
  setGroupId' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setGroupId' a = setGroupId a Undef
  
  export
  height : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  height a = tryJS "MediaTrackSupportedConstraints.height" $ MediaTrackSupportedConstraints.prim__height a
  
  export
  setHeight :  (obj : MediaTrackSupportedConstraints)
            -> (value : Optional Bool)
            -> JSIO ()
  setHeight a b = primJS $ MediaTrackSupportedConstraints.prim__setHeight a
                                                                          (toFFI b)

  export
  setHeight' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setHeight' a = setHeight a Undef
  
  export
  latency : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  latency a = tryJS "MediaTrackSupportedConstraints.latency" $ MediaTrackSupportedConstraints.prim__latency a
  
  export
  setLatency :  (obj : MediaTrackSupportedConstraints)
             -> (value : Optional Bool)
             -> JSIO ()
  setLatency a b = primJS $ MediaTrackSupportedConstraints.prim__setLatency a
                                                                            (toFFI b)

  export
  setLatency' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setLatency' a = setLatency a Undef
  
  export
  noiseSuppression :  (obj : MediaTrackSupportedConstraints)
                   -> JSIO $ Optional Bool
  noiseSuppression a = tryJS "MediaTrackSupportedConstraints.noiseSuppression" $ MediaTrackSupportedConstraints.prim__noiseSuppression a
  
  export
  setNoiseSuppression :  (obj : MediaTrackSupportedConstraints)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setNoiseSuppression a b = primJS $ MediaTrackSupportedConstraints.prim__setNoiseSuppression a
                                                                                              (toFFI b)

  export
  setNoiseSuppression' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setNoiseSuppression' a = setNoiseSuppression a Undef
  
  export
  resizeMode : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  resizeMode a = tryJS "MediaTrackSupportedConstraints.resizeMode" $ MediaTrackSupportedConstraints.prim__resizeMode a
  
  export
  setResizeMode :  (obj : MediaTrackSupportedConstraints)
                -> (value : Optional Bool)
                -> JSIO ()
  setResizeMode a b = primJS $ MediaTrackSupportedConstraints.prim__setResizeMode a
                                                                                  (toFFI b)

  export
  setResizeMode' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setResizeMode' a = setResizeMode a Undef
  
  export
  sampleRate : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  sampleRate a = tryJS "MediaTrackSupportedConstraints.sampleRate" $ MediaTrackSupportedConstraints.prim__sampleRate a
  
  export
  setSampleRate :  (obj : MediaTrackSupportedConstraints)
                -> (value : Optional Bool)
                -> JSIO ()
  setSampleRate a b = primJS $ MediaTrackSupportedConstraints.prim__setSampleRate a
                                                                                  (toFFI b)

  export
  setSampleRate' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setSampleRate' a = setSampleRate a Undef
  
  export
  sampleSize : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  sampleSize a = tryJS "MediaTrackSupportedConstraints.sampleSize" $ MediaTrackSupportedConstraints.prim__sampleSize a
  
  export
  setSampleSize :  (obj : MediaTrackSupportedConstraints)
                -> (value : Optional Bool)
                -> JSIO ()
  setSampleSize a b = primJS $ MediaTrackSupportedConstraints.prim__setSampleSize a
                                                                                  (toFFI b)

  export
  setSampleSize' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setSampleSize' a = setSampleSize a Undef
  
  export
  width : (obj : MediaTrackSupportedConstraints) -> JSIO $ Optional Bool
  width a = tryJS "MediaTrackSupportedConstraints.width" $ MediaTrackSupportedConstraints.prim__width a
  
  export
  setWidth :  (obj : MediaTrackSupportedConstraints)
           -> (value : Optional Bool)
           -> JSIO ()
  setWidth a b = primJS $ MediaTrackSupportedConstraints.prim__setWidth a
                                                                        (toFFI b)

  export
  setWidth' : (obj : MediaTrackSupportedConstraints) -> JSIO ()
  setWidth' a = setWidth a Undef

namespace Settings
  
  public export
  JSType Settings where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : JSIO Settings
  new = primJS $ Settings.prim__new 

namespace ULongRange
  
  public export
  JSType ULongRange where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (max : Optional UInt32) -> (min : Optional UInt32) -> JSIO ULongRange
  new a b = primJS $ ULongRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ULongRange
  new' = new Undef Undef
  
  export
  max : (obj : ULongRange) -> JSIO $ Optional UInt32
  max a = tryJS "ULongRange.max" $ ULongRange.prim__max a
  
  export
  setMax : (obj : ULongRange) -> (value : Optional UInt32) -> JSIO ()
  setMax a b = primJS $ ULongRange.prim__setMax a (toFFI b)

  export
  setMax' : (obj : ULongRange) -> JSIO ()
  setMax' a = setMax a Undef
  
  export
  min : (obj : ULongRange) -> JSIO $ Optional UInt32
  min a = tryJS "ULongRange.min" $ ULongRange.prim__min a
  
  export
  setMin : (obj : ULongRange) -> (value : Optional UInt32) -> JSIO ()
  setMin a b = primJS $ ULongRange.prim__setMin a (toFFI b)

  export
  setMin' : (obj : ULongRange) -> JSIO ()
  setMin' a = setMin a Undef

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

