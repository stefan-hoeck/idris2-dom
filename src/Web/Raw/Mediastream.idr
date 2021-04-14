module Web.Raw.Mediastream
 
import JS
import Web.Internal.MediastreamPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  export
  applyConstraints :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem ConstrainablePattern (Types t1)}
                   -> {auto 0 _ : Elem Constraints (Types t2)}
                   -> (obj : t1)
                   -> (constraints : Optional t2)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS
                       $ ConstrainablePattern.prim__applyConstraints (up a)
                                                                     (optUp b)

  export
  applyConstraints' :  JSType t1
                    => {auto 0 _ : Elem ConstrainablePattern (Types t1)}
                    -> (obj : t1)
                    -> JSIO (Promise Undefined)
  applyConstraints' a = primJS
                      $ ConstrainablePattern.prim__applyConstraints (up a) undef
  
  export
  getCapabilities :  JSType t1
                  => {auto 0 _ : Elem ConstrainablePattern (Types t1)}
                  -> (obj : t1)
                  -> JSIO Capabilities
  getCapabilities a = primJS $ ConstrainablePattern.prim__getCapabilities (up a)
  
  export
  getConstraints :  JSType t1
                 => {auto 0 _ : Elem ConstrainablePattern (Types t1)}
                 -> (obj : t1)
                 -> JSIO Constraints
  getConstraints a = primJS $ ConstrainablePattern.prim__getConstraints (up a)
  
  export
  getSettings :  JSType t1
              => {auto 0 _ : Elem ConstrainablePattern (Types t1)}
              -> (obj : t1)
              -> JSIO Settings
  getSettings a = primJS $ ConstrainablePattern.prim__getSettings (up a)

namespace InputDeviceInfo
  
  export
  getCapabilities :  JSType t1
                  => {auto 0 _ : Elem InputDeviceInfo (Types t1)}
                  -> (obj : t1)
                  -> JSIO MediaTrackCapabilities
  getCapabilities a = primJS $ InputDeviceInfo.prim__getCapabilities (up a)

namespace MediaDeviceInfo
  
  export
  deviceId :  JSType t1
           => {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
           -> (obj : t1)
           -> JSIO String
  deviceId a = primJS $ MediaDeviceInfo.prim__deviceId (up a)
  
  export
  groupId :  JSType t1
          => {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
          -> (obj : t1)
          -> JSIO String
  groupId a = primJS $ MediaDeviceInfo.prim__groupId (up a)
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
       -> (obj : t1)
       -> JSIO MediaDeviceKind
  kind a = tryJS "MediaDeviceInfo.kind" $ MediaDeviceInfo.prim__kind (up a)
  
  export
  label :  JSType t1
        => {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
        -> (obj : t1)
        -> JSIO String
  label a = primJS $ MediaDeviceInfo.prim__label (up a)
  
  export
  toJSON :  JSType t1
         => {auto 0 _ : Elem MediaDeviceInfo (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ MediaDeviceInfo.prim__toJSON (up a)

namespace MediaDevices
  
  export
  ondevicechange : MediaDevices -> Attribute False Maybe EventHandlerNonNull
  ondevicechange = fromNullablePrim "MediaDevices.getondevicechange"
                                    prim__ondevicechange
                                    prim__setOndevicechange
  
  export
  enumerateDevices :  JSType t1
                   => {auto 0 _ : Elem MediaDevices (Types t1)}
                   -> (obj : t1)
                   -> JSIO (Promise (Array MediaDeviceInfo))
  enumerateDevices a = primJS $ MediaDevices.prim__enumerateDevices (up a)
  
  export
  getSupportedConstraints :  JSType t1
                          => {auto 0 _ : Elem MediaDevices (Types t1)}
                          -> (obj : t1)
                          -> JSIO MediaTrackSupportedConstraints
  getSupportedConstraints a = primJS
                            $ MediaDevices.prim__getSupportedConstraints (up a)
  
  export
  getUserMedia :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem MediaDevices (Types t1)}
               -> {auto 0 _ : Elem MediaStreamConstraints (Types t2)}
               -> (obj : t1)
               -> (constraints : Optional t2)
               -> JSIO (Promise MediaStream)
  getUserMedia a b = primJS $ MediaDevices.prim__getUserMedia (up a) (optUp b)

  export
  getUserMedia' :  JSType t1
                => {auto 0 _ : Elem MediaDevices (Types t1)}
                -> (obj : t1)
                -> JSIO (Promise MediaStream)
  getUserMedia' a = primJS $ MediaDevices.prim__getUserMedia (up a) undef

namespace MediaStream
  
  export
  new : JSIO MediaStream
  new = primJS $ MediaStream.prim__new 
  
  export
  new1 :  JSType t1
       => {auto 0 _ : Elem MediaStream (Types t1)}
       -> (stream : t1)
       -> JSIO MediaStream
  new1 a = primJS $ MediaStream.prim__new1 (up a)
  
  export
  new2 : (tracks : Array MediaStreamTrack) -> JSIO MediaStream
  new2 a = primJS $ MediaStream.prim__new2 a
  
  export
  active :  JSType t1
         => {auto 0 _ : Elem MediaStream (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  active a = tryJS "MediaStream.active" $ MediaStream.prim__active (up a)
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem MediaStream (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ MediaStream.prim__id (up a)
  
  export
  onaddtrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
  onaddtrack = fromNullablePrim "MediaStream.getonaddtrack"
                                prim__onaddtrack
                                prim__setOnaddtrack
  
  export
  onremovetrack : MediaStream -> Attribute False Maybe EventHandlerNonNull
  onremovetrack = fromNullablePrim "MediaStream.getonremovetrack"
                                   prim__onremovetrack
                                   prim__setOnremovetrack
  
  export
  addTrack :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem MediaStream (Types t1)}
           -> {auto 0 _ : Elem MediaStreamTrack (Types t2)}
           -> (obj : t1)
           -> (track : t2)
           -> JSIO ()
  addTrack a b = primJS $ MediaStream.prim__addTrack (up a) (up b)
  
  export
  clone :  JSType t1
        => {auto 0 _ : Elem MediaStream (Types t1)}
        -> (obj : t1)
        -> JSIO MediaStream
  clone a = primJS $ MediaStream.prim__clone (up a)
  
  export
  getAudioTracks :  JSType t1
                 => {auto 0 _ : Elem MediaStream (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Array MediaStreamTrack)
  getAudioTracks a = primJS $ MediaStream.prim__getAudioTracks (up a)
  
  export
  getTrackById :  JSType t1
               => {auto 0 _ : Elem MediaStream (Types t1)}
               -> (obj : t1)
               -> (trackId : String)
               -> JSIO (Maybe MediaStreamTrack)
  getTrackById a b = tryJS "MediaStream.getTrackById"
                   $ MediaStream.prim__getTrackById (up a) b
  
  export
  getTracks :  JSType t1
            => {auto 0 _ : Elem MediaStream (Types t1)}
            -> (obj : t1)
            -> JSIO (Array MediaStreamTrack)
  getTracks a = primJS $ MediaStream.prim__getTracks (up a)
  
  export
  getVideoTracks :  JSType t1
                 => {auto 0 _ : Elem MediaStream (Types t1)}
                 -> (obj : t1)
                 -> JSIO (Array MediaStreamTrack)
  getVideoTracks a = primJS $ MediaStream.prim__getVideoTracks (up a)
  
  export
  removeTrack :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem MediaStream (Types t1)}
              -> {auto 0 _ : Elem MediaStreamTrack (Types t2)}
              -> (obj : t1)
              -> (track : t2)
              -> JSIO ()
  removeTrack a b = primJS $ MediaStream.prim__removeTrack (up a) (up b)

namespace MediaStreamTrack
  
  export
  enabled : MediaStreamTrack -> Attribute True I Bool
  enabled = fromPrim "MediaStreamTrack.getenabled"
                     prim__enabled
                     prim__setEnabled
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ MediaStreamTrack.prim__id (up a)
  
  export
  kind :  JSType t1
       => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
       -> (obj : t1)
       -> JSIO String
  kind a = primJS $ MediaStreamTrack.prim__kind (up a)
  
  export
  label :  JSType t1
        => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
        -> (obj : t1)
        -> JSIO String
  label a = primJS $ MediaStreamTrack.prim__label (up a)
  
  export
  muted :  JSType t1
        => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
        -> (obj : t1)
        -> JSIO Bool
  muted a = tryJS "MediaStreamTrack.muted" $ MediaStreamTrack.prim__muted (up a)
  
  export
  onended : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onended = fromNullablePrim "MediaStreamTrack.getonended"
                             prim__onended
                             prim__setOnended
  
  export
  onmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onmute = fromNullablePrim "MediaStreamTrack.getonmute"
                            prim__onmute
                            prim__setOnmute
  
  export
  onunmute : MediaStreamTrack -> Attribute False Maybe EventHandlerNonNull
  onunmute = fromNullablePrim "MediaStreamTrack.getonunmute"
                              prim__onunmute
                              prim__setOnunmute
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
             -> (obj : t1)
             -> JSIO MediaStreamTrackState
  readyState a = tryJS "MediaStreamTrack.readyState"
               $ MediaStreamTrack.prim__readyState (up a)
  
  export
  applyConstraints :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
                   -> {auto 0 _ : Elem MediaTrackConstraints (Types t2)}
                   -> (obj : t1)
                   -> (constraints : Optional t2)
                   -> JSIO (Promise Undefined)
  applyConstraints a b = primJS
                       $ MediaStreamTrack.prim__applyConstraints (up a)
                                                                 (optUp b)

  export
  applyConstraints' :  JSType t1
                    => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
                    -> (obj : t1)
                    -> JSIO (Promise Undefined)
  applyConstraints' a = primJS
                      $ MediaStreamTrack.prim__applyConstraints (up a) undef
  
  export
  clone :  JSType t1
        => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
        -> (obj : t1)
        -> JSIO MediaStreamTrack
  clone a = primJS $ MediaStreamTrack.prim__clone (up a)
  
  export
  getCapabilities :  JSType t1
                  => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
                  -> (obj : t1)
                  -> JSIO MediaTrackCapabilities
  getCapabilities a = primJS $ MediaStreamTrack.prim__getCapabilities (up a)
  
  export
  getConstraints :  JSType t1
                 => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
                 -> (obj : t1)
                 -> JSIO MediaTrackConstraints
  getConstraints a = primJS $ MediaStreamTrack.prim__getConstraints (up a)
  
  export
  getSettings :  JSType t1
              => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
              -> (obj : t1)
              -> JSIO MediaTrackSettings
  getSettings a = primJS $ MediaStreamTrack.prim__getSettings (up a)
  
  export
  stop :  JSType t1
       => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
       -> (obj : t1)
       -> JSIO ()
  stop a = primJS $ MediaStreamTrack.prim__stop (up a)

namespace MediaStreamTrackEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem MediaStreamTrackEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO MediaStreamTrackEvent
  new a b = primJS $ MediaStreamTrackEvent.prim__new a (up b)
  
  export
  track :  JSType t1
        => {auto 0 _ : Elem MediaStreamTrackEvent (Types t1)}
        -> (obj : t1)
        -> JSIO MediaStreamTrack
  track a = primJS $ MediaStreamTrackEvent.prim__track (up a)

namespace OverconstrainedError
  
  export
  new :  (constraint : String)
      -> (message : Optional String)
      -> JSIO OverconstrainedError
  new a b = primJS $ OverconstrainedError.prim__new a (toFFI b)

  export
  new' : (constraint : String) -> JSIO OverconstrainedError
  new' a = primJS $ OverconstrainedError.prim__new a undef
  
  export
  constraint :  JSType t1
             => {auto 0 _ : Elem OverconstrainedError (Types t1)}
             -> (obj : t1)
             -> JSIO String
  constraint a = primJS $ OverconstrainedError.prim__constraint (up a)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace Capabilities
  
  export
  new : JSIO Capabilities
  new = primJS $ Capabilities.prim__new 

namespace ConstrainBooleanParameters
  
  export
  new :  (exact : Optional Bool)
      -> (ideal : Optional Bool)
      -> JSIO ConstrainBooleanParameters
  new a b = primJS $ ConstrainBooleanParameters.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainBooleanParameters
  new' = primJS $ ConstrainBooleanParameters.prim__new undef undef
  
  export
  exact : ConstrainBooleanParameters -> Attribute False Optional Bool
  exact = fromUndefOrPrimNoDefault "ConstrainBooleanParameters.getexact"
                                   prim__exact
                                   prim__setExact
  
  export
  ideal : ConstrainBooleanParameters -> Attribute False Optional Bool
  ideal = fromUndefOrPrimNoDefault "ConstrainBooleanParameters.getideal"
                                   prim__ideal
                                   prim__setIdeal

namespace ConstrainDOMStringParameters
  
  export
  new :  (exact : Optional (NS I [ String , Array String ]))
      -> (ideal : Optional (NS I [ String , Array String ]))
      -> JSIO ConstrainDOMStringParameters
  new a b = primJS $ ConstrainDOMStringParameters.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainDOMStringParameters
  new' = primJS $ ConstrainDOMStringParameters.prim__new undef undef
  
  export
  exact : ConstrainDOMStringParameters -> Attribute False Optional (Union2 String
                                                                           (Array String))
  exact = fromUndefOrPrimNoDefault "ConstrainDOMStringParameters.getexact"
                                   prim__exact
                                   prim__setExact
  
  export
  ideal : ConstrainDOMStringParameters -> Attribute False Optional (Union2 String
                                                                           (Array String))
  ideal = fromUndefOrPrimNoDefault "ConstrainDOMStringParameters.getideal"
                                   prim__ideal
                                   prim__setIdeal

namespace ConstrainDoubleRange
  
  export
  new :  (exact : Optional Double)
      -> (ideal : Optional Double)
      -> JSIO ConstrainDoubleRange
  new a b = primJS $ ConstrainDoubleRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainDoubleRange
  new' = primJS $ ConstrainDoubleRange.prim__new undef undef
  
  export
  exact : ConstrainDoubleRange -> Attribute False Optional Double
  exact = fromUndefOrPrimNoDefault "ConstrainDoubleRange.getexact"
                                   prim__exact
                                   prim__setExact
  
  export
  ideal : ConstrainDoubleRange -> Attribute False Optional Double
  ideal = fromUndefOrPrimNoDefault "ConstrainDoubleRange.getideal"
                                   prim__ideal
                                   prim__setIdeal

namespace ConstrainULongRange
  
  export
  new :  (exact : Optional UInt32)
      -> (ideal : Optional UInt32)
      -> JSIO ConstrainULongRange
  new a b = primJS $ ConstrainULongRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ConstrainULongRange
  new' = primJS $ ConstrainULongRange.prim__new undef undef
  
  export
  exact : ConstrainULongRange -> Attribute False Optional UInt32
  exact = fromUndefOrPrimNoDefault "ConstrainULongRange.getexact"
                                   prim__exact
                                   prim__setExact
  
  export
  ideal : ConstrainULongRange -> Attribute False Optional UInt32
  ideal = fromUndefOrPrimNoDefault "ConstrainULongRange.getideal"
                                   prim__ideal
                                   prim__setIdeal

namespace ConstraintSet
  
  export
  new : JSIO ConstraintSet
  new = primJS $ ConstraintSet.prim__new 

namespace Constraints
  
  export
  new : (advanced : Optional (Array ConstraintSet)) -> JSIO Constraints
  new a = primJS $ Constraints.prim__new (toFFI a)

  export
  new' : JSIO Constraints
  new' = primJS $ Constraints.prim__new undef
  
  export
  advanced : Constraints -> Attribute False Optional (Array ConstraintSet)
  advanced = fromUndefOrPrimNoDefault "Constraints.getadvanced"
                                      prim__advanced
                                      prim__setAdvanced

namespace DoubleRange
  
  export
  new : (max : Optional Double) -> (min : Optional Double) -> JSIO DoubleRange
  new a b = primJS $ DoubleRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO DoubleRange
  new' = primJS $ DoubleRange.prim__new undef undef
  
  export
  max : DoubleRange -> Attribute False Optional Double
  max = fromUndefOrPrimNoDefault "DoubleRange.getmax" prim__max prim__setMax
  
  export
  min : DoubleRange -> Attribute False Optional Double
  min = fromUndefOrPrimNoDefault "DoubleRange.getmin" prim__min prim__setMin

namespace MediaStreamConstraints
  
  export
  new :  (video : Optional (NS I [ Bool , MediaTrackConstraints ]))
      -> (audio : Optional (NS I [ Bool , MediaTrackConstraints ]))
      -> JSIO MediaStreamConstraints
  new a b = primJS $ MediaStreamConstraints.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO MediaStreamConstraints
  new' = primJS $ MediaStreamConstraints.prim__new undef undef
  
  export
  audio : MediaStreamConstraints -> Attribute False Optional (NS I [ Bool
                                                                   , MediaTrackConstraints
                                                                   ])
  audio = fromUndefOrPrimNoDefault "MediaStreamConstraints.getaudio"
                                   prim__audio
                                   prim__setAudio
  
  export
  video : MediaStreamConstraints -> Attribute False Optional (NS I [ Bool
                                                                   , MediaTrackConstraints
                                                                   ])
  video = fromUndefOrPrimNoDefault "MediaStreamConstraints.getvideo"
                                   prim__video
                                   prim__setVideo

namespace MediaStreamTrackEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem MediaStreamTrack (Types t1)}
      -> (track : t1)
      -> JSIO MediaStreamTrackEventInit
  new a = primJS $ MediaStreamTrackEventInit.prim__new (up a)
  
  export
  track : MediaStreamTrackEventInit -> Attribute True I MediaStreamTrack
  track = fromPrim "MediaStreamTrackEventInit.gettrack"
                   prim__track
                   prim__setTrack

namespace MediaTrackCapabilities
  
  export
  new :  JSType t1
      => JSType t2
      => JSType t3
      => JSType t4
      => JSType t5
      => JSType t6
      => JSType t7
      => JSType t8
      => {auto 0 _ : Elem ULongRange (Types t1)}
      -> {auto 0 _ : Elem ULongRange (Types t2)}
      -> {auto 0 _ : Elem DoubleRange (Types t3)}
      -> {auto 0 _ : Elem DoubleRange (Types t4)}
      -> {auto 0 _ : Elem ULongRange (Types t5)}
      -> {auto 0 _ : Elem ULongRange (Types t6)}
      -> {auto 0 _ : Elem DoubleRange (Types t7)}
      -> {auto 0 _ : Elem ULongRange (Types t8)}
      -> (width : Optional t1)
      -> (height : Optional t2)
      -> (aspectRatio : Optional t3)
      -> (frameRate : Optional t4)
      -> (facingMode : Optional (Array String))
      -> (resizeMode : Optional (Array String))
      -> (sampleRate : Optional t5)
      -> (sampleSize : Optional t6)
      -> (echoCancellation : Optional (Array Boolean))
      -> (autoGainControl : Optional (Array Boolean))
      -> (noiseSuppression : Optional (Array Boolean))
      -> (latency : Optional t7)
      -> (channelCount : Optional t8)
      -> (deviceId : Optional String)
      -> (groupId : Optional String)
      -> JSIO MediaTrackCapabilities
  new a b c d e f g h i j k l m n o = primJS
                                    $ MediaTrackCapabilities.prim__new (optUp a)
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
  new' : JSIO MediaTrackCapabilities
  new' = primJS
       $ MediaTrackCapabilities.prim__new undef
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
  aspectRatio : MediaTrackCapabilities -> Attribute False Optional DoubleRange
  aspectRatio = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getaspectRatio"
                                         prim__aspectRatio
                                         prim__setAspectRatio
  
  export
  autoGainControl : MediaTrackCapabilities -> Attribute False Optional (Array Boolean)
  autoGainControl = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getautoGainControl"
                                             prim__autoGainControl
                                             prim__setAutoGainControl
  
  export
  channelCount : MediaTrackCapabilities -> Attribute False Optional ULongRange
  channelCount = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getchannelCount"
                                          prim__channelCount
                                          prim__setChannelCount
  
  export
  deviceId : MediaTrackCapabilities -> Attribute False Optional String
  deviceId = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getdeviceId"
                                      prim__deviceId
                                      prim__setDeviceId
  
  export
  echoCancellation : MediaTrackCapabilities -> Attribute False Optional (Array Boolean)
  echoCancellation = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getechoCancellation"
                                              prim__echoCancellation
                                              prim__setEchoCancellation
  
  export
  facingMode : MediaTrackCapabilities -> Attribute False Optional (Array String)
  facingMode = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getfacingMode"
                                        prim__facingMode
                                        prim__setFacingMode
  
  export
  frameRate : MediaTrackCapabilities -> Attribute False Optional DoubleRange
  frameRate = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getframeRate"
                                       prim__frameRate
                                       prim__setFrameRate
  
  export
  groupId : MediaTrackCapabilities -> Attribute False Optional String
  groupId = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getgroupId"
                                     prim__groupId
                                     prim__setGroupId
  
  export
  height : MediaTrackCapabilities -> Attribute False Optional ULongRange
  height = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getheight"
                                    prim__height
                                    prim__setHeight
  
  export
  latency : MediaTrackCapabilities -> Attribute False Optional DoubleRange
  latency = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getlatency"
                                     prim__latency
                                     prim__setLatency
  
  export
  noiseSuppression : MediaTrackCapabilities -> Attribute False Optional (Array Boolean)
  noiseSuppression = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getnoiseSuppression"
                                              prim__noiseSuppression
                                              prim__setNoiseSuppression
  
  export
  resizeMode : MediaTrackCapabilities -> Attribute False Optional (Array String)
  resizeMode = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getresizeMode"
                                        prim__resizeMode
                                        prim__setResizeMode
  
  export
  sampleRate : MediaTrackCapabilities -> Attribute False Optional ULongRange
  sampleRate = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getsampleRate"
                                        prim__sampleRate
                                        prim__setSampleRate
  
  export
  sampleSize : MediaTrackCapabilities -> Attribute False Optional ULongRange
  sampleSize = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getsampleSize"
                                        prim__sampleSize
                                        prim__setSampleSize
  
  export
  width : MediaTrackCapabilities -> Attribute False Optional ULongRange
  width = fromUndefOrPrimNoDefault "MediaTrackCapabilities.getwidth"
                                   prim__width
                                   prim__setWidth

namespace MediaTrackConstraintSet
  
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
  new a b c d e f g h i j k l m n o = primJS
                                    $ MediaTrackConstraintSet.prim__new (toFFI a)
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
  new' = primJS
       $ MediaTrackConstraintSet.prim__new undef
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
  aspectRatio : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Double
                                                                          , ConstrainDoubleRange
                                                                          ])
  aspectRatio = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getaspectRatio"
                                         prim__aspectRatio
                                         prim__setAspectRatio
  
  export
  autoGainControl : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Bool
                                                                              , ConstrainBooleanParameters
                                                                              ])
  autoGainControl = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getautoGainControl"
                                             prim__autoGainControl
                                             prim__setAutoGainControl
  
  export
  channelCount : MediaTrackConstraintSet -> Attribute False Optional (NS I [ UInt32
                                                                           , ConstrainULongRange
                                                                           ])
  channelCount = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getchannelCount"
                                          prim__channelCount
                                          prim__setChannelCount
  
  export
  deviceId : MediaTrackConstraintSet -> Attribute False Optional (Union3 String
                                                                         (Array String)
                                                                         ConstrainDOMStringParameters)
  deviceId = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getdeviceId"
                                      prim__deviceId
                                      prim__setDeviceId
  
  export
  echoCancellation : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Bool
                                                                               , ConstrainBooleanParameters
                                                                               ])
  echoCancellation = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getechoCancellation"
                                              prim__echoCancellation
                                              prim__setEchoCancellation
  
  export
  facingMode : MediaTrackConstraintSet -> Attribute False Optional (Union3 String
                                                                           (Array String)
                                                                           ConstrainDOMStringParameters)
  facingMode = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getfacingMode"
                                        prim__facingMode
                                        prim__setFacingMode
  
  export
  frameRate : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Double
                                                                        , ConstrainDoubleRange
                                                                        ])
  frameRate = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getframeRate"
                                       prim__frameRate
                                       prim__setFrameRate
  
  export
  groupId : MediaTrackConstraintSet -> Attribute False Optional (Union3 String
                                                                        (Array String)
                                                                        ConstrainDOMStringParameters)
  groupId = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getgroupId"
                                     prim__groupId
                                     prim__setGroupId
  
  export
  height : MediaTrackConstraintSet -> Attribute False Optional (NS I [ UInt32
                                                                     , ConstrainULongRange
                                                                     ])
  height = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getheight"
                                    prim__height
                                    prim__setHeight
  
  export
  latency : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Double
                                                                      , ConstrainDoubleRange
                                                                      ])
  latency = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getlatency"
                                     prim__latency
                                     prim__setLatency
  
  export
  noiseSuppression : MediaTrackConstraintSet -> Attribute False Optional (NS I [ Bool
                                                                               , ConstrainBooleanParameters
                                                                               ])
  noiseSuppression = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getnoiseSuppression"
                                              prim__noiseSuppression
                                              prim__setNoiseSuppression
  
  export
  resizeMode : MediaTrackConstraintSet -> Attribute False Optional (Union3 String
                                                                           (Array String)
                                                                           ConstrainDOMStringParameters)
  resizeMode = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getresizeMode"
                                        prim__resizeMode
                                        prim__setResizeMode
  
  export
  sampleRate : MediaTrackConstraintSet -> Attribute False Optional (NS I [ UInt32
                                                                         , ConstrainULongRange
                                                                         ])
  sampleRate = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getsampleRate"
                                        prim__sampleRate
                                        prim__setSampleRate
  
  export
  sampleSize : MediaTrackConstraintSet -> Attribute False Optional (NS I [ UInt32
                                                                         , ConstrainULongRange
                                                                         ])
  sampleSize = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getsampleSize"
                                        prim__sampleSize
                                        prim__setSampleSize
  
  export
  width : MediaTrackConstraintSet -> Attribute False Optional (NS I [ UInt32
                                                                    , ConstrainULongRange
                                                                    ])
  width = fromUndefOrPrimNoDefault "MediaTrackConstraintSet.getwidth"
                                   prim__width
                                   prim__setWidth

namespace MediaTrackConstraints
  
  export
  new :  (advanced : Optional (Array MediaTrackConstraintSet))
      -> JSIO MediaTrackConstraints
  new a = primJS $ MediaTrackConstraints.prim__new (toFFI a)

  export
  new' : JSIO MediaTrackConstraints
  new' = primJS $ MediaTrackConstraints.prim__new undef
  
  export
  advanced : MediaTrackConstraints -> Attribute False Optional (Array MediaTrackConstraintSet)
  advanced = fromUndefOrPrimNoDefault "MediaTrackConstraints.getadvanced"
                                      prim__advanced
                                      prim__setAdvanced

namespace MediaTrackSettings
  
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
  new a b c d e f g h i j k l m n o = primJS
                                    $ MediaTrackSettings.prim__new (toFFI a)
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
  new' = primJS
       $ MediaTrackSettings.prim__new undef
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
  aspectRatio : MediaTrackSettings -> Attribute False Optional Double
  aspectRatio = fromUndefOrPrimNoDefault "MediaTrackSettings.getaspectRatio"
                                         prim__aspectRatio
                                         prim__setAspectRatio
  
  export
  autoGainControl : MediaTrackSettings -> Attribute False Optional Bool
  autoGainControl = fromUndefOrPrimNoDefault "MediaTrackSettings.getautoGainControl"
                                             prim__autoGainControl
                                             prim__setAutoGainControl
  
  export
  channelCount : MediaTrackSettings -> Attribute False Optional Int32
  channelCount = fromUndefOrPrimNoDefault "MediaTrackSettings.getchannelCount"
                                          prim__channelCount
                                          prim__setChannelCount
  
  export
  deviceId : MediaTrackSettings -> Attribute False Optional String
  deviceId = fromUndefOrPrimNoDefault "MediaTrackSettings.getdeviceId"
                                      prim__deviceId
                                      prim__setDeviceId
  
  export
  echoCancellation : MediaTrackSettings -> Attribute False Optional Bool
  echoCancellation = fromUndefOrPrimNoDefault "MediaTrackSettings.getechoCancellation"
                                              prim__echoCancellation
                                              prim__setEchoCancellation
  
  export
  facingMode : MediaTrackSettings -> Attribute False Optional String
  facingMode = fromUndefOrPrimNoDefault "MediaTrackSettings.getfacingMode"
                                        prim__facingMode
                                        prim__setFacingMode
  
  export
  frameRate : MediaTrackSettings -> Attribute False Optional Double
  frameRate = fromUndefOrPrimNoDefault "MediaTrackSettings.getframeRate"
                                       prim__frameRate
                                       prim__setFrameRate
  
  export
  groupId : MediaTrackSettings -> Attribute False Optional String
  groupId = fromUndefOrPrimNoDefault "MediaTrackSettings.getgroupId"
                                     prim__groupId
                                     prim__setGroupId
  
  export
  height : MediaTrackSettings -> Attribute False Optional Int32
  height = fromUndefOrPrimNoDefault "MediaTrackSettings.getheight"
                                    prim__height
                                    prim__setHeight
  
  export
  latency : MediaTrackSettings -> Attribute False Optional Double
  latency = fromUndefOrPrimNoDefault "MediaTrackSettings.getlatency"
                                     prim__latency
                                     prim__setLatency
  
  export
  noiseSuppression : MediaTrackSettings -> Attribute False Optional Bool
  noiseSuppression = fromUndefOrPrimNoDefault "MediaTrackSettings.getnoiseSuppression"
                                              prim__noiseSuppression
                                              prim__setNoiseSuppression
  
  export
  resizeMode : MediaTrackSettings -> Attribute False Optional String
  resizeMode = fromUndefOrPrimNoDefault "MediaTrackSettings.getresizeMode"
                                        prim__resizeMode
                                        prim__setResizeMode
  
  export
  sampleRate : MediaTrackSettings -> Attribute False Optional Int32
  sampleRate = fromUndefOrPrimNoDefault "MediaTrackSettings.getsampleRate"
                                        prim__sampleRate
                                        prim__setSampleRate
  
  export
  sampleSize : MediaTrackSettings -> Attribute False Optional Int32
  sampleSize = fromUndefOrPrimNoDefault "MediaTrackSettings.getsampleSize"
                                        prim__sampleSize
                                        prim__setSampleSize
  
  export
  width : MediaTrackSettings -> Attribute False Optional Int32
  width = fromUndefOrPrimNoDefault "MediaTrackSettings.getwidth"
                                   prim__width
                                   prim__setWidth

namespace MediaTrackSupportedConstraints
  
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
  new a b c d e f g h i j k l m n o = primJS
                                    $ MediaTrackSupportedConstraints.prim__new (toFFI a)
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
  new' = primJS
       $ MediaTrackSupportedConstraints.prim__new undef
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
  aspectRatio : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  aspectRatio = fromUndefOrPrim "MediaTrackSupportedConstraints.getaspectRatio"
                                prim__aspectRatio
                                prim__setAspectRatio
                                True
  
  export
  autoGainControl : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  autoGainControl = fromUndefOrPrim "MediaTrackSupportedConstraints.getautoGainControl"
                                    prim__autoGainControl
                                    prim__setAutoGainControl
                                    True
  
  export
  channelCount : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  channelCount = fromUndefOrPrim "MediaTrackSupportedConstraints.getchannelCount"
                                 prim__channelCount
                                 prim__setChannelCount
                                 True
  
  export
  deviceId : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  deviceId = fromUndefOrPrim "MediaTrackSupportedConstraints.getdeviceId"
                             prim__deviceId
                             prim__setDeviceId
                             True
  
  export
  echoCancellation : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  echoCancellation = fromUndefOrPrim "MediaTrackSupportedConstraints.getechoCancellation"
                                     prim__echoCancellation
                                     prim__setEchoCancellation
                                     True
  
  export
  facingMode : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  facingMode = fromUndefOrPrim "MediaTrackSupportedConstraints.getfacingMode"
                               prim__facingMode
                               prim__setFacingMode
                               True
  
  export
  frameRate : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  frameRate = fromUndefOrPrim "MediaTrackSupportedConstraints.getframeRate"
                              prim__frameRate
                              prim__setFrameRate
                              True
  
  export
  groupId : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  groupId = fromUndefOrPrim "MediaTrackSupportedConstraints.getgroupId"
                            prim__groupId
                            prim__setGroupId
                            True
  
  export
  height : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  height = fromUndefOrPrim "MediaTrackSupportedConstraints.getheight"
                           prim__height
                           prim__setHeight
                           True
  
  export
  latency : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  latency = fromUndefOrPrim "MediaTrackSupportedConstraints.getlatency"
                            prim__latency
                            prim__setLatency
                            True
  
  export
  noiseSuppression : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  noiseSuppression = fromUndefOrPrim "MediaTrackSupportedConstraints.getnoiseSuppression"
                                     prim__noiseSuppression
                                     prim__setNoiseSuppression
                                     True
  
  export
  resizeMode : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  resizeMode = fromUndefOrPrim "MediaTrackSupportedConstraints.getresizeMode"
                               prim__resizeMode
                               prim__setResizeMode
                               True
  
  export
  sampleRate : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  sampleRate = fromUndefOrPrim "MediaTrackSupportedConstraints.getsampleRate"
                               prim__sampleRate
                               prim__setSampleRate
                               True
  
  export
  sampleSize : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  sampleSize = fromUndefOrPrim "MediaTrackSupportedConstraints.getsampleSize"
                               prim__sampleSize
                               prim__setSampleSize
                               True
  
  export
  width : MediaTrackSupportedConstraints -> Attribute True Optional Bool
  width = fromUndefOrPrim "MediaTrackSupportedConstraints.getwidth"
                          prim__width
                          prim__setWidth
                          True

namespace Settings
  
  export
  new : JSIO Settings
  new = primJS $ Settings.prim__new 

namespace ULongRange
  
  export
  new : (max : Optional UInt32) -> (min : Optional UInt32) -> JSIO ULongRange
  new a b = primJS $ ULongRange.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ULongRange
  new' = primJS $ ULongRange.prim__new undef undef
  
  export
  max : ULongRange -> Attribute False Optional UInt32
  max = fromUndefOrPrimNoDefault "ULongRange.getmax" prim__max prim__setMax
  
  export
  min : ULongRange -> Attribute False Optional UInt32
  min = fromUndefOrPrimNoDefault "ULongRange.getmin" prim__min prim__setMin

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

namespace NavigatorUserMediaErrorCallback
  
  export
  toNavigatorUserMediaErrorCallback :  ( DOMException -> IO () )
                                    -> JSIO NavigatorUserMediaErrorCallback
  toNavigatorUserMediaErrorCallback cb = primJS $ prim__toNavigatorUserMediaErrorCallback cb

namespace NavigatorUserMediaSuccessCallback
  
  export
  toNavigatorUserMediaSuccessCallback :  ( MediaStream -> IO () )
                                      -> JSIO NavigatorUserMediaSuccessCallback
  toNavigatorUserMediaSuccessCallback cb = primJS $ prim__toNavigatorUserMediaSuccessCallback cb