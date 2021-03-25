module Web.Mediastream

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaDeviceInfo
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr

namespace MediaDevices
  
  %foreign "browser:lambda:x=>x.ondevicechange"
  prim__ondevicechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ondevicechange = v}"
  prim__setOndevicechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaStream
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaStreamTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmute"
  prim__onmute : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmute = v}"
  prim__setOnmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onunmute"
  prim__onunmute : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onunmute = v}"
  prim__setOnunmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaStreamTrackEvent
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

namespace OverconstrainedError
  
  %foreign "browser:lambda:x=>x.constraint"
  prim__constraint : AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ConstrainBooleanParameters
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ConstrainDOMStringParameters
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ConstrainDoubleRange
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ConstrainULongRange
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace Constraints
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DoubleRange
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaStreamConstraints
  
  %foreign "browser:lambda:x=>x.audio"
  prim__audio : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.audio = v}"
  prim__setAudio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.video"
  prim__video : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.video = v}"
  prim__setVideo : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaStreamTrackEventInit
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaTrackCapabilities
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaTrackConstraintSet
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaTrackConstraints
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaTrackSettings
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MediaTrackSupportedConstraints
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ULongRange
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ConstrainDoubleRange DoubleRange where
  cast = believe_me

export
Cast ConstrainULongRange ULongRange where
  cast = believe_me

export
Cast Constraints ConstraintSet where
  cast = believe_me

export
Cast InputDeviceInfo MediaDeviceInfo where
  cast = believe_me

export
Cast MediaDevices EventTarget where
  cast = believe_me

export
Cast MediaStream EventTarget where
  cast = believe_me

export
Cast MediaStreamTrack EventTarget where
  cast = believe_me

export
Cast MediaStreamTrackEvent Event where
  cast = believe_me

export
Cast MediaStreamTrackEventInit EventInit where
  cast = believe_me

export
Cast MediaTrackConstraints MediaTrackConstraintSet where
  cast = believe_me

export
Cast OverconstrainedError DOMException where
  cast = believe_me