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
  applyConstraints :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Constraints (Types t2)}
    -> (obj : ConstrainablePattern)
    -> {default Undef constraints : Optional t2}
    -> JSIO (Promise Undefined)
  applyConstraints a = primJS $
    ConstrainablePattern.prim__applyConstraints a (optUp constraints)


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
  deviceId :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
    -> (obj : t1)
    -> JSIO String
  deviceId a = primJS $ MediaDeviceInfo.prim__deviceId (up a)


  export
  groupId :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
    -> (obj : t1)
    -> JSIO String
  groupId a = primJS $ MediaDeviceInfo.prim__groupId (up a)


  export
  kind :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
    -> (obj : t1)
    -> JSIO MediaDeviceKind
  kind a = tryJS "MediaDeviceInfo.kind" $ MediaDeviceInfo.prim__kind (up a)


  export
  label :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
    -> (obj : t1)
    -> JSIO String
  label a = primJS $ MediaDeviceInfo.prim__label (up a)


  export
  toJSON :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
    -> (obj : t1)
    -> JSIO Object
  toJSON a = primJS $ MediaDeviceInfo.prim__toJSON (up a)



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
  getUserMedia :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem MediaStreamConstraints (Types t2)}
    -> (obj : MediaDevices)
    -> {default Undef constraints : Optional t2}
    -> JSIO (Promise MediaStream)
  getUserMedia a = primJS $
    MediaDevices.prim__getUserMedia a (optUp constraints)



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
  enabled : MediaStreamTrack -> Attribute True I Bool
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
  applyConstraints :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem MediaTrackConstraints (Types t2)}
    -> (obj : MediaStreamTrack)
    -> {default Undef constraints : Optional t2}
    -> JSIO (Promise Undefined)
  applyConstraints a = primJS $
    MediaStreamTrack.prim__applyConstraints a (optUp constraints)


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
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem MediaStreamTrackEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : t2)
    -> JSIO MediaStreamTrackEvent
  new a b = primJS $ MediaStreamTrackEvent.prim__new a (up b)


  export
  track : (obj : MediaStreamTrackEvent) -> JSIO MediaStreamTrack
  track a = primJS $ MediaStreamTrackEvent.prim__track a



namespace OverconstrainedError

  export
  new :
       (constraint : String)
    -> {default Undef message : Optional String}
    -> JSIO OverconstrainedError
  new a = primJS $ OverconstrainedError.prim__new a (toFFI message)


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
  new :
       {default Undef exact : Optional Bool}
    -> {default Undef ideal : Optional Bool}
    -> JSIO ConstrainBooleanParameters
  new = primJS $
    ConstrainBooleanParameters.prim__new (toFFI exact) (toFFI ideal)


  export
  exact :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainBooleanParameters (Types t)}
    -> t
    -> Attribute False Optional Bool
  exact v = fromUndefOrPrimNoDefault
              "ConstrainBooleanParameters.getexact"
              prim__exact
              prim__setExact
              (v :> ConstrainBooleanParameters)


  export
  ideal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainBooleanParameters (Types t)}
    -> t
    -> Attribute False Optional Bool
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainBooleanParameters.getideal"
              prim__ideal
              prim__setIdeal
              (v :> ConstrainBooleanParameters)



namespace ConstrainDOMStringParameters

  export
  new :
       {default Undef exact : Optional (NS I [String, Array String])}
    -> {default Undef ideal : Optional (NS I [String, Array String])}
    -> JSIO ConstrainDOMStringParameters
  new = primJS $
    ConstrainDOMStringParameters.prim__new (toFFI exact) (toFFI ideal)


  export
  exact :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainDOMStringParameters (Types t)}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  exact v = fromUndefOrPrimNoDefault
              "ConstrainDOMStringParameters.getexact"
              prim__exact
              prim__setExact
              (v :> ConstrainDOMStringParameters)


  export
  ideal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainDOMStringParameters (Types t)}
    -> t
    -> Attribute False Optional (Union2 String (Array String))
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainDOMStringParameters.getideal"
              prim__ideal
              prim__setIdeal
              (v :> ConstrainDOMStringParameters)



namespace ConstrainDoubleRange

  export
  new :
       {default Undef exact : Optional Double}
    -> {default Undef ideal : Optional Double}
    -> JSIO ConstrainDoubleRange
  new = primJS $ ConstrainDoubleRange.prim__new (toFFI exact) (toFFI ideal)


  export
  exact :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainDoubleRange (Types t)}
    -> t
    -> Attribute False Optional Double
  exact v = fromUndefOrPrimNoDefault
              "ConstrainDoubleRange.getexact"
              prim__exact
              prim__setExact
              (v :> ConstrainDoubleRange)


  export
  ideal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainDoubleRange (Types t)}
    -> t
    -> Attribute False Optional Double
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainDoubleRange.getideal"
              prim__ideal
              prim__setIdeal
              (v :> ConstrainDoubleRange)



namespace ConstrainULongRange

  export
  new :
       {default Undef exact : Optional Bits32}
    -> {default Undef ideal : Optional Bits32}
    -> JSIO ConstrainULongRange
  new = primJS $ ConstrainULongRange.prim__new (toFFI exact) (toFFI ideal)


  export
  exact :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainULongRange (Types t)}
    -> t
    -> Attribute False Optional Bits32
  exact v = fromUndefOrPrimNoDefault
              "ConstrainULongRange.getexact"
              prim__exact
              prim__setExact
              (v :> ConstrainULongRange)


  export
  ideal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ConstrainULongRange (Types t)}
    -> t
    -> Attribute False Optional Bits32
  ideal v = fromUndefOrPrimNoDefault
              "ConstrainULongRange.getideal"
              prim__ideal
              prim__setIdeal
              (v :> ConstrainULongRange)



namespace ConstraintSet

  export
  new : JSIO ConstraintSet
  new = primJS $ ConstraintSet.prim__new



namespace Constraints

  export
  new :
       {default Undef advanced : Optional (Array ConstraintSet)}
    -> JSIO Constraints
  new = primJS $ Constraints.prim__new (toFFI advanced)


  export
  advanced :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem Constraints (Types t)}
    -> t
    -> Attribute False Optional (Array ConstraintSet)
  advanced v = fromUndefOrPrimNoDefault
                 "Constraints.getadvanced"
                 prim__advanced
                 prim__setAdvanced
                 (v :> Constraints)



namespace DoubleRange

  export
  new :
       {default Undef max : Optional Double}
    -> {default Undef min : Optional Double}
    -> JSIO DoubleRange
  new = primJS $ DoubleRange.prim__new (toFFI max) (toFFI min)


  export
  max :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem DoubleRange (Types t)}
    -> t
    -> Attribute False Optional Double
  max v = fromUndefOrPrimNoDefault
            "DoubleRange.getmax"
            prim__max
            prim__setMax
            (v :> DoubleRange)


  export
  min :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem DoubleRange (Types t)}
    -> t
    -> Attribute False Optional Double
  min v = fromUndefOrPrimNoDefault
            "DoubleRange.getmin"
            prim__min
            prim__setMin
            (v :> DoubleRange)



namespace MediaStreamConstraints

  export
  new :
       {default Undef video : Optional (NS I [Bool, MediaTrackConstraints])}
    -> {default Undef audio : Optional (NS I [Bool, MediaTrackConstraints])}
    -> JSIO MediaStreamConstraints
  new = primJS $ MediaStreamConstraints.prim__new (toFFI video) (toFFI audio)


  export
  audio :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaStreamConstraints (Types t)}
    -> t
    -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
  audio v = fromUndefOrPrimNoDefault
              "MediaStreamConstraints.getaudio"
              prim__audio
              prim__setAudio
              (v :> MediaStreamConstraints)


  export
  video :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaStreamConstraints (Types t)}
    -> t
    -> Attribute False Optional (Union2 Boolean MediaTrackConstraints)
  video v = fromUndefOrPrimNoDefault
              "MediaStreamConstraints.getvideo"
              prim__video
              prim__setVideo
              (v :> MediaStreamConstraints)



namespace MediaStreamTrackEventInit

  export
  new : (track : MediaStreamTrack) -> JSIO MediaStreamTrackEventInit
  new a = primJS $ MediaStreamTrackEventInit.prim__new a


  export
  track :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaStreamTrackEventInit (Types t)}
    -> t
    -> Attribute True I MediaStreamTrack
  track v = fromPrim
              "MediaStreamTrackEventInit.gettrack"
              prim__track
              prim__setTrack
              (v :> MediaStreamTrackEventInit)



namespace MediaTrackCapabilities

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t2}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : JSType t4}
    -> {auto 0 _ : JSType t7}
    -> {auto 0 _ : JSType t8}
    -> {auto 0 _ : JSType t12}
    -> {auto 0 _ : JSType t13}
    -> {auto 0 _ : Elem ULongRange (Types t1)}
    -> {auto 0 _ : Elem ULongRange (Types t2)}
    -> {auto 0 _ : Elem DoubleRange (Types t3)}
    -> {auto 0 _ : Elem DoubleRange (Types t4)}
    -> {auto 0 _ : Elem ULongRange (Types t7)}
    -> {auto 0 _ : Elem ULongRange (Types t8)}
    -> {auto 0 _ : Elem DoubleRange (Types t12)}
    -> {auto 0 _ : Elem ULongRange (Types t13)}
    -> {default Undef width : Optional t1}
    -> {default Undef height : Optional t2}
    -> {default Undef aspectRatio : Optional t3}
    -> {default Undef frameRate : Optional t4}
    -> {default Undef facingMode : Optional (Array String)}
    -> {default Undef resizeMode : Optional (Array String)}
    -> {default Undef sampleRate : Optional t7}
    -> {default Undef sampleSize : Optional t8}
    -> {default Undef echoCancellation : Optional (Array Boolean)}
    -> {default Undef autoGainControl : Optional (Array Boolean)}
    -> {default Undef noiseSuppression : Optional (Array Boolean)}
    -> {default Undef latency : Optional t12}
    -> {default Undef channelCount : Optional t13}
    -> {default Undef deviceId : Optional String}
    -> {default Undef groupId : Optional String}
    -> JSIO MediaTrackCapabilities
  new = primJS $
    MediaTrackCapabilities.prim__new
      (optUp width)
      (optUp height)
      (optUp aspectRatio)
      (optUp frameRate)
      (toFFI facingMode)
      (toFFI resizeMode)
      (optUp sampleRate)
      (optUp sampleSize)
      (toFFI echoCancellation)
      (toFFI autoGainControl)
      (toFFI noiseSuppression)
      (optUp latency)
      (optUp channelCount)
      (toFFI deviceId)
      (toFFI groupId)


  export
  aspectRatio :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional DoubleRange
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackCapabilities.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (v :> MediaTrackCapabilities)


  export
  autoGainControl :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional (Array Boolean)
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackCapabilities.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (v :> MediaTrackCapabilities)


  export
  channelCount :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional ULongRange
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackCapabilities.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (v :> MediaTrackCapabilities)


  export
  deviceId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackCapabilities.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (v :> MediaTrackCapabilities)


  export
  echoCancellation :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional (Array Boolean)
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackCapabilities.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (v :> MediaTrackCapabilities)


  export
  facingMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional (Array String)
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (v :> MediaTrackCapabilities)


  export
  frameRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional DoubleRange
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackCapabilities.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (v :> MediaTrackCapabilities)


  export
  groupId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional String
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackCapabilities.getgroupId"
                prim__groupId
                prim__setGroupId
                (v :> MediaTrackCapabilities)


  export
  height :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional ULongRange
  height v = fromUndefOrPrimNoDefault
               "MediaTrackCapabilities.getheight"
               prim__height
               prim__setHeight
               (v :> MediaTrackCapabilities)


  export
  latency :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional DoubleRange
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackCapabilities.getlatency"
                prim__latency
                prim__setLatency
                (v :> MediaTrackCapabilities)


  export
  noiseSuppression :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional (Array Boolean)
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackCapabilities.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (v :> MediaTrackCapabilities)


  export
  resizeMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional (Array String)
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (v :> MediaTrackCapabilities)


  export
  sampleRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional ULongRange
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (v :> MediaTrackCapabilities)


  export
  sampleSize :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional ULongRange
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackCapabilities.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (v :> MediaTrackCapabilities)


  export
  width :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackCapabilities (Types t)}
    -> t
    -> Attribute False Optional ULongRange
  width v = fromUndefOrPrimNoDefault
              "MediaTrackCapabilities.getwidth"
              prim__width
              prim__setWidth
              (v :> MediaTrackCapabilities)



namespace MediaTrackConstraintSet

  export
  new :
       {default Undef width : Optional (NS I [Bits32, ConstrainULongRange])}
    -> {default Undef height : Optional (NS I [Bits32, ConstrainULongRange])}
    -> {default Undef aspectRatio : Optional
                                      (NS I [Double, ConstrainDoubleRange])}
    -> {default Undef frameRate : Optional
                                    (NS I [Double, ConstrainDoubleRange])}
    -> {default Undef facingMode : Optional
                                     (NS I
                                        [ String
                                        , Array String
                                        , ConstrainDOMStringParameters
                                        ])}
    -> {default Undef resizeMode : Optional
                                     (NS I
                                        [ String
                                        , Array String
                                        , ConstrainDOMStringParameters
                                        ])}
    -> {default Undef sampleRate : Optional
                                     (NS I [Bits32, ConstrainULongRange])}
    -> {default Undef sampleSize : Optional
                                     (NS I [Bits32, ConstrainULongRange])}
    -> {default Undef echoCancellation : Optional
                                           (NS I
                                              [ Bool
                                              , ConstrainBooleanParameters
                                              ])}
    -> {default Undef autoGainControl : Optional
                                          (NS I
                                             [ Bool
                                             , ConstrainBooleanParameters
                                             ])}
    -> {default Undef noiseSuppression : Optional
                                           (NS I
                                              [ Bool
                                              , ConstrainBooleanParameters
                                              ])}
    -> {default Undef latency : Optional (NS I [Double, ConstrainDoubleRange])}
    -> {default Undef channelCount : Optional
                                       (NS I [Bits32, ConstrainULongRange])}
    -> {default Undef deviceId : Optional
                                   (NS I
                                      [ String
                                      , Array String
                                      , ConstrainDOMStringParameters
                                      ])}
    -> {default Undef groupId : Optional
                                  (NS I
                                     [ String
                                     , Array String
                                     , ConstrainDOMStringParameters
                                     ])}
    -> JSIO MediaTrackConstraintSet
  new = primJS $
    MediaTrackConstraintSet.prim__new
      (toFFI width)
      (toFFI height)
      (toFFI aspectRatio)
      (toFFI frameRate)
      (toFFI facingMode)
      (toFFI resizeMode)
      (toFFI sampleRate)
      (toFFI sampleSize)
      (toFFI echoCancellation)
      (toFFI autoGainControl)
      (toFFI noiseSuppression)
      (toFFI latency)
      (toFFI channelCount)
      (toFFI deviceId)
      (toFFI groupId)


  export
  aspectRatio :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackConstraintSet.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (v :> MediaTrackConstraintSet)


  export
  autoGainControl :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackConstraintSet.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (v :> MediaTrackConstraintSet)


  export
  channelCount :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackConstraintSet.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (v :> MediaTrackConstraintSet)


  export
  deviceId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraintSet.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (v :> MediaTrackConstraintSet)


  export
  echoCancellation :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackConstraintSet.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (v :> MediaTrackConstraintSet)


  export
  facingMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (v :> MediaTrackConstraintSet)


  export
  frameRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackConstraintSet.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (v :> MediaTrackConstraintSet)


  export
  groupId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackConstraintSet.getgroupId"
                prim__groupId
                prim__setGroupId
                (v :> MediaTrackConstraintSet)


  export
  height :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  height v = fromUndefOrPrimNoDefault
               "MediaTrackConstraintSet.getheight"
               prim__height
               prim__setHeight
               (v :> MediaTrackConstraintSet)


  export
  latency :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Double ConstrainDoubleRange)
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackConstraintSet.getlatency"
                prim__latency
                prim__setLatency
                (v :> MediaTrackConstraintSet)


  export
  noiseSuppression :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Boolean ConstrainBooleanParameters)
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackConstraintSet.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (v :> MediaTrackConstraintSet)


  export
  resizeMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union3
                                   String
                                   (Array String)
                                   ConstrainDOMStringParameters)
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (v :> MediaTrackConstraintSet)


  export
  sampleRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (v :> MediaTrackConstraintSet)


  export
  sampleSize :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackConstraintSet.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (v :> MediaTrackConstraintSet)


  export
  width :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraintSet (Types t)}
    -> t
    -> Attribute False Optional (Union2 Bits32 ConstrainULongRange)
  width v = fromUndefOrPrimNoDefault
              "MediaTrackConstraintSet.getwidth"
              prim__width
              prim__setWidth
              (v :> MediaTrackConstraintSet)



namespace MediaTrackConstraints

  export
  new :
       {default Undef advanced : Optional (Array MediaTrackConstraintSet)}
    -> JSIO MediaTrackConstraints
  new = primJS $ MediaTrackConstraints.prim__new (toFFI advanced)


  export
  advanced :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackConstraints (Types t)}
    -> t
    -> Attribute False Optional (Array MediaTrackConstraintSet)
  advanced v = fromUndefOrPrimNoDefault
                 "MediaTrackConstraints.getadvanced"
                 prim__advanced
                 prim__setAdvanced
                 (v :> MediaTrackConstraints)



namespace MediaTrackSettings

  export
  new :
       {default Undef width : Optional Int32}
    -> {default Undef height : Optional Int32}
    -> {default Undef aspectRatio : Optional Double}
    -> {default Undef frameRate : Optional Double}
    -> {default Undef facingMode : Optional String}
    -> {default Undef resizeMode : Optional String}
    -> {default Undef sampleRate : Optional Int32}
    -> {default Undef sampleSize : Optional Int32}
    -> {default Undef echoCancellation : Optional Bool}
    -> {default Undef autoGainControl : Optional Bool}
    -> {default Undef noiseSuppression : Optional Bool}
    -> {default Undef latency : Optional Double}
    -> {default Undef channelCount : Optional Int32}
    -> {default Undef deviceId : Optional String}
    -> {default Undef groupId : Optional String}
    -> JSIO MediaTrackSettings
  new = primJS $
    MediaTrackSettings.prim__new
      (toFFI width)
      (toFFI height)
      (toFFI aspectRatio)
      (toFFI frameRate)
      (toFFI facingMode)
      (toFFI resizeMode)
      (toFFI sampleRate)
      (toFFI sampleSize)
      (toFFI echoCancellation)
      (toFFI autoGainControl)
      (toFFI noiseSuppression)
      (toFFI latency)
      (toFFI channelCount)
      (toFFI deviceId)
      (toFFI groupId)


  export
  aspectRatio :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Double
  aspectRatio v = fromUndefOrPrimNoDefault
                    "MediaTrackSettings.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    (v :> MediaTrackSettings)


  export
  autoGainControl :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Bool
  autoGainControl v = fromUndefOrPrimNoDefault
                        "MediaTrackSettings.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        (v :> MediaTrackSettings)


  export
  channelCount :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Int32
  channelCount v = fromUndefOrPrimNoDefault
                     "MediaTrackSettings.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     (v :> MediaTrackSettings)


  export
  deviceId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "MediaTrackSettings.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (v :> MediaTrackSettings)


  export
  echoCancellation :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Bool
  echoCancellation v = fromUndefOrPrimNoDefault
                         "MediaTrackSettings.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         (v :> MediaTrackSettings)


  export
  facingMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional String
  facingMode v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   (v :> MediaTrackSettings)


  export
  frameRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Double
  frameRate v = fromUndefOrPrimNoDefault
                  "MediaTrackSettings.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  (v :> MediaTrackSettings)


  export
  groupId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional String
  groupId v = fromUndefOrPrimNoDefault
                "MediaTrackSettings.getgroupId"
                prim__groupId
                prim__setGroupId
                (v :> MediaTrackSettings)


  export
  height :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Int32
  height v = fromUndefOrPrimNoDefault
               "MediaTrackSettings.getheight"
               prim__height
               prim__setHeight
               (v :> MediaTrackSettings)


  export
  latency :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Double
  latency v = fromUndefOrPrimNoDefault
                "MediaTrackSettings.getlatency"
                prim__latency
                prim__setLatency
                (v :> MediaTrackSettings)


  export
  noiseSuppression :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Bool
  noiseSuppression v = fromUndefOrPrimNoDefault
                         "MediaTrackSettings.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         (v :> MediaTrackSettings)


  export
  resizeMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional String
  resizeMode v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   (v :> MediaTrackSettings)


  export
  sampleRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Int32
  sampleRate v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   (v :> MediaTrackSettings)


  export
  sampleSize :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Int32
  sampleSize v = fromUndefOrPrimNoDefault
                   "MediaTrackSettings.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   (v :> MediaTrackSettings)


  export
  width :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSettings (Types t)}
    -> t
    -> Attribute False Optional Int32
  width v = fromUndefOrPrimNoDefault
              "MediaTrackSettings.getwidth"
              prim__width
              prim__setWidth
              (v :> MediaTrackSettings)



namespace MediaTrackSupportedConstraints

  export
  new :
       {default Undef width : Optional Bool}
    -> {default Undef height : Optional Bool}
    -> {default Undef aspectRatio : Optional Bool}
    -> {default Undef frameRate : Optional Bool}
    -> {default Undef facingMode : Optional Bool}
    -> {default Undef resizeMode : Optional Bool}
    -> {default Undef sampleRate : Optional Bool}
    -> {default Undef sampleSize : Optional Bool}
    -> {default Undef echoCancellation : Optional Bool}
    -> {default Undef autoGainControl : Optional Bool}
    -> {default Undef noiseSuppression : Optional Bool}
    -> {default Undef latency : Optional Bool}
    -> {default Undef channelCount : Optional Bool}
    -> {default Undef deviceId : Optional Bool}
    -> {default Undef groupId : Optional Bool}
    -> JSIO MediaTrackSupportedConstraints
  new = primJS $
    MediaTrackSupportedConstraints.prim__new
      (toFFI width)
      (toFFI height)
      (toFFI aspectRatio)
      (toFFI frameRate)
      (toFFI facingMode)
      (toFFI resizeMode)
      (toFFI sampleRate)
      (toFFI sampleSize)
      (toFFI echoCancellation)
      (toFFI autoGainControl)
      (toFFI noiseSuppression)
      (toFFI latency)
      (toFFI channelCount)
      (toFFI deviceId)
      (toFFI groupId)


  export
  aspectRatio :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  aspectRatio v = fromUndefOrPrim
                    "MediaTrackSupportedConstraints.getaspectRatio"
                    prim__aspectRatio
                    prim__setAspectRatio
                    True
                    (v :> MediaTrackSupportedConstraints)


  export
  autoGainControl :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  autoGainControl v = fromUndefOrPrim
                        "MediaTrackSupportedConstraints.getautoGainControl"
                        prim__autoGainControl
                        prim__setAutoGainControl
                        True
                        (v :> MediaTrackSupportedConstraints)


  export
  channelCount :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  channelCount v = fromUndefOrPrim
                     "MediaTrackSupportedConstraints.getchannelCount"
                     prim__channelCount
                     prim__setChannelCount
                     True
                     (v :> MediaTrackSupportedConstraints)


  export
  deviceId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  deviceId v = fromUndefOrPrim
                 "MediaTrackSupportedConstraints.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 True
                 (v :> MediaTrackSupportedConstraints)


  export
  echoCancellation :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  echoCancellation v = fromUndefOrPrim
                         "MediaTrackSupportedConstraints.getechoCancellation"
                         prim__echoCancellation
                         prim__setEchoCancellation
                         True
                         (v :> MediaTrackSupportedConstraints)


  export
  facingMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  facingMode v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getfacingMode"
                   prim__facingMode
                   prim__setFacingMode
                   True
                   (v :> MediaTrackSupportedConstraints)


  export
  frameRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  frameRate v = fromUndefOrPrim
                  "MediaTrackSupportedConstraints.getframeRate"
                  prim__frameRate
                  prim__setFrameRate
                  True
                  (v :> MediaTrackSupportedConstraints)


  export
  groupId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  groupId v = fromUndefOrPrim
                "MediaTrackSupportedConstraints.getgroupId"
                prim__groupId
                prim__setGroupId
                True
                (v :> MediaTrackSupportedConstraints)


  export
  height :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  height v = fromUndefOrPrim
               "MediaTrackSupportedConstraints.getheight"
               prim__height
               prim__setHeight
               True
               (v :> MediaTrackSupportedConstraints)


  export
  latency :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  latency v = fromUndefOrPrim
                "MediaTrackSupportedConstraints.getlatency"
                prim__latency
                prim__setLatency
                True
                (v :> MediaTrackSupportedConstraints)


  export
  noiseSuppression :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  noiseSuppression v = fromUndefOrPrim
                         "MediaTrackSupportedConstraints.getnoiseSuppression"
                         prim__noiseSuppression
                         prim__setNoiseSuppression
                         True
                         (v :> MediaTrackSupportedConstraints)


  export
  resizeMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  resizeMode v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getresizeMode"
                   prim__resizeMode
                   prim__setResizeMode
                   True
                   (v :> MediaTrackSupportedConstraints)


  export
  sampleRate :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  sampleRate v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getsampleRate"
                   prim__sampleRate
                   prim__setSampleRate
                   True
                   (v :> MediaTrackSupportedConstraints)


  export
  sampleSize :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  sampleSize v = fromUndefOrPrim
                   "MediaTrackSupportedConstraints.getsampleSize"
                   prim__sampleSize
                   prim__setSampleSize
                   True
                   (v :> MediaTrackSupportedConstraints)


  export
  width :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MediaTrackSupportedConstraints (Types t)}
    -> t
    -> Attribute True Optional Bool
  width v = fromUndefOrPrim
              "MediaTrackSupportedConstraints.getwidth"
              prim__width
              prim__setWidth
              True
              (v :> MediaTrackSupportedConstraints)



namespace Settings

  export
  new : JSIO Settings
  new = primJS $ Settings.prim__new



namespace ULongRange

  export
  new :
       {default Undef max : Optional Bits32}
    -> {default Undef min : Optional Bits32}
    -> JSIO ULongRange
  new = primJS $ ULongRange.prim__new (toFFI max) (toFFI min)


  export
  max :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ULongRange (Types t)}
    -> t
    -> Attribute False Optional Bits32
  max v = fromUndefOrPrimNoDefault
            "ULongRange.getmax"
            prim__max
            prim__setMax
            (v :> ULongRange)


  export
  min :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ULongRange (Types t)}
    -> t
    -> Attribute False Optional Bits32
  min v = fromUndefOrPrimNoDefault
            "ULongRange.getmin"
            prim__min
            prim__setMin
            (v :> ULongRange)




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
