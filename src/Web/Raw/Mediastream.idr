module Web.Raw.Mediastream

import JS
import Web.Internal.MediastreamPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  export
  applyConstraints' :
       {auto _ : Cast t2 Constraints}
    -> (obj : ConstrainablePattern)
    -> (constraints : Optional t2)
    -> JSIO (Promise Undefined)
  applyConstraints' a b = primJS $
    ConstrainablePattern.prim__applyConstraints a (optUp b)
  
  export
  applyConstraints : (obj : ConstrainablePattern) -> JSIO (Promise Undefined)
  applyConstraints a = primJS $
    ConstrainablePattern.prim__applyConstraints a undef

  
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
  
  export
  getCapabilities : (obj : InputDeviceInfo) -> JSIO MediaTrackCapabilities
  getCapabilities a = primJS $ InputDeviceInfo.prim__getCapabilities a



namespace MediaDeviceInfo
  
  export
  deviceId : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
  deviceId a = primJS $ MediaDeviceInfo.prim__deviceId (cast a)

  
  export
  groupId : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
  groupId a = primJS $ MediaDeviceInfo.prim__groupId (cast a)

  
  export
  kind :
       {auto _ : Cast t1 MediaDeviceInfo}
    -> (obj : t1)
    -> JSIO MediaDeviceKind
  kind a = tryJS "MediaDeviceInfo.kind" $ MediaDeviceInfo.prim__kind (cast a)

  
  export
  label : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO String
  label a = primJS $ MediaDeviceInfo.prim__label (cast a)

  
  export
  toJSON : {auto _ : Cast t1 MediaDeviceInfo} -> (obj : t1) -> JSIO Object
  toJSON a = primJS $ MediaDeviceInfo.prim__toJSON (cast a)



namespace MediaDevices
  
  export
  ondevicechange : MediaDevices -> Attribute False Maybe EventHandlerNonNull
  ondevicechange v = fromNullablePrim
                       "MediaDevices.getondevicechange"
                       prim__ondevicechange
                       prim__setOndevicechange
                       v

  
  export
  enumerateDevices :
       (obj : MediaDevices)
    -> JSIO (Promise (Array MediaDeviceInfo))
  enumerateDevices a = primJS $ MediaDevices.prim__enumerateDevices a

  
  export
  getSupportedConstraints :
       (obj : MediaDevices)
    -> JSIO MediaTrackSupportedConstraints
  getSupportedConstraints a = primJS $
    MediaDevices.prim__getSupportedConstraints a

  
  export
  getUserMedia' :
       {auto _ : Cast t2 MediaStreamConstraints}
    -> (obj : MediaDevices)
    -> (constraints : Optional t2)
    -> JSIO (Promise MediaStream)
  getUserMedia' a b = primJS $ MediaDevices.prim__getUserMedia a (optUp b)
  
  export
  getUserMedia : (obj : MediaDevices) -> JSIO (Promise MediaStream)
  getUserMedia a = primJS $ MediaDevices.prim__getUserMedia a undef



namespace MediaStream
  
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
  onaddtrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
  onaddtrack v = fromNullablePrim
                   "MediaStream.getonaddtrack"
                   prim__onaddtrack
                   prim__setOnaddtrack
                   v

  
  export
  onremovetrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
  onremovetrack v = fromNullablePrim
                      "MediaStream.getonremovetrack"
                      prim__onremovetrack
                      prim__setOnremovetrack
                      v

  
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
  getTrackById :
       (obj : MediaStream)
    -> (trackId : String)
    -> JSIO (Maybe MediaStreamTrack)
  getTrackById a b = tryJS "MediaStream.getTrackById" $
    MediaStream.prim__getTrackById a b

  
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
  
  export
  enabled : MediaStreamTrack -> Attribute True Prelude.id Bool
  enabled v = fromPrim
                "MediaStreamTrack.getenabled"
                prim__enabled
                prim__setEnabled
                v

  
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
  onended : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onended v = fromNullablePrim
                "MediaStreamTrack.getonended"
                prim__onended
                prim__setOnended
                v

  
  export
  onmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onmute v = fromNullablePrim
               "MediaStreamTrack.getonmute"
               prim__onmute
               prim__setOnmute
               v

  
  export
  onunmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onunmute v = fromNullablePrim
                 "MediaStreamTrack.getonunmute"
                 prim__onunmute
                 prim__setOnunmute
                 v

  
  export
  readyState : (obj : MediaStreamTrack) -> JSIO MediaStreamTrackState
  readyState a = tryJS "MediaStreamTrack.readyState" $
    MediaStreamTrack.prim__readyState a

  
  export
  applyConstraints' :
       {auto _ : Cast t2 MediaTrackConstraints}
    -> (obj : MediaStreamTrack)
    -> (constraints : Optional t2)
    -> JSIO (Promise Undefined)
  applyConstraints' a b = primJS $
    MediaStreamTrack.prim__applyConstraints a (optUp b)
  
  export
  applyConstraints : (obj : MediaStreamTrack) -> JSIO (Promise Undefined)
  applyConstraints a = primJS $ MediaStreamTrack.prim__applyConstraints a undef

  
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
  
  export
  new :
       {auto _ : Cast t2 MediaStreamTrackEventInit}
    -> (type : String)
    -> (eventInitDict : t2)
    -> JSIO MediaStreamTrackEvent
  new a b = primJS $ MediaStreamTrackEvent.prim__new a (cast b)

  
  export
  track : (obj : MediaStreamTrackEvent) -> JSIO MediaStreamTrack
  track a = primJS $ MediaStreamTrackEvent.prim__track a



namespace OverconstrainedError
  
  export
  new' :
       (constraint : String)
    -> (message : Optional String)
    -> JSIO OverconstrainedError
  new' a b = primJS $ OverconstrainedError.prim__new a (toFFI b)
  
  export
  new : (constraint : String) -> JSIO OverconstrainedError
  new a = primJS $ OverconstrainedError.prim__new a undef

  
  export
  constraint : (obj : OverconstrainedError) -> JSIO String
  constraint a = primJS $ OverconstrainedError.prim__constraint a





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  export
  new : JSIO Capabilities
  new = primJS $ Capabilities.prim__new



namespace ConstrainBooleanParameters
  
  export
  new' :
       (exact : Optional Bool)
    -> (ideal : Optional Bool)
    -> JSIO ConstrainBooleanParameters
  new' a b = primJS $ ConstrainBooleanParameters.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO ConstrainBooleanParameters
  new = primJS $ ConstrainBooleanParameters.prim__new undef undef

  
  export
  exact :
       {auto _ : Cast t ConstrainBooleanParameters}
    -> t
    -> Attribute False Optional Bool
  exact v = fromUndefOrPrimNoDefault
              "ConstrainBooleanParameters.getexact"
              prim__exact
              prim__setExact
              (cast {to = ConstrainBooleanParameters} v)

  
  export
  ideal :
       {auto _ : Cast t ConstrainBooleanParameters}
    -> t
    -> Attribute False Optional Bool
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainBooleanParameters.getideal"
              prim__ideal
              prim__setIdeal
              (cast {to = ConstrainBooleanParameters} v)



namespace ConstrainDOMStringParameters
  
  export
  new' :
       (exact : Optional (HSum [String, Array String]))
    -> (ideal : Optional (HSum [String, Array String]))
    -> JSIO ConstrainDOMStringParameters
  new' a b = primJS $ ConstrainDOMStringParameters.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO ConstrainDOMStringParameters
  new = primJS $ ConstrainDOMStringParameters.prim__new undef undef

  
  export
  exact :
       {auto _ : Cast t ConstrainDOMStringParameters}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  exact v = fromUndefOrPrimNoDefault
              "ConstrainDOMStringParameters.getexact"
              prim__exact
              prim__setExact
              (cast {to = ConstrainDOMStringParameters} v)

  
  export
  ideal :
       {auto _ : Cast t ConstrainDOMStringParameters}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainDOMStringParameters.getideal"
              prim__ideal
              prim__setIdeal
              (cast {to = ConstrainDOMStringParameters} v)



namespace ConstrainDoubleRange
  
  export
  new' :
       (exact : Optional Double)
    -> (ideal : Optional Double)
    -> JSIO ConstrainDoubleRange
  new' a b = primJS $ ConstrainDoubleRange.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO ConstrainDoubleRange
  new = primJS $ ConstrainDoubleRange.prim__new undef undef

  
  export
  exact :
       {auto _ : Cast t ConstrainDoubleRange}
    -> t
    -> Attribute False Optional Double
  exact v = fromUndefOrPrimNoDefault
              "ConstrainDoubleRange.getexact"
              prim__exact
              prim__setExact
              (cast {to = ConstrainDoubleRange} v)

  
  export
  ideal :
       {auto _ : Cast t ConstrainDoubleRange}
    -> t
    -> Attribute False Optional Double
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainDoubleRange.getideal"
              prim__ideal
              prim__setIdeal
              (cast {to = ConstrainDoubleRange} v)



namespace ConstrainULongRange
  
  export
  new' :
       (exact : Optional Bits32)
    -> (ideal : Optional Bits32)
    -> JSIO ConstrainULongRange
  new' a b = primJS $ ConstrainULongRange.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO ConstrainULongRange
  new = primJS $ ConstrainULongRange.prim__new undef undef

  
  export
  exact :
       {auto _ : Cast t ConstrainULongRange}
    -> t
    -> Attribute False Optional Bits32
  exact v = fromUndefOrPrimNoDefault
              "ConstrainULongRange.getexact"
              prim__exact
              prim__setExact
              (cast {to = ConstrainULongRange} v)

  
  export
  ideal :
       {auto _ : Cast t ConstrainULongRange}
    -> t
    -> Attribute False Optional Bits32
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainULongRange.getideal"
              prim__ideal
              prim__setIdeal
              (cast {to = ConstrainULongRange} v)



namespace ConstraintSet
  
  export
  new : JSIO ConstraintSet
  new = primJS $ ConstraintSet.prim__new



namespace Constraints
  
  export
  new' : (advanced : Optional (Array ConstraintSet)) -> JSIO Constraints
  new' a = primJS $ Constraints.prim__new (toFFI a)
  
  export
  new : JSIO Constraints
  new = primJS $ Constraints.prim__new undef

  
  export
  advanced :
       {auto _ : Cast t Constraints}
    -> t
    -> Attribute False Optional (Array ConstraintSet)
  advanced v = fromUndefOrPrimNoDefault
                 "Constraints.getadvanced"
                 prim__advanced
                 prim__setAdvanced
                 (cast {to = Constraints} v)



namespace DoubleRange
  
  export
  new' : (max : Optional Double) -> (min : Optional Double) -> JSIO DoubleRange
  new' a b = primJS $ DoubleRange.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO DoubleRange
  new = primJS $ DoubleRange.prim__new undef undef

  
  export
  max : {auto _ : Cast t DoubleRange} -> t -> Attribute False Optional Double
  max v = fromUndefOrPrimNoDefault
            "DoubleRange.getmax"
            prim__max
            prim__setMax
            (cast {to = DoubleRange} v)

  
  export
  min : {auto _ : Cast t DoubleRange} -> t -> Attribute False Optional Double
  min v = fromUndefOrPrimNoDefault
            "DoubleRange.getmin"
            prim__min
            prim__setMin
            (cast {to = DoubleRange} v)



namespace MediaStreamConstraints
  
  export
  new' :
       (video : Optional (HSum [Bool, MediaTrackConstraints]))
    -> (audio : Optional (HSum [Bool, MediaTrackConstraints]))
    -> JSIO MediaStreamConstraints
  new' a b = primJS $ MediaStreamConstraints.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO MediaStreamConstraints
  new = primJS $ MediaStreamConstraints.prim__new undef undef

  
  export
  audio :
       {auto _ : Cast t MediaStreamConstraints}
    -> t
    -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
  audio v = fromUndefOrPrimNoDefault
              "MediaStreamConstraints.getaudio"
              prim__audio
              prim__setAudio
              (cast {to = MediaStreamConstraints} v)

  
  export
  video :
       {auto _ : Cast t MediaStreamConstraints}
    -> t
    -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
  video v = fromUndefOrPrimNoDefault
              "MediaStreamConstraints.getvideo"
              prim__video
              prim__setVideo
              (cast {to = MediaStreamConstraints} v)



namespace MediaStreamTrackEventInit
  
  export
  new : (track : MediaStreamTrack) -> JSIO MediaStreamTrackEventInit
  new a = primJS $ MediaStreamTrackEventInit.prim__new a

  
  export
  track :
       {auto _ : Cast t MediaStreamTrackEventInit}
    -> t
    -> Attribute True Prelude.id MediaStreamTrack
  track v = fromPrim
              "MediaStreamTrackEventInit.gettrack"
              prim__track
              prim__setTrack
              (cast {to = MediaStreamTrackEventInit} v)



namespace MediaTrackCapabilities
  
  export
  new' :
       {auto _ : Cast t1 ULongRange}
    -> {auto _ : Cast t2 ULongRange}
    -> {auto _ : Cast t3 DoubleRange}
    -> {auto _ : Cast t4 DoubleRange}
    -> {auto _ : Cast t7 ULongRange}
    -> {auto _ : Cast t8 ULongRange}
    -> {auto _ : Cast t12 DoubleRange}
    -> {auto _ : Cast t13 ULongRange}
    -> (width : Optional t1)
    -> (height : Optional t2)
    -> (aspectRatio : Optional t3)
    -> (frameRate : Optional t4)
    -> (facingMode : Optional (Array String))
    -> (resizeMode : Optional (Array String))
    -> (sampleRate : Optional t7)
    -> (sampleSize : Optional t8)
    -> (echoCancellation : Optional (Array Boolean))
    -> (autoGainControl : Optional (Array Boolean))
    -> (noiseSuppression : Optional (Array Boolean))
    -> (latency : Optional t12)
    -> (channelCount : Optional t13)
    -> (deviceId : Optional String)
    -> (groupId : Optional String)
    -> JSIO MediaTrackCapabilities
  new' a b c d e f g h i j k l m n o = primJS $
    MediaTrackCapabilities.prim__new
      (optUp a)
      (optUp b)
      (optUp c)
      (optUp d)
      (toFFI e)
      (toFFI f)
      (optUp g)
      (optUp h)
      (toFFI i)
      (toFFI j)
      (toFFI k)
      (optUp l)
      (optUp m)
      (toFFI n)
      (toFFI o)
  
  export
  new : JSIO MediaTrackCapabilities
  new = primJS $
    MediaTrackCapabilities.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef

  
  export
  aspectRatio :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional DoubleRange
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackCapabilities.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (cast {to = MediaTrackCapabilities} v)

  
  export
  autoGainControl :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional (Array Boolean)
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackCapabilities.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (cast {to = MediaTrackCapabilities} v)

  
  export
  channelCount :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional ULongRange
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackCapabilities.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (cast {to = MediaTrackCapabilities} v)

  
  export
  deviceId :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (cast {to = MediaTrackCapabilities} v)

  
  export
  echoCancellation :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional (Array Boolean)
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackCapabilities.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (cast {to = MediaTrackCapabilities} v)

  
  export
  facingMode :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional (Array String)
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (cast {to = MediaTrackCapabilities} v)

  
  export
  frameRate :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional DoubleRange
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackCapabilities.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (cast {to = MediaTrackCapabilities} v)

  
  export
  groupId :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional String
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackCapabilities.getgroupId"
                prim__groupId
                prim__setGroupId
                (cast {to = MediaTrackCapabilities} v)

  
  export
  height :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional ULongRange
  height v = fromUndefOrPrimNoDefault
               "MediaTrackCapabilities.getheight"
               prim__height
               prim__setHeight
               (cast {to = MediaTrackCapabilities} v)

  
  export
  latency :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional DoubleRange
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackCapabilities.getlatency"
                prim__latency
                prim__setLatency
                (cast {to = MediaTrackCapabilities} v)

  
  export
  noiseSuppression :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional (Array Boolean)
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackCapabilities.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (cast {to = MediaTrackCapabilities} v)

  
  export
  resizeMode :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional (Array String)
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (cast {to = MediaTrackCapabilities} v)

  
  export
  sampleRate :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional ULongRange
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (cast {to = MediaTrackCapabilities} v)

  
  export
  sampleSize :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional ULongRange
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (cast {to = MediaTrackCapabilities} v)

  
  export
  width :
       {auto _ : Cast t MediaTrackCapabilities}
    -> t
    -> Attribute False Optional ULongRange
  width v = fromUndefOrPrimNoDefault
              "MediaTrackCapabilities.getwidth"
              prim__width
              prim__setWidth
              (cast {to = MediaTrackCapabilities} v)



namespace MediaTrackConstraintSet
  
  export
  new' :
       (width : Optional (HSum [Bits32, ConstrainULongRange]))
    -> (height : Optional (HSum [Bits32, ConstrainULongRange]))
    -> (aspectRatio : Optional (HSum [Double, ConstrainDoubleRange]))
    -> (frameRate : Optional (HSum [Double, ConstrainDoubleRange]))
    -> (facingMode : Optional
                       (HSum
                          [String, Array String, ConstrainDOMStringParameters]))
    -> (resizeMode : Optional
                       (HSum
                          [String, Array String, ConstrainDOMStringParameters]))
    -> (sampleRate : Optional (HSum [Bits32, ConstrainULongRange]))
    -> (sampleSize : Optional (HSum [Bits32, ConstrainULongRange]))
    -> (echoCancellation : Optional (HSum [Bool, ConstrainBooleanParameters]))
    -> (autoGainControl : Optional (HSum [Bool, ConstrainBooleanParameters]))
    -> (noiseSuppression : Optional (HSum [Bool, ConstrainBooleanParameters]))
    -> (latency : Optional (HSum [Double, ConstrainDoubleRange]))
    -> (channelCount : Optional (HSum [Bits32, ConstrainULongRange]))
    -> (deviceId : Optional
                     (HSum
                        [String, Array String, ConstrainDOMStringParameters]))
    -> (groupId : Optional
                    (HSum [String, Array String, ConstrainDOMStringParameters]))
    -> JSIO MediaTrackConstraintSet
  new' a b c d e f g h i j k l m n o = primJS $
    MediaTrackConstraintSet.prim__new
      (toFFI a)
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
  new : JSIO MediaTrackConstraintSet
  new = primJS $
    MediaTrackConstraintSet.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef

  
  export
  aspectRatio :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackConstraintSet.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (cast {to = MediaTrackConstraintSet} v)

  
  export
  autoGainControl :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackConstraintSet.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (cast {to = MediaTrackConstraintSet} v)

  
  export
  channelCount :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackConstraintSet.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (cast {to = MediaTrackConstraintSet} v)

  
  export
  deviceId :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (cast {to = MediaTrackConstraintSet} v)

  
  export
  echoCancellation :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackConstraintSet.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (cast {to = MediaTrackConstraintSet} v)

  
  export
  facingMode :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (cast {to = MediaTrackConstraintSet} v)

  
  export
  frameRate :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackConstraintSet.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (cast {to = MediaTrackConstraintSet} v)

  
  export
  groupId :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackConstraintSet.getgroupId"
                prim__groupId
                prim__setGroupId
                (cast {to = MediaTrackConstraintSet} v)

  
  export
  height :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  height v = fromUndefOrPrimNoDefault
               "MediaTrackConstraintSet.getheight"
               prim__height
               prim__setHeight
               (cast {to = MediaTrackConstraintSet} v)

  
  export
  latency :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackConstraintSet.getlatency"
                prim__latency
                prim__setLatency
                (cast {to = MediaTrackConstraintSet} v)

  
  export
  noiseSuppression :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackConstraintSet.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (cast {to = MediaTrackConstraintSet} v)

  
  export
  resizeMode :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (cast {to = MediaTrackConstraintSet} v)

  
  export
  sampleRate :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (cast {to = MediaTrackConstraintSet} v)

  
  export
  sampleSize :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (cast {to = MediaTrackConstraintSet} v)

  
  export
  width :
       {auto _ : Cast t MediaTrackConstraintSet}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  width v = fromUndefOrPrimNoDefault
              "MediaTrackConstraintSet.getwidth"
              prim__width
              prim__setWidth
              (cast {to = MediaTrackConstraintSet} v)



namespace MediaTrackConstraints
  
  export
  new' :
       (advanced : Optional (Array MediaTrackConstraintSet))
    -> JSIO MediaTrackConstraints
  new' a = primJS $ MediaTrackConstraints.prim__new (toFFI a)
  
  export
  new : JSIO MediaTrackConstraints
  new = primJS $ MediaTrackConstraints.prim__new undef

  
  export
  advanced :
       {auto _ : Cast t MediaTrackConstraints}
    -> t
    -> Attribute False Optional (Array MediaTrackConstraintSet)
  advanced v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraints.getadvanced"
                 prim__advanced
                 prim__setAdvanced
                 (cast {to = MediaTrackConstraints} v)



namespace MediaTrackSettings
  
  export
  new' :
       (width : Optional Int32)
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
  new' a b c d e f g h i j k l m n o = primJS $
    MediaTrackSettings.prim__new
      (toFFI a)
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
  new : JSIO MediaTrackSettings
  new = primJS $
    MediaTrackSettings.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef

  
  export
  aspectRatio :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Double
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackSettings.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (cast {to = MediaTrackSettings} v)

  
  export
  autoGainControl :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Bool
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackSettings.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (cast {to = MediaTrackSettings} v)

  
  export
  channelCount :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Int32
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackSettings.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (cast {to = MediaTrackSettings} v)

  
  export
  deviceId :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (cast {to = MediaTrackSettings} v)

  
  export
  echoCancellation :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Bool
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackSettings.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (cast {to = MediaTrackSettings} v)

  
  export
  facingMode :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional String
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (cast {to = MediaTrackSettings} v)

  
  export
  frameRate :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Double
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackSettings.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (cast {to = MediaTrackSettings} v)

  
  export
  groupId :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional String
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackSettings.getgroupId"
                prim__groupId
                prim__setGroupId
                (cast {to = MediaTrackSettings} v)

  
  export
  height :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Int32
  height v = fromUndefOrPrimNoDefault
               "MediaTrackSettings.getheight"
               prim__height
               prim__setHeight
               (cast {to = MediaTrackSettings} v)

  
  export
  latency :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Double
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackSettings.getlatency"
                prim__latency
                prim__setLatency
                (cast {to = MediaTrackSettings} v)

  
  export
  noiseSuppression :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Bool
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackSettings.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (cast {to = MediaTrackSettings} v)

  
  export
  resizeMode :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional String
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (cast {to = MediaTrackSettings} v)

  
  export
  sampleRate :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Int32
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (cast {to = MediaTrackSettings} v)

  
  export
  sampleSize :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Int32
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (cast {to = MediaTrackSettings} v)

  
  export
  width :
       {auto _ : Cast t MediaTrackSettings}
    -> t
    -> Attribute False Optional Int32
  width v = fromUndefOrPrimNoDefault
              "MediaTrackSettings.getwidth"
              prim__width
              prim__setWidth
              (cast {to = MediaTrackSettings} v)



namespace MediaTrackSupportedConstraints
  
  export
  new' :
       (width : Optional Bool)
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
  new' a b c d e f g h i j k l m n o = primJS $
    MediaTrackSupportedConstraints.prim__new
      (toFFI a)
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
  new : JSIO MediaTrackSupportedConstraints
  new = primJS $
    MediaTrackSupportedConstraints.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef

  
  export
  aspectRatio :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  aspectRatio v = fromUndefOrPrim
                    "MediaTrackSupportedConstraints.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    True
                    (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  autoGainControl :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  autoGainControl v = fromUndefOrPrim
                        "MediaTrackSupportedConstraints.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        True
                        (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  channelCount :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  channelCount v = fromUndefOrPrim
                     "MediaTrackSupportedConstraints.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     True
                     (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  deviceId :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  deviceId v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 True
                 (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  echoCancellation :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  echoCancellation v = fromUndefOrPrim
                         "MediaTrackSupportedConstraints.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         True
                         (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  facingMode :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  facingMode v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   True
                   (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  frameRate :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  frameRate v = fromUndefOrPrim
                  "MediaTrackSupportedConstraints.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  True
                  (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  groupId :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  groupId v = fromUndefOrPrim
                "MediaTrackSupportedConstraints.getgroupId"
                prim__groupId
                prim__setGroupId
                True
                (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  height :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  height v = fromUndefOrPrim
               "MediaTrackSupportedConstraints.getheight"
               prim__height
               prim__setHeight
               True
               (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  latency :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  latency v = fromUndefOrPrim
                "MediaTrackSupportedConstraints.getlatency"
                prim__latency
                prim__setLatency
                True
                (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  noiseSuppression :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  noiseSuppression v = fromUndefOrPrim
                         "MediaTrackSupportedConstraints.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         True
                         (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  resizeMode :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  resizeMode v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   True
                   (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  sampleRate :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  sampleRate v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   True
                   (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  sampleSize :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  sampleSize v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   True
                   (cast {to = MediaTrackSupportedConstraints} v)

  
  export
  width :
       {auto _ : Cast t MediaTrackSupportedConstraints}
    -> t
    -> Attribute True Optional Bool
  width v = fromUndefOrPrim
              "MediaTrackSupportedConstraints.getwidth"
              prim__width
              prim__setWidth
              True
              (cast {to = MediaTrackSupportedConstraints} v)



namespace Settings
  
  export
  new : JSIO Settings
  new = primJS $ Settings.prim__new



namespace ULongRange
  
  export
  new' : (max : Optional Bits32) -> (min : Optional Bits32) -> JSIO ULongRange
  new' a b = primJS $ ULongRange.prim__new (toFFI a) (toFFI b)
  
  export
  new : JSIO ULongRange
  new = primJS $ ULongRange.prim__new undef undef

  
  export
  max : {auto _ : Cast t ULongRange} -> t -> Attribute False Optional Bits32
  max v = fromUndefOrPrimNoDefault
            "ULongRange.getmax"
            prim__max
            prim__setMax
            (cast {to = ULongRange} v)

  
  export
  min : {auto _ : Cast t ULongRange} -> t -> Attribute False Optional Bits32
  min v = fromUndefOrPrimNoDefault
            "ULongRange.getmin"
            prim__min
            prim__setMin
            (cast {to = ULongRange} v)




--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace NavigatorUserMediaErrorCallback
  
  export
  toNavigatorUserMediaErrorCallback :
       (DOMException -> IO ())
    -> JSIO NavigatorUserMediaErrorCallback
  toNavigatorUserMediaErrorCallback cb = primJS $ prim__toNavigatorUserMediaErrorCallback cb



namespace NavigatorUserMediaSuccessCallback
  
  export
  toNavigatorUserMediaSuccessCallback :
       (MediaStream -> IO ())
    -> JSIO NavigatorUserMediaSuccessCallback
  toNavigatorUserMediaSuccessCallback cb = primJS $ prim__toNavigatorUserMediaSuccessCallback cb


