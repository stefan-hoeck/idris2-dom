module Web.Internal.MediastreamPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ConstrainablePattern
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.applyConstraints(a b)"
  prim__applyConstraints :  ConstrainablePattern
                         -> UndefOr Constraints
                         -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getCapabilities(a)"
  prim__getCapabilities : ConstrainablePattern -> PrimIO Capabilities
  
  export
  %foreign "browser:lambda:(x,a)=>x.getConstraints(a)"
  prim__getConstraints : ConstrainablePattern -> PrimIO Constraints
  
  export
  %foreign "browser:lambda:(x,a)=>x.getSettings(a)"
  prim__getSettings : ConstrainablePattern -> PrimIO Settings

namespace InputDeviceInfo
  
  export
  %foreign "browser:lambda:(x,a)=>x.getCapabilities(a)"
  prim__getCapabilities : InputDeviceInfo -> PrimIO MediaTrackCapabilities

namespace MediaDeviceInfo
  
  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : MediaDeviceInfo -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : MediaDeviceInfo -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : MediaDeviceInfo -> PrimIO MediaDeviceKind
  
  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : MediaDeviceInfo -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.toJSON(a)"
  prim__toJSON : MediaDeviceInfo -> PrimIO Object

namespace MediaDevices
  
  export
  %foreign "browser:lambda:x=>x.ondevicechange"
  prim__ondevicechange : MediaDevices -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ondevicechange = v}"
  prim__setOndevicechange : MediaDevices -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.enumerateDevices(a)"
  prim__enumerateDevices :  MediaDevices
                         -> PrimIO (Promise (Array MediaDeviceInfo))
  
  export
  %foreign "browser:lambda:(x,a)=>x.getSupportedConstraints(a)"
  prim__getSupportedConstraints :  MediaDevices
                                -> PrimIO MediaTrackSupportedConstraints
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getUserMedia(a b)"
  prim__getUserMedia :  MediaDevices
                     -> UndefOr MediaStreamConstraints
                     -> PrimIO (Promise MediaStream)

namespace MediaStream
  
  export
  %foreign "browser:lambda:()=> new MediaStream()"
  prim__new : PrimIO MediaStream
  
  export
  %foreign "browser:lambda:(a)=> new MediaStream(a)"
  prim__new1 : MediaStream -> PrimIO MediaStream
  
  export
  %foreign "browser:lambda:(a)=> new MediaStream(a)"
  prim__new2 : Array MediaStreamTrack -> PrimIO MediaStream
  
  export
  %foreign "browser:lambda:x=>x.active"
  prim__active : MediaStream -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : MediaStream -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : MediaStream -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : MediaStream -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : MediaStream -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : MediaStream -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.addTrack(a b)"
  prim__addTrack : MediaStream -> MediaStreamTrack -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.clone(a)"
  prim__clone : MediaStream -> PrimIO MediaStream
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAudioTracks(a)"
  prim__getAudioTracks : MediaStream -> PrimIO (Array MediaStreamTrack)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getTrackById(a b)"
  prim__getTrackById :  MediaStream
                     -> String
                     -> PrimIO (Nullable MediaStreamTrack)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getTracks(a)"
  prim__getTracks : MediaStream -> PrimIO (Array MediaStreamTrack)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getVideoTracks(a)"
  prim__getVideoTracks : MediaStream -> PrimIO (Array MediaStreamTrack)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.removeTrack(a b)"
  prim__removeTrack : MediaStream -> MediaStreamTrack -> PrimIO ()

namespace MediaStreamTrack
  
  export
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : MediaStreamTrack -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : MediaStreamTrack -> Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : MediaStreamTrack -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : MediaStreamTrack -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.label"
  prim__label : MediaStreamTrack -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : MediaStreamTrack -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : MediaStreamTrack -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended : MediaStreamTrack -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onmute"
  prim__onmute : MediaStreamTrack -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onmute = v}"
  prim__setOnmute : MediaStreamTrack -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onunmute"
  prim__onunmute : MediaStreamTrack -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onunmute = v}"
  prim__setOnunmute : MediaStreamTrack -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : MediaStreamTrack -> PrimIO MediaStreamTrackState
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.applyConstraints(a b)"
  prim__applyConstraints :  MediaStreamTrack
                         -> UndefOr MediaTrackConstraints
                         -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.clone(a)"
  prim__clone : MediaStreamTrack -> PrimIO MediaStreamTrack
  
  export
  %foreign "browser:lambda:(x,a)=>x.getCapabilities(a)"
  prim__getCapabilities : MediaStreamTrack -> PrimIO MediaTrackCapabilities
  
  export
  %foreign "browser:lambda:(x,a)=>x.getConstraints(a)"
  prim__getConstraints : MediaStreamTrack -> PrimIO MediaTrackConstraints
  
  export
  %foreign "browser:lambda:(x,a)=>x.getSettings(a)"
  prim__getSettings : MediaStreamTrack -> PrimIO MediaTrackSettings
  
  export
  %foreign "browser:lambda:(x,a)=>x.stop(a)"
  prim__stop : MediaStreamTrack -> PrimIO ()

namespace MediaStreamTrackEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new MediaStreamTrackEvent(a b)"
  prim__new :  String
            -> MediaStreamTrackEventInit
            -> PrimIO MediaStreamTrackEvent
  
  export
  %foreign "browser:lambda:x=>x.track"
  prim__track : MediaStreamTrackEvent -> PrimIO MediaStreamTrack

namespace OverconstrainedError
  
  export
  %foreign "browser:lambda:(a,b)=> new OverconstrainedError(a b)"
  prim__new : String -> UndefOr String -> PrimIO OverconstrainedError
  
  export
  %foreign "browser:lambda:x=>x.constraint"
  prim__constraint : OverconstrainedError -> PrimIO String


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------


namespace ConstrainBooleanParameters
  
  export
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : ConstrainBooleanParameters -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : ConstrainBooleanParameters -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : ConstrainBooleanParameters -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : ConstrainBooleanParameters -> UndefOr Boolean -> PrimIO ()

namespace ConstrainDOMStringParameters
  
  export
  %foreign "browser:lambda:x=>x.exact"
  prim__exact :  ConstrainDOMStringParameters
              -> PrimIO (UndefOr (Union2 String (Array String)))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact :  ConstrainDOMStringParameters
                 -> UndefOr (Union2 String (Array String))
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal :  ConstrainDOMStringParameters
              -> PrimIO (UndefOr (Union2 String (Array String)))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal :  ConstrainDOMStringParameters
                 -> UndefOr (Union2 String (Array String))
                 -> PrimIO ()

namespace ConstrainDoubleRange
  
  export
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : ConstrainDoubleRange -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : ConstrainDoubleRange -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : ConstrainDoubleRange -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : ConstrainDoubleRange -> UndefOr Double -> PrimIO ()

namespace ConstrainULongRange
  
  export
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : ConstrainULongRange -> PrimIO (UndefOr UInt32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : ConstrainULongRange -> UndefOr UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : ConstrainULongRange -> PrimIO (UndefOr UInt32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : ConstrainULongRange -> UndefOr UInt32 -> PrimIO ()


namespace Constraints
  
  export
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : Constraints -> PrimIO (UndefOr (Array ConstraintSet))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced : Constraints -> UndefOr (Array ConstraintSet) -> PrimIO ()

namespace DoubleRange
  
  export
  %foreign "browser:lambda:x=>x.max"
  prim__max : DoubleRange -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : DoubleRange -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.min"
  prim__min : DoubleRange -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : DoubleRange -> UndefOr Double -> PrimIO ()

namespace MediaStreamConstraints
  
  export
  %foreign "browser:lambda:x=>x.audio"
  prim__audio :  MediaStreamConstraints
              -> PrimIO (UndefOr (Union2 Boolean MediaTrackConstraints))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.audio = v}"
  prim__setAudio :  MediaStreamConstraints
                 -> UndefOr (Union2 Boolean MediaTrackConstraints)
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.video"
  prim__video :  MediaStreamConstraints
              -> PrimIO (UndefOr (Union2 Boolean MediaTrackConstraints))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.video = v}"
  prim__setVideo :  MediaStreamConstraints
                 -> UndefOr (Union2 Boolean MediaTrackConstraints)
                 -> PrimIO ()

namespace MediaStreamTrackEventInit
  
  export
  %foreign "browser:lambda:x=>x.track"
  prim__track : MediaStreamTrackEventInit -> PrimIO MediaStreamTrack
  
  export
  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack : MediaStreamTrackEventInit -> MediaStreamTrack -> PrimIO ()

namespace MediaTrackCapabilities
  
  export
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio :  MediaTrackCapabilities
                       -> UndefOr DoubleRange
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl :  MediaTrackCapabilities
                        -> PrimIO (UndefOr (Array Boolean))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl :  MediaTrackCapabilities
                           -> UndefOr (Array Boolean)
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount :  MediaTrackCapabilities
                        -> UndefOr ULongRange
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : MediaTrackCapabilities -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : MediaTrackCapabilities -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation :  MediaTrackCapabilities
                         -> PrimIO (UndefOr (Array Boolean))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation :  MediaTrackCapabilities
                            -> UndefOr (Array Boolean)
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : MediaTrackCapabilities -> PrimIO (UndefOr (Array String))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode :  MediaTrackCapabilities
                      -> UndefOr (Array String)
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate :  MediaTrackCapabilities
                     -> UndefOr DoubleRange
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : MediaTrackCapabilities -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : MediaTrackCapabilities -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : MediaTrackCapabilities -> PrimIO (UndefOr DoubleRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : MediaTrackCapabilities -> UndefOr DoubleRange -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression :  MediaTrackCapabilities
                         -> PrimIO (UndefOr (Array Boolean))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression :  MediaTrackCapabilities
                            -> UndefOr (Array Boolean)
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : MediaTrackCapabilities -> PrimIO (UndefOr (Array String))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode :  MediaTrackCapabilities
                      -> UndefOr (Array String)
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate :  MediaTrackCapabilities
                      -> UndefOr ULongRange
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize :  MediaTrackCapabilities
                      -> UndefOr ULongRange
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : MediaTrackCapabilities -> PrimIO (UndefOr ULongRange)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : MediaTrackCapabilities -> UndefOr ULongRange -> PrimIO ()

namespace MediaTrackConstraintSet
  
  export
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio :  MediaTrackConstraintSet
                    -> PrimIO (UndefOr ConstrainDouble)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio :  MediaTrackConstraintSet
                       -> UndefOr ConstrainDouble
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl :  MediaTrackConstraintSet
                        -> PrimIO (UndefOr ConstrainBoolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl :  MediaTrackConstraintSet
                           -> UndefOr ConstrainBoolean
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount :  MediaTrackConstraintSet
                     -> PrimIO (UndefOr ConstrainULong)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount :  MediaTrackConstraintSet
                        -> UndefOr ConstrainULong
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId :  MediaTrackConstraintSet
                 -> PrimIO (UndefOr ConstrainDOMString)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId :  MediaTrackConstraintSet
                    -> UndefOr ConstrainDOMString
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation :  MediaTrackConstraintSet
                         -> PrimIO (UndefOr ConstrainBoolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation :  MediaTrackConstraintSet
                            -> UndefOr ConstrainBoolean
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode :  MediaTrackConstraintSet
                   -> PrimIO (UndefOr ConstrainDOMString)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode :  MediaTrackConstraintSet
                      -> UndefOr ConstrainDOMString
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainDouble)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate :  MediaTrackConstraintSet
                     -> UndefOr ConstrainDouble
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainDOMString)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId :  MediaTrackConstraintSet
                   -> UndefOr ConstrainDOMString
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainULong)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight :  MediaTrackConstraintSet
                  -> UndefOr ConstrainULong
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainDouble)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency :  MediaTrackConstraintSet
                   -> UndefOr ConstrainDouble
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression :  MediaTrackConstraintSet
                         -> PrimIO (UndefOr ConstrainBoolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression :  MediaTrackConstraintSet
                            -> UndefOr ConstrainBoolean
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode :  MediaTrackConstraintSet
                   -> PrimIO (UndefOr ConstrainDOMString)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode :  MediaTrackConstraintSet
                      -> UndefOr ConstrainDOMString
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainULong)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate :  MediaTrackConstraintSet
                      -> UndefOr ConstrainULong
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainULong)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize :  MediaTrackConstraintSet
                      -> UndefOr ConstrainULong
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : MediaTrackConstraintSet -> PrimIO (UndefOr ConstrainULong)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth :  MediaTrackConstraintSet
                 -> UndefOr ConstrainULong
                 -> PrimIO ()

namespace MediaTrackConstraints
  
  export
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced :  MediaTrackConstraints
                 -> PrimIO (UndefOr (Array MediaTrackConstraintSet))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced :  MediaTrackConstraints
                    -> UndefOr (Array MediaTrackConstraintSet)
                    -> PrimIO ()

namespace MediaTrackSettings
  
  export
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : MediaTrackSettings -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : MediaTrackSettings -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : MediaTrackSettings -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : MediaTrackSettings -> PrimIO (UndefOr Int32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : MediaTrackSettings -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : MediaTrackSettings -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : MediaTrackSettings -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : MediaTrackSettings -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : MediaTrackSettings -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : MediaTrackSettings -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : MediaTrackSettings -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : MediaTrackSettings -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : MediaTrackSettings -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : MediaTrackSettings -> PrimIO (UndefOr Int32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : MediaTrackSettings -> PrimIO (UndefOr Double)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : MediaTrackSettings -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : MediaTrackSettings -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : MediaTrackSettings -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : MediaTrackSettings -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : MediaTrackSettings -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : MediaTrackSettings -> PrimIO (UndefOr Int32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : MediaTrackSettings -> PrimIO (UndefOr Int32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : MediaTrackSettings -> PrimIO (UndefOr Int32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : MediaTrackSettings -> UndefOr Int32 -> PrimIO ()

namespace MediaTrackSupportedConstraints
  
  export
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio :  MediaTrackSupportedConstraints
                       -> UndefOr Boolean
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl :  MediaTrackSupportedConstraints
                        -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl :  MediaTrackSupportedConstraints
                           -> UndefOr Boolean
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount :  MediaTrackSupportedConstraints
                     -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount :  MediaTrackSupportedConstraints
                        -> UndefOr Boolean
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId :  MediaTrackSupportedConstraints
                    -> UndefOr Boolean
                    -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation :  MediaTrackSupportedConstraints
                         -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation :  MediaTrackSupportedConstraints
                            -> UndefOr Boolean
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode :  MediaTrackSupportedConstraints
                      -> UndefOr Boolean
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate :  MediaTrackSupportedConstraints
                     -> UndefOr Boolean
                     -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId :  MediaTrackSupportedConstraints
                   -> UndefOr Boolean
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight :  MediaTrackSupportedConstraints
                  -> UndefOr Boolean
                  -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency :  MediaTrackSupportedConstraints
                   -> UndefOr Boolean
                   -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression :  MediaTrackSupportedConstraints
                         -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression :  MediaTrackSupportedConstraints
                            -> UndefOr Boolean
                            -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode :  MediaTrackSupportedConstraints
                      -> UndefOr Boolean
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate :  MediaTrackSupportedConstraints
                      -> UndefOr Boolean
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize :  MediaTrackSupportedConstraints
                      -> UndefOr Boolean
                      -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : MediaTrackSupportedConstraints -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth :  MediaTrackSupportedConstraints
                 -> UndefOr Boolean
                 -> PrimIO ()


namespace ULongRange
  
  export
  %foreign "browser:lambda:x=>x.max"
  prim__max : ULongRange -> PrimIO (UndefOr UInt32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : ULongRange -> UndefOr UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.min"
  prim__min : ULongRange -> PrimIO (UndefOr UInt32)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : ULongRange -> UndefOr UInt32 -> PrimIO ()