module Web.Permissions

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state :  Cast permissionStatus PermissionStatus
        => ToJS PermissionStatus
        => (obj : permissionStatus)
        -> IO PermissionState
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr
  
  export
  onchange :  Cast permissionStatus PermissionStatus
           => ToJS PermissionStatus
           => (obj : permissionStatus)
           -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onchange = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnchange :  Cast eventHandler EventHandler
              => ToJS EventHandler
              => Cast permissionStatus PermissionStatus
              => ToJS PermissionStatus
              => (obj : permissionStatus)
              -> (v : eventHandler)
              -> IO ()


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  %foreign "browser:lambda:x=>x.panTiltZoom"
  prim__panTiltZoom : AnyPtr -> PrimIO AnyPtr
  
  export
  panTiltZoom :  Cast cameraDevicePermissionDescriptor CameraDevicePermissionDescriptor
              => ToJS CameraDevicePermissionDescriptor
              => (obj : cameraDevicePermissionDescriptor)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom = v}"
  prim__setPanTiltZoom : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPanTiltZoom :  Cast cameraDevicePermissionDescriptor CameraDevicePermissionDescriptor
                 => ToJS CameraDevicePermissionDescriptor
                 => (obj : cameraDevicePermissionDescriptor)
                 -> (v : Bool)
                 -> IO ()

namespace DevicePermissionDescriptor
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr
  
  export
  deviceId :  Cast devicePermissionDescriptor DevicePermissionDescriptor
           => ToJS DevicePermissionDescriptor
           => (obj : devicePermissionDescriptor)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeviceId :  Cast devicePermissionDescriptor DevicePermissionDescriptor
              => ToJS DevicePermissionDescriptor
              => (obj : devicePermissionDescriptor)
              -> (v : String)
              -> IO ()

namespace MidiPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : AnyPtr -> PrimIO AnyPtr
  
  export
  sysex :  Cast midiPermissionDescriptor MidiPermissionDescriptor
        => ToJS MidiPermissionDescriptor
        => (obj : midiPermissionDescriptor)
        -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.sysex = v}"
  prim__setSysex : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSysex :  Cast midiPermissionDescriptor MidiPermissionDescriptor
           => ToJS MidiPermissionDescriptor
           => (obj : midiPermissionDescriptor)
           -> (v : Bool)
           -> IO ()

namespace PermissionDescriptor
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr
  
  export
  name :  Cast permissionDescriptor PermissionDescriptor
       => ToJS PermissionDescriptor
       => (obj : permissionDescriptor)
       -> IO PermissionName
  
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setName :  Cast permissionDescriptor PermissionDescriptor
          => ToJS PermissionDescriptor
          => Cast permissionName PermissionName
          => ToJS PermissionName
          => (obj : permissionDescriptor)
          -> (v : permissionName)
          -> IO ()

namespace PermissionSetParameters
  
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : AnyPtr -> PrimIO AnyPtr
  
  export
  descriptor :  Cast permissionSetParameters PermissionSetParameters
             => ToJS PermissionSetParameters
             => (obj : permissionSetParameters)
             -> IO PermissionDescriptor
  
  %foreign "browser:lambda:(x,v)=>{x.descriptor = v}"
  prim__setDescriptor : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDescriptor :  Cast permissionDescriptor PermissionDescriptor
                => ToJS PermissionDescriptor
                => Cast permissionSetParameters PermissionSetParameters
                => ToJS PermissionSetParameters
                => (obj : permissionSetParameters)
                -> (v : permissionDescriptor)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state :  Cast permissionSetParameters PermissionSetParameters
        => ToJS PermissionSetParameters
        => (obj : permissionSetParameters)
        -> IO PermissionState
  
  %foreign "browser:lambda:(x,v)=>{x.state = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setState :  Cast permissionSetParameters PermissionSetParameters
           => ToJS PermissionSetParameters
           => Cast permissionState PermissionState
           => ToJS PermissionState
           => (obj : permissionSetParameters)
           -> (v : permissionState)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : AnyPtr -> PrimIO AnyPtr
  
  export
  oneRealm :  Cast permissionSetParameters PermissionSetParameters
           => ToJS PermissionSetParameters
           => (obj : permissionSetParameters)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.oneRealm = v}"
  prim__setOneRealm : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOneRealm :  Cast permissionSetParameters PermissionSetParameters
              => ToJS PermissionSetParameters
              => (obj : permissionSetParameters)
              -> (v : Bool)
              -> IO ()

namespace PushPermissionDescriptor
  
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : AnyPtr -> PrimIO AnyPtr
  
  export
  userVisibleOnly :  Cast pushPermissionDescriptor PushPermissionDescriptor
                  => ToJS PushPermissionDescriptor
                  => (obj : pushPermissionDescriptor)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly = v}"
  prim__setUserVisibleOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUserVisibleOnly :  Cast pushPermissionDescriptor PushPermissionDescriptor
                     => ToJS PushPermissionDescriptor
                     => (obj : pushPermissionDescriptor)
                     -> (v : Bool)
                     -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast CameraDevicePermissionDescriptor DevicePermissionDescriptor where
  cast = believe_me

export
Cast DevicePermissionDescriptor PermissionDescriptor where
  cast = believe_me

export
Cast MidiPermissionDescriptor PermissionDescriptor where
  cast = believe_me

export
Cast PermissionStatus EventTarget where
  cast = believe_me

export
Cast PushPermissionDescriptor PermissionDescriptor where
  cast = believe_me