module Web.Mediastream

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaDeviceInfo
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast mediaDeviceInfo MediaDeviceInfo
           => ToJS MediaDeviceInfo
           => (obj : mediaDeviceInfo)
           -> IO String
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  export
  groupId :  Cast mediaDeviceInfo MediaDeviceInfo
          => ToJS MediaDeviceInfo
          => (obj : mediaDeviceInfo)
          -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast mediaDeviceInfo MediaDeviceInfo
       => ToJS MediaDeviceInfo
       => (obj : mediaDeviceInfo)
       -> IO MediaDeviceKind
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast mediaDeviceInfo MediaDeviceInfo
        => ToJS MediaDeviceInfo
        => (obj : mediaDeviceInfo)
        -> IO String

namespace MediaDevices
  
  %foreign "browser:lambda:x=>x.ondevicechange"
  prim__ondevicechange : AnyPtr -> PrimIO AnyPtr
  
  export
  ondevicechange :  Cast mediaDevices MediaDevices
                 => ToJS MediaDevices
                 => (obj : mediaDevices)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ondevicechange = v}"
  prim__setOndevicechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOndevicechange :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast mediaDevices MediaDevices
                    => ToJS MediaDevices
                    => (obj : mediaDevices)
                    -> (v : eventHandler)
                    -> IO ()

namespace MediaStream
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr
  
  export
  active :  Cast mediaStream MediaStream
         => ToJS MediaStream
         => (obj : mediaStream)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast mediaStream MediaStream
     => ToJS MediaStream
     => (obj : mediaStream)
     -> IO String
  
  %foreign "browser:lambda:x=>x.onaddtrack"
  prim__onaddtrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onaddtrack :  Cast mediaStream MediaStream
             => ToJS MediaStream
             => (obj : mediaStream)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onaddtrack = v}"
  prim__setOnaddtrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnaddtrack :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast mediaStream MediaStream
                => ToJS MediaStream
                => (obj : mediaStream)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onremovetrack"
  prim__onremovetrack : AnyPtr -> PrimIO AnyPtr
  
  export
  onremovetrack :  Cast mediaStream MediaStream
                => ToJS MediaStream
                => (obj : mediaStream)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onremovetrack = v}"
  prim__setOnremovetrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnremovetrack :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast mediaStream MediaStream
                   => ToJS MediaStream
                   => (obj : mediaStream)
                   -> (v : eventHandler)
                   -> IO ()

namespace MediaStreamTrack
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id :  Cast mediaStreamTrack MediaStreamTrack
     => ToJS MediaStreamTrack
     => (obj : mediaStreamTrack)
     -> IO String
  
  %foreign "browser:lambda:x=>x.kind"
  prim__kind : AnyPtr -> PrimIO AnyPtr
  
  export
  kind :  Cast mediaStreamTrack MediaStreamTrack
       => ToJS MediaStreamTrack
       => (obj : mediaStreamTrack)
       -> IO String
  
  %foreign "browser:lambda:x=>x.label"
  prim__label : AnyPtr -> PrimIO AnyPtr
  
  export
  label :  Cast mediaStreamTrack MediaStreamTrack
        => ToJS MediaStreamTrack
        => (obj : mediaStreamTrack)
        -> IO String
  
  %foreign "browser:lambda:x=>x.muted"
  prim__muted : AnyPtr -> PrimIO AnyPtr
  
  export
  muted :  Cast mediaStreamTrack MediaStreamTrack
        => ToJS MediaStreamTrack
        => (obj : mediaStreamTrack)
        -> IO Bool
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast mediaStreamTrack MediaStreamTrack
             => ToJS MediaStreamTrack
             => (obj : mediaStreamTrack)
             -> IO MediaStreamTrackState
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr
  
  export
  enabled :  Cast mediaStreamTrack MediaStreamTrack
          => ToJS MediaStreamTrack
          => (obj : mediaStreamTrack)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEnabled :  Cast mediaStreamTrack MediaStreamTrack
             => ToJS MediaStreamTrack
             => (obj : mediaStreamTrack)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onended"
  prim__onended : AnyPtr -> PrimIO AnyPtr
  
  export
  onended :  Cast mediaStreamTrack MediaStreamTrack
          => ToJS MediaStreamTrack
          => (obj : mediaStreamTrack)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onended = v}"
  prim__setOnended : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnended :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast mediaStreamTrack MediaStreamTrack
             => ToJS MediaStreamTrack
             => (obj : mediaStreamTrack)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onmute"
  prim__onmute : AnyPtr -> PrimIO AnyPtr
  
  export
  onmute :  Cast mediaStreamTrack MediaStreamTrack
         => ToJS MediaStreamTrack
         => (obj : mediaStreamTrack)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmute = v}"
  prim__setOnmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmute :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast mediaStreamTrack MediaStreamTrack
            => ToJS MediaStreamTrack
            => (obj : mediaStreamTrack)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.onunmute"
  prim__onunmute : AnyPtr -> PrimIO AnyPtr
  
  export
  onunmute :  Cast mediaStreamTrack MediaStreamTrack
           => ToJS MediaStreamTrack
           => (obj : mediaStreamTrack)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onunmute = v}"
  prim__setOnunmute : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnunmute :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast mediaStreamTrack MediaStreamTrack
              => ToJS MediaStreamTrack
              => (obj : mediaStreamTrack)
              -> (v : eventHandler)
              -> IO ()

namespace MediaStreamTrackEvent
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast mediaStreamTrackEvent MediaStreamTrackEvent
        => ToJS MediaStreamTrackEvent
        => (obj : mediaStreamTrackEvent)
        -> IO MediaStreamTrack

namespace OverconstrainedError
  
  %foreign "browser:lambda:x=>x.constraint"
  prim__constraint : AnyPtr -> PrimIO AnyPtr
  
  export
  constraint :  Cast overconstrainedError OverconstrainedError
             => ToJS OverconstrainedError
             => (obj : overconstrainedError)
             -> IO String


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ConstrainBooleanParameters
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr
  
  export
  exact :  Cast constrainBooleanParameters ConstrainBooleanParameters
        => ToJS ConstrainBooleanParameters
        => (obj : constrainBooleanParameters)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setExact :  Cast constrainBooleanParameters ConstrainBooleanParameters
           => ToJS ConstrainBooleanParameters
           => (obj : constrainBooleanParameters)
           -> (v : Bool)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr
  
  export
  ideal :  Cast constrainBooleanParameters ConstrainBooleanParameters
        => ToJS ConstrainBooleanParameters
        => (obj : constrainBooleanParameters)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIdeal :  Cast constrainBooleanParameters ConstrainBooleanParameters
           => ToJS ConstrainBooleanParameters
           => (obj : constrainBooleanParameters)
           -> (v : Bool)
           -> IO ()

namespace ConstrainDOMStringParameters
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr
  
  export
  exact :  Cast constrainDOMStringParameters ConstrainDOMStringParameters
        => ToJS ConstrainDOMStringParameters
        => (obj : constrainDOMStringParameters)
        -> IO (NS I [ String , JSArray String ])
  
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setExact :  Cast constrainDOMStringParameters ConstrainDOMStringParameters
           => ToJS ConstrainDOMStringParameters
           => (obj : constrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr
  
  export
  ideal :  Cast constrainDOMStringParameters ConstrainDOMStringParameters
        => ToJS ConstrainDOMStringParameters
        => (obj : constrainDOMStringParameters)
        -> IO (NS I [ String , JSArray String ])
  
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIdeal :  Cast constrainDOMStringParameters ConstrainDOMStringParameters
           => ToJS ConstrainDOMStringParameters
           => (obj : constrainDOMStringParameters)
           -> (v : NS I [ String , JSArray String ])
           -> IO ()

namespace ConstrainDoubleRange
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr
  
  export
  exact :  Cast constrainDoubleRange ConstrainDoubleRange
        => ToJS ConstrainDoubleRange
        => (obj : constrainDoubleRange)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setExact :  Cast constrainDoubleRange ConstrainDoubleRange
           => ToJS ConstrainDoubleRange
           => (obj : constrainDoubleRange)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr
  
  export
  ideal :  Cast constrainDoubleRange ConstrainDoubleRange
        => ToJS ConstrainDoubleRange
        => (obj : constrainDoubleRange)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIdeal :  Cast constrainDoubleRange ConstrainDoubleRange
           => ToJS ConstrainDoubleRange
           => (obj : constrainDoubleRange)
           -> (v : Double)
           -> IO ()

namespace ConstrainULongRange
  
  %foreign "browser:lambda:x=>x.exact"
  prim__exact : AnyPtr -> PrimIO AnyPtr
  
  export
  exact :  Cast constrainULongRange ConstrainULongRange
        => ToJS ConstrainULongRange
        => (obj : constrainULongRange)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.exact = v}"
  prim__setExact : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setExact :  Cast constrainULongRange ConstrainULongRange
           => ToJS ConstrainULongRange
           => (obj : constrainULongRange)
           -> (v : UInt32)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.ideal"
  prim__ideal : AnyPtr -> PrimIO AnyPtr
  
  export
  ideal :  Cast constrainULongRange ConstrainULongRange
        => ToJS ConstrainULongRange
        => (obj : constrainULongRange)
        -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.ideal = v}"
  prim__setIdeal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIdeal :  Cast constrainULongRange ConstrainULongRange
           => ToJS ConstrainULongRange
           => (obj : constrainULongRange)
           -> (v : UInt32)
           -> IO ()

namespace Constraints
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr
  
  export
  advanced :  Cast constraints Constraints
           => ToJS Constraints
           => (obj : constraints)
           -> IO (JSArray ConstraintSet)
  
  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAdvanced :  Cast constraints Constraints
              => ToJS Constraints
              => (obj : constraints)
              -> (v : JSArray ConstraintSet)
              -> IO ()

namespace DoubleRange
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr
  
  export
  max :  Cast doubleRange DoubleRange
      => ToJS DoubleRange
      => (obj : doubleRange)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMax :  Cast doubleRange DoubleRange
         => ToJS DoubleRange
         => (obj : doubleRange)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr
  
  export
  min :  Cast doubleRange DoubleRange
      => ToJS DoubleRange
      => (obj : doubleRange)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMin :  Cast doubleRange DoubleRange
         => ToJS DoubleRange
         => (obj : doubleRange)
         -> (v : Double)
         -> IO ()

namespace MediaStreamConstraints
  
  %foreign "browser:lambda:x=>x.audio"
  prim__audio : AnyPtr -> PrimIO AnyPtr
  
  export
  audio :  Cast mediaStreamConstraints MediaStreamConstraints
        => ToJS MediaStreamConstraints
        => (obj : mediaStreamConstraints)
        -> IO (NS I [ Bool , MediaTrackConstraints ])
  
  %foreign "browser:lambda:(x,v)=>{x.audio = v}"
  prim__setAudio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAudio :  Cast mediaStreamConstraints MediaStreamConstraints
           => ToJS MediaStreamConstraints
           => (obj : mediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> IO ()
  
  %foreign "browser:lambda:x=>x.video"
  prim__video : AnyPtr -> PrimIO AnyPtr
  
  export
  video :  Cast mediaStreamConstraints MediaStreamConstraints
        => ToJS MediaStreamConstraints
        => (obj : mediaStreamConstraints)
        -> IO (NS I [ Bool , MediaTrackConstraints ])
  
  %foreign "browser:lambda:(x,v)=>{x.video = v}"
  prim__setVideo : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setVideo :  Cast mediaStreamConstraints MediaStreamConstraints
           => ToJS MediaStreamConstraints
           => (obj : mediaStreamConstraints)
           -> (v : NS I [ Bool , MediaTrackConstraints ])
           -> IO ()

namespace MediaStreamTrackEventInit
  
  %foreign "browser:lambda:x=>x.track"
  prim__track : AnyPtr -> PrimIO AnyPtr
  
  export
  track :  Cast mediaStreamTrackEventInit MediaStreamTrackEventInit
        => ToJS MediaStreamTrackEventInit
        => (obj : mediaStreamTrackEventInit)
        -> IO MediaStreamTrack
  
  %foreign "browser:lambda:(x,v)=>{x.track = v}"
  prim__setTrack : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTrack :  Cast mediaStreamTrack MediaStreamTrack
           => ToJS MediaStreamTrack
           => Cast mediaStreamTrackEventInit MediaStreamTrackEventInit
           => ToJS MediaStreamTrackEventInit
           => (obj : mediaStreamTrackEventInit)
           -> (v : mediaStreamTrack)
           -> IO ()

namespace MediaTrackCapabilities
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  aspectRatio :  Cast mediaTrackCapabilities MediaTrackCapabilities
              => ToJS MediaTrackCapabilities
              => (obj : mediaTrackCapabilities)
              -> IO DoubleRange
  
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAspectRatio :  Cast doubleRange DoubleRange
                 => ToJS DoubleRange
                 => Cast mediaTrackCapabilities MediaTrackCapabilities
                 => ToJS MediaTrackCapabilities
                 => (obj : mediaTrackCapabilities)
                 -> (v : doubleRange)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr
  
  export
  autoGainControl :  Cast mediaTrackCapabilities MediaTrackCapabilities
                  => ToJS MediaTrackCapabilities
                  => (obj : mediaTrackCapabilities)
                  -> IO (JSArray Bool)
  
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoGainControl :  Cast mediaTrackCapabilities MediaTrackCapabilities
                     => ToJS MediaTrackCapabilities
                     => (obj : mediaTrackCapabilities)
                     -> (v : JSArray Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr
  
  export
  channelCount :  Cast mediaTrackCapabilities MediaTrackCapabilities
               => ToJS MediaTrackCapabilities
               => (obj : mediaTrackCapabilities)
               -> IO ULongRange
  
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChannelCount :  Cast mediaTrackCapabilities MediaTrackCapabilities
                  => ToJS MediaTrackCapabilities
                  => Cast uLongRange ULongRange
                  => ToJS ULongRange
                  => (obj : mediaTrackCapabilities)
                  -> (v : uLongRange)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast mediaTrackCapabilities MediaTrackCapabilities
           => ToJS MediaTrackCapabilities
           => (obj : mediaTrackCapabilities)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeviceId :  Cast mediaTrackCapabilities MediaTrackCapabilities
              => ToJS MediaTrackCapabilities
              => (obj : mediaTrackCapabilities)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr
  
  export
  echoCancellation :  Cast mediaTrackCapabilities MediaTrackCapabilities
                   => ToJS MediaTrackCapabilities
                   => (obj : mediaTrackCapabilities)
                   -> IO (JSArray Bool)
  
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEchoCancellation :  Cast mediaTrackCapabilities MediaTrackCapabilities
                      => ToJS MediaTrackCapabilities
                      => (obj : mediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr
  
  export
  facingMode :  Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> IO (JSArray String)
  
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFacingMode :  Cast mediaTrackCapabilities MediaTrackCapabilities
                => ToJS MediaTrackCapabilities
                => (obj : mediaTrackCapabilities)
                -> (v : JSArray String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr
  
  export
  frameRate :  Cast mediaTrackCapabilities MediaTrackCapabilities
            => ToJS MediaTrackCapabilities
            => (obj : mediaTrackCapabilities)
            -> IO DoubleRange
  
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameRate :  Cast doubleRange DoubleRange
               => ToJS DoubleRange
               => Cast mediaTrackCapabilities MediaTrackCapabilities
               => ToJS MediaTrackCapabilities
               => (obj : mediaTrackCapabilities)
               -> (v : doubleRange)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  export
  groupId :  Cast mediaTrackCapabilities MediaTrackCapabilities
          => ToJS MediaTrackCapabilities
          => (obj : mediaTrackCapabilities)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGroupId :  Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast mediaTrackCapabilities MediaTrackCapabilities
         => ToJS MediaTrackCapabilities
         => (obj : mediaTrackCapabilities)
         -> IO ULongRange
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast mediaTrackCapabilities MediaTrackCapabilities
            => ToJS MediaTrackCapabilities
            => Cast uLongRange ULongRange
            => ToJS ULongRange
            => (obj : mediaTrackCapabilities)
            -> (v : uLongRange)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr
  
  export
  latency :  Cast mediaTrackCapabilities MediaTrackCapabilities
          => ToJS MediaTrackCapabilities
          => (obj : mediaTrackCapabilities)
          -> IO DoubleRange
  
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLatency :  Cast doubleRange DoubleRange
             => ToJS DoubleRange
             => Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> (v : doubleRange)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr
  
  export
  noiseSuppression :  Cast mediaTrackCapabilities MediaTrackCapabilities
                   => ToJS MediaTrackCapabilities
                   => (obj : mediaTrackCapabilities)
                   -> IO (JSArray Bool)
  
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoiseSuppression :  Cast mediaTrackCapabilities MediaTrackCapabilities
                      => ToJS MediaTrackCapabilities
                      => (obj : mediaTrackCapabilities)
                      -> (v : JSArray Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeMode :  Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> IO (JSArray String)
  
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeMode :  Cast mediaTrackCapabilities MediaTrackCapabilities
                => ToJS MediaTrackCapabilities
                => (obj : mediaTrackCapabilities)
                -> (v : JSArray String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleRate :  Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> IO ULongRange
  
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleRate :  Cast mediaTrackCapabilities MediaTrackCapabilities
                => ToJS MediaTrackCapabilities
                => Cast uLongRange ULongRange
                => ToJS ULongRange
                => (obj : mediaTrackCapabilities)
                -> (v : uLongRange)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleSize :  Cast mediaTrackCapabilities MediaTrackCapabilities
             => ToJS MediaTrackCapabilities
             => (obj : mediaTrackCapabilities)
             -> IO ULongRange
  
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleSize :  Cast mediaTrackCapabilities MediaTrackCapabilities
                => ToJS MediaTrackCapabilities
                => Cast uLongRange ULongRange
                => ToJS ULongRange
                => (obj : mediaTrackCapabilities)
                -> (v : uLongRange)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast mediaTrackCapabilities MediaTrackCapabilities
        => ToJS MediaTrackCapabilities
        => (obj : mediaTrackCapabilities)
        -> IO ULongRange
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast mediaTrackCapabilities MediaTrackCapabilities
           => ToJS MediaTrackCapabilities
           => Cast uLongRange ULongRange
           => ToJS ULongRange
           => (obj : mediaTrackCapabilities)
           -> (v : uLongRange)
           -> IO ()

namespace MediaTrackConstraintSet
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  aspectRatio :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
              => ToJS MediaTrackConstraintSet
              => (obj : mediaTrackConstraintSet)
              -> IO ConstrainDouble
  
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAspectRatio :  Cast constrainDouble ConstrainDouble
                 => ToJS ConstrainDouble
                 => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                 => ToJS MediaTrackConstraintSet
                 => (obj : mediaTrackConstraintSet)
                 -> (v : constrainDouble)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr
  
  export
  autoGainControl :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
                  => ToJS MediaTrackConstraintSet
                  => (obj : mediaTrackConstraintSet)
                  -> IO ConstrainBoolean
  
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoGainControl :  Cast constrainBoolean ConstrainBoolean
                     => ToJS ConstrainBoolean
                     => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                     => ToJS MediaTrackConstraintSet
                     => (obj : mediaTrackConstraintSet)
                     -> (v : constrainBoolean)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr
  
  export
  channelCount :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
               => ToJS MediaTrackConstraintSet
               => (obj : mediaTrackConstraintSet)
               -> IO ConstrainULong
  
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChannelCount :  Cast constrainULong ConstrainULong
                  => ToJS ConstrainULong
                  => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                  => ToJS MediaTrackConstraintSet
                  => (obj : mediaTrackConstraintSet)
                  -> (v : constrainULong)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
           => ToJS MediaTrackConstraintSet
           => (obj : mediaTrackConstraintSet)
           -> IO ConstrainDOMString
  
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeviceId :  Cast constrainDOMString ConstrainDOMString
              => ToJS ConstrainDOMString
              => Cast mediaTrackConstraintSet MediaTrackConstraintSet
              => ToJS MediaTrackConstraintSet
              => (obj : mediaTrackConstraintSet)
              -> (v : constrainDOMString)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr
  
  export
  echoCancellation :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
                   => ToJS MediaTrackConstraintSet
                   => (obj : mediaTrackConstraintSet)
                   -> IO ConstrainBoolean
  
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEchoCancellation :  Cast constrainBoolean ConstrainBoolean
                      => ToJS ConstrainBoolean
                      => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                      => ToJS MediaTrackConstraintSet
                      => (obj : mediaTrackConstraintSet)
                      -> (v : constrainBoolean)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr
  
  export
  facingMode :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> IO ConstrainDOMString
  
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFacingMode :  Cast constrainDOMString ConstrainDOMString
                => ToJS ConstrainDOMString
                => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                => ToJS MediaTrackConstraintSet
                => (obj : mediaTrackConstraintSet)
                -> (v : constrainDOMString)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr
  
  export
  frameRate :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
            => ToJS MediaTrackConstraintSet
            => (obj : mediaTrackConstraintSet)
            -> IO ConstrainDouble
  
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameRate :  Cast constrainDouble ConstrainDouble
               => ToJS ConstrainDouble
               => Cast mediaTrackConstraintSet MediaTrackConstraintSet
               => ToJS MediaTrackConstraintSet
               => (obj : mediaTrackConstraintSet)
               -> (v : constrainDouble)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  export
  groupId :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
          => ToJS MediaTrackConstraintSet
          => (obj : mediaTrackConstraintSet)
          -> IO ConstrainDOMString
  
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGroupId :  Cast constrainDOMString ConstrainDOMString
             => ToJS ConstrainDOMString
             => Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> (v : constrainDOMString)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
         => ToJS MediaTrackConstraintSet
         => (obj : mediaTrackConstraintSet)
         -> IO ConstrainULong
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast constrainULong ConstrainULong
            => ToJS ConstrainULong
            => Cast mediaTrackConstraintSet MediaTrackConstraintSet
            => ToJS MediaTrackConstraintSet
            => (obj : mediaTrackConstraintSet)
            -> (v : constrainULong)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr
  
  export
  latency :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
          => ToJS MediaTrackConstraintSet
          => (obj : mediaTrackConstraintSet)
          -> IO ConstrainDouble
  
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLatency :  Cast constrainDouble ConstrainDouble
             => ToJS ConstrainDouble
             => Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> (v : constrainDouble)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr
  
  export
  noiseSuppression :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
                   => ToJS MediaTrackConstraintSet
                   => (obj : mediaTrackConstraintSet)
                   -> IO ConstrainBoolean
  
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoiseSuppression :  Cast constrainBoolean ConstrainBoolean
                      => ToJS ConstrainBoolean
                      => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                      => ToJS MediaTrackConstraintSet
                      => (obj : mediaTrackConstraintSet)
                      -> (v : constrainBoolean)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeMode :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> IO ConstrainDOMString
  
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeMode :  Cast constrainDOMString ConstrainDOMString
                => ToJS ConstrainDOMString
                => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                => ToJS MediaTrackConstraintSet
                => (obj : mediaTrackConstraintSet)
                -> (v : constrainDOMString)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleRate :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> IO ConstrainULong
  
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleRate :  Cast constrainULong ConstrainULong
                => ToJS ConstrainULong
                => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                => ToJS MediaTrackConstraintSet
                => (obj : mediaTrackConstraintSet)
                -> (v : constrainULong)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleSize :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
             => ToJS MediaTrackConstraintSet
             => (obj : mediaTrackConstraintSet)
             -> IO ConstrainULong
  
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleSize :  Cast constrainULong ConstrainULong
                => ToJS ConstrainULong
                => Cast mediaTrackConstraintSet MediaTrackConstraintSet
                => ToJS MediaTrackConstraintSet
                => (obj : mediaTrackConstraintSet)
                -> (v : constrainULong)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast mediaTrackConstraintSet MediaTrackConstraintSet
        => ToJS MediaTrackConstraintSet
        => (obj : mediaTrackConstraintSet)
        -> IO ConstrainULong
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast constrainULong ConstrainULong
           => ToJS ConstrainULong
           => Cast mediaTrackConstraintSet MediaTrackConstraintSet
           => ToJS MediaTrackConstraintSet
           => (obj : mediaTrackConstraintSet)
           -> (v : constrainULong)
           -> IO ()

namespace MediaTrackConstraints
  
  %foreign "browser:lambda:x=>x.advanced"
  prim__advanced : AnyPtr -> PrimIO AnyPtr
  
  export
  advanced :  Cast mediaTrackConstraints MediaTrackConstraints
           => ToJS MediaTrackConstraints
           => (obj : mediaTrackConstraints)
           -> IO (JSArray MediaTrackConstraintSet)
  
  %foreign "browser:lambda:(x,v)=>{x.advanced = v}"
  prim__setAdvanced : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAdvanced :  Cast mediaTrackConstraints MediaTrackConstraints
              => ToJS MediaTrackConstraints
              => (obj : mediaTrackConstraints)
              -> (v : JSArray MediaTrackConstraintSet)
              -> IO ()

namespace MediaTrackSettings
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  aspectRatio :  Cast mediaTrackSettings MediaTrackSettings
              => ToJS MediaTrackSettings
              => (obj : mediaTrackSettings)
              -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAspectRatio :  Cast mediaTrackSettings MediaTrackSettings
                 => ToJS MediaTrackSettings
                 => (obj : mediaTrackSettings)
                 -> (v : Double)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr
  
  export
  autoGainControl :  Cast mediaTrackSettings MediaTrackSettings
                  => ToJS MediaTrackSettings
                  => (obj : mediaTrackSettings)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoGainControl :  Cast mediaTrackSettings MediaTrackSettings
                     => ToJS MediaTrackSettings
                     => (obj : mediaTrackSettings)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr
  
  export
  channelCount :  Cast mediaTrackSettings MediaTrackSettings
               => ToJS MediaTrackSettings
               => (obj : mediaTrackSettings)
               -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChannelCount :  Cast mediaTrackSettings MediaTrackSettings
                  => ToJS MediaTrackSettings
                  => (obj : mediaTrackSettings)
                  -> (v : Int32)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast mediaTrackSettings MediaTrackSettings
           => ToJS MediaTrackSettings
           => (obj : mediaTrackSettings)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeviceId :  Cast mediaTrackSettings MediaTrackSettings
              => ToJS MediaTrackSettings
              => (obj : mediaTrackSettings)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr
  
  export
  echoCancellation :  Cast mediaTrackSettings MediaTrackSettings
                   => ToJS MediaTrackSettings
                   => (obj : mediaTrackSettings)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEchoCancellation :  Cast mediaTrackSettings MediaTrackSettings
                      => ToJS MediaTrackSettings
                      => (obj : mediaTrackSettings)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr
  
  export
  facingMode :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFacingMode :  Cast mediaTrackSettings MediaTrackSettings
                => ToJS MediaTrackSettings
                => (obj : mediaTrackSettings)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr
  
  export
  frameRate :  Cast mediaTrackSettings MediaTrackSettings
            => ToJS MediaTrackSettings
            => (obj : mediaTrackSettings)
            -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameRate :  Cast mediaTrackSettings MediaTrackSettings
               => ToJS MediaTrackSettings
               => (obj : mediaTrackSettings)
               -> (v : Double)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  export
  groupId :  Cast mediaTrackSettings MediaTrackSettings
          => ToJS MediaTrackSettings
          => (obj : mediaTrackSettings)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGroupId :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> (v : String)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast mediaTrackSettings MediaTrackSettings
         => ToJS MediaTrackSettings
         => (obj : mediaTrackSettings)
         -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast mediaTrackSettings MediaTrackSettings
            => ToJS MediaTrackSettings
            => (obj : mediaTrackSettings)
            -> (v : Int32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr
  
  export
  latency :  Cast mediaTrackSettings MediaTrackSettings
          => ToJS MediaTrackSettings
          => (obj : mediaTrackSettings)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLatency :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> (v : Double)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr
  
  export
  noiseSuppression :  Cast mediaTrackSettings MediaTrackSettings
                   => ToJS MediaTrackSettings
                   => (obj : mediaTrackSettings)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoiseSuppression :  Cast mediaTrackSettings MediaTrackSettings
                      => ToJS MediaTrackSettings
                      => (obj : mediaTrackSettings)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeMode :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeMode :  Cast mediaTrackSettings MediaTrackSettings
                => ToJS MediaTrackSettings
                => (obj : mediaTrackSettings)
                -> (v : String)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleRate :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleRate :  Cast mediaTrackSettings MediaTrackSettings
                => ToJS MediaTrackSettings
                => (obj : mediaTrackSettings)
                -> (v : Int32)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleSize :  Cast mediaTrackSettings MediaTrackSettings
             => ToJS MediaTrackSettings
             => (obj : mediaTrackSettings)
             -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleSize :  Cast mediaTrackSettings MediaTrackSettings
                => ToJS MediaTrackSettings
                => (obj : mediaTrackSettings)
                -> (v : Int32)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast mediaTrackSettings MediaTrackSettings
        => ToJS MediaTrackSettings
        => (obj : mediaTrackSettings)
        -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast mediaTrackSettings MediaTrackSettings
           => ToJS MediaTrackSettings
           => (obj : mediaTrackSettings)
           -> (v : Int32)
           -> IO ()

namespace MediaTrackSupportedConstraints
  
  %foreign "browser:lambda:x=>x.aspectRatio"
  prim__aspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  aspectRatio :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
              => ToJS MediaTrackSupportedConstraints
              => (obj : mediaTrackSupportedConstraints)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.aspectRatio = v}"
  prim__setAspectRatio : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAspectRatio :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                 => ToJS MediaTrackSupportedConstraints
                 => (obj : mediaTrackSupportedConstraints)
                 -> (v : Bool)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.autoGainControl"
  prim__autoGainControl : AnyPtr -> PrimIO AnyPtr
  
  export
  autoGainControl :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                  => ToJS MediaTrackSupportedConstraints
                  => (obj : mediaTrackSupportedConstraints)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.autoGainControl = v}"
  prim__setAutoGainControl : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAutoGainControl :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                     => ToJS MediaTrackSupportedConstraints
                     => (obj : mediaTrackSupportedConstraints)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.channelCount"
  prim__channelCount : AnyPtr -> PrimIO AnyPtr
  
  export
  channelCount :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
               => ToJS MediaTrackSupportedConstraints
               => (obj : mediaTrackSupportedConstraints)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.channelCount = v}"
  prim__setChannelCount : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setChannelCount :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                  => ToJS MediaTrackSupportedConstraints
                  => (obj : mediaTrackSupportedConstraints)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
           => ToJS MediaTrackSupportedConstraints
           => (obj : mediaTrackSupportedConstraints)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeviceId :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
              => ToJS MediaTrackSupportedConstraints
              => (obj : mediaTrackSupportedConstraints)
              -> (v : Bool)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.echoCancellation"
  prim__echoCancellation : AnyPtr -> PrimIO AnyPtr
  
  export
  echoCancellation :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                   => ToJS MediaTrackSupportedConstraints
                   => (obj : mediaTrackSupportedConstraints)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.echoCancellation = v}"
  prim__setEchoCancellation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEchoCancellation :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                      => ToJS MediaTrackSupportedConstraints
                      => (obj : mediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.facingMode"
  prim__facingMode : AnyPtr -> PrimIO AnyPtr
  
  export
  facingMode :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.facingMode = v}"
  prim__setFacingMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFacingMode :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                => ToJS MediaTrackSupportedConstraints
                => (obj : mediaTrackSupportedConstraints)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.frameRate"
  prim__frameRate : AnyPtr -> PrimIO AnyPtr
  
  export
  frameRate :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
            => ToJS MediaTrackSupportedConstraints
            => (obj : mediaTrackSupportedConstraints)
            -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.frameRate = v}"
  prim__setFrameRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFrameRate :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
               => ToJS MediaTrackSupportedConstraints
               => (obj : mediaTrackSupportedConstraints)
               -> (v : Bool)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.groupId"
  prim__groupId : AnyPtr -> PrimIO AnyPtr
  
  export
  groupId :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
          => ToJS MediaTrackSupportedConstraints
          => (obj : mediaTrackSupportedConstraints)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.groupId = v}"
  prim__setGroupId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setGroupId :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
         => ToJS MediaTrackSupportedConstraints
         => (obj : mediaTrackSupportedConstraints)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
            => ToJS MediaTrackSupportedConstraints
            => (obj : mediaTrackSupportedConstraints)
            -> (v : Bool)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.latency"
  prim__latency : AnyPtr -> PrimIO AnyPtr
  
  export
  latency :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
          => ToJS MediaTrackSupportedConstraints
          => (obj : mediaTrackSupportedConstraints)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.latency = v}"
  prim__setLatency : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLatency :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.noiseSuppression"
  prim__noiseSuppression : AnyPtr -> PrimIO AnyPtr
  
  export
  noiseSuppression :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                   => ToJS MediaTrackSupportedConstraints
                   => (obj : mediaTrackSupportedConstraints)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.noiseSuppression = v}"
  prim__setNoiseSuppression : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setNoiseSuppression :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                      => ToJS MediaTrackSupportedConstraints
                      => (obj : mediaTrackSupportedConstraints)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resizeMode"
  prim__resizeMode : AnyPtr -> PrimIO AnyPtr
  
  export
  resizeMode :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.resizeMode = v}"
  prim__setResizeMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResizeMode :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                => ToJS MediaTrackSupportedConstraints
                => (obj : mediaTrackSupportedConstraints)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleRate"
  prim__sampleRate : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleRate :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.sampleRate = v}"
  prim__setSampleRate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleRate :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                => ToJS MediaTrackSupportedConstraints
                => (obj : mediaTrackSupportedConstraints)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.sampleSize"
  prim__sampleSize : AnyPtr -> PrimIO AnyPtr
  
  export
  sampleSize :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
             => ToJS MediaTrackSupportedConstraints
             => (obj : mediaTrackSupportedConstraints)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.sampleSize = v}"
  prim__setSampleSize : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSampleSize :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
                => ToJS MediaTrackSupportedConstraints
                => (obj : mediaTrackSupportedConstraints)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
        => ToJS MediaTrackSupportedConstraints
        => (obj : mediaTrackSupportedConstraints)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast mediaTrackSupportedConstraints MediaTrackSupportedConstraints
           => ToJS MediaTrackSupportedConstraints
           => (obj : mediaTrackSupportedConstraints)
           -> (v : Bool)
           -> IO ()

namespace ULongRange
  
  %foreign "browser:lambda:x=>x.max"
  prim__max : AnyPtr -> PrimIO AnyPtr
  
  export
  max :  Cast uLongRange ULongRange
      => ToJS ULongRange
      => (obj : uLongRange)
      -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.max = v}"
  prim__setMax : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMax :  Cast uLongRange ULongRange
         => ToJS ULongRange
         => (obj : uLongRange)
         -> (v : UInt32)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.min"
  prim__min : AnyPtr -> PrimIO AnyPtr
  
  export
  min :  Cast uLongRange ULongRange
      => ToJS ULongRange
      => (obj : uLongRange)
      -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.min = v}"
  prim__setMin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMin :  Cast uLongRange ULongRange
         => ToJS ULongRange
         => (obj : uLongRange)
         -> (v : UInt32)
         -> IO ()



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