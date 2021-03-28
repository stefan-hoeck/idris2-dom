module Web.Permissions
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  public export
  JSType PermissionStatus where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PermissionStatus) -> JSIO PermissionState
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : PermissionStatus) -> JSIO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : PermissionStatus) -> (v : EventHandler) -> JSIO ()

namespace Permissions
  
  public export
  JSType Permissions where
    parents =  [ JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  public export
  JSType CameraDevicePermissionDescriptor where
    parents =  [ DevicePermissionDescriptor , PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.panTiltZoom"
  prim__panTiltZoom : AnyPtr -> PrimIO AnyPtr

  export
  panTiltZoom : (obj : CameraDevicePermissionDescriptor) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom  = v}"
  prim__setPanTiltZoom : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPanTiltZoom :  (obj : CameraDevicePermissionDescriptor)
                 -> (v : Bool)
                 -> JSIO ()

namespace DevicePermissionDescriptor
  
  public export
  JSType DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : DevicePermissionDescriptor) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : DevicePermissionDescriptor) -> (v : String) -> JSIO ()

namespace MidiPermissionDescriptor
  
  public export
  JSType MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : AnyPtr -> PrimIO AnyPtr

  export
  sysex : (obj : MidiPermissionDescriptor) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.sysex  = v}"
  prim__setSysex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSysex : (obj : MidiPermissionDescriptor) -> (v : Bool) -> JSIO ()

namespace PermissionDescriptor
  
  public export
  JSType PermissionDescriptor where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : PermissionDescriptor) -> JSIO PermissionName

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : PermissionDescriptor) -> (v : PermissionName) -> JSIO ()

namespace PermissionSetParameters
  
  public export
  JSType PermissionSetParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : AnyPtr -> PrimIO AnyPtr

  export
  descriptor : (obj : PermissionSetParameters) -> JSIO PermissionDescriptor

  %foreign "browser:lambda:(x,v)=>{x.descriptor  = v}"
  prim__setDescriptor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDescriptor :  (obj : PermissionSetParameters)
                -> (v : PermissionDescriptor)
                -> JSIO ()
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PermissionSetParameters) -> JSIO PermissionState

  %foreign "browser:lambda:(x,v)=>{x.state  = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setState : (obj : PermissionSetParameters) -> (v : PermissionState) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : AnyPtr -> PrimIO AnyPtr

  export
  oneRealm : (obj : PermissionSetParameters) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.oneRealm  = v}"
  prim__setOneRealm : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOneRealm : (obj : PermissionSetParameters) -> (v : Bool) -> JSIO ()

namespace PushPermissionDescriptor
  
  public export
  JSType PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : AnyPtr -> PrimIO AnyPtr

  export
  userVisibleOnly : (obj : PushPermissionDescriptor) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly  = v}"
  prim__setUserVisibleOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUserVisibleOnly : (obj : PushPermissionDescriptor) -> (v : Bool) -> JSIO ()

