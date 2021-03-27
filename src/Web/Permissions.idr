module Web.Permissions
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  public export
  JSVal PermissionStatus where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PermissionStatus) -> IO PermissionState
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : PermissionStatus) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : PermissionStatus) -> (v : EventHandler) -> IO ()

namespace Permissions
  
  public export
  JSVal Permissions where
    parents =  [ JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  public export
  JSVal CameraDevicePermissionDescriptor where
    parents =  [ DevicePermissionDescriptor , PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.panTiltZoom"
  prim__panTiltZoom : AnyPtr -> PrimIO AnyPtr

  export
  panTiltZoom : (obj : CameraDevicePermissionDescriptor) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom  = v}"
  prim__setPanTiltZoom : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPanTiltZoom :  (obj : CameraDevicePermissionDescriptor)
                 -> (v : Bool)
                 -> IO ()

namespace DevicePermissionDescriptor
  
  public export
  JSVal DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : DevicePermissionDescriptor) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : DevicePermissionDescriptor) -> (v : String) -> IO ()

namespace MidiPermissionDescriptor
  
  public export
  JSVal MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : AnyPtr -> PrimIO AnyPtr

  export
  sysex : (obj : MidiPermissionDescriptor) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.sysex  = v}"
  prim__setSysex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSysex : (obj : MidiPermissionDescriptor) -> (v : Bool) -> IO ()

namespace PermissionDescriptor
  
  public export
  JSVal PermissionDescriptor where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : PermissionDescriptor) -> IO PermissionName

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : PermissionDescriptor) -> (v : PermissionName) -> IO ()

namespace PermissionSetParameters
  
  public export
  JSVal PermissionSetParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : AnyPtr -> PrimIO AnyPtr

  export
  descriptor : (obj : PermissionSetParameters) -> IO PermissionDescriptor

  %foreign "browser:lambda:(x,v)=>{x.descriptor  = v}"
  prim__setDescriptor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDescriptor :  (obj : PermissionSetParameters)
                -> (v : PermissionDescriptor)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PermissionSetParameters) -> IO PermissionState

  %foreign "browser:lambda:(x,v)=>{x.state  = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setState : (obj : PermissionSetParameters) -> (v : PermissionState) -> IO ()
  
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : AnyPtr -> PrimIO AnyPtr

  export
  oneRealm : (obj : PermissionSetParameters) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.oneRealm  = v}"
  prim__setOneRealm : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOneRealm : (obj : PermissionSetParameters) -> (v : Bool) -> IO ()

namespace PushPermissionDescriptor
  
  public export
  JSVal PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : AnyPtr -> PrimIO AnyPtr

  export
  userVisibleOnly : (obj : PushPermissionDescriptor) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly  = v}"
  prim__setUserVisibleOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUserVisibleOnly : (obj : PushPermissionDescriptor) -> (v : Bool) -> IO ()

