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
  state a =   primToJSIO "state" $ prim__state (toJS a)
  
  %foreign "browser:lambda:x=>x.onchange"
  prim__onchange : AnyPtr -> PrimIO AnyPtr

  export
  onchange : (obj : PermissionStatus) -> JSIO EventHandler
  onchange a =   primToJSIO "onchange" $ prim__onchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onchange  = v}"
  prim__setOnchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnchange : (obj : PermissionStatus) -> (v : EventHandler) -> JSIO ()
  setOnchange a b =
    primToJSIO "setOnchange" $ prim__setOnchange (toJS a) (toJS b)

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
  panTiltZoom a =   primToJSIO "panTiltZoom" $ prim__panTiltZoom (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.panTiltZoom  = v}"
  prim__setPanTiltZoom : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPanTiltZoom :  (obj : CameraDevicePermissionDescriptor)
                 -> (v : Bool)
                 -> JSIO ()
  setPanTiltZoom a b =
    primToJSIO "setPanTiltZoom" $ prim__setPanTiltZoom (toJS a) (toJS b)

namespace DevicePermissionDescriptor
  
  public export
  JSType DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deviceId"
  prim__deviceId : AnyPtr -> PrimIO AnyPtr

  export
  deviceId : (obj : DevicePermissionDescriptor) -> JSIO String
  deviceId a =   primToJSIO "deviceId" $ prim__deviceId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.deviceId  = v}"
  prim__setDeviceId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeviceId : (obj : DevicePermissionDescriptor) -> (v : String) -> JSIO ()
  setDeviceId a b =
    primToJSIO "setDeviceId" $ prim__setDeviceId (toJS a) (toJS b)

namespace MidiPermissionDescriptor
  
  public export
  JSType MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.sysex"
  prim__sysex : AnyPtr -> PrimIO AnyPtr

  export
  sysex : (obj : MidiPermissionDescriptor) -> JSIO Bool
  sysex a =   primToJSIO "sysex" $ prim__sysex (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.sysex  = v}"
  prim__setSysex : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSysex : (obj : MidiPermissionDescriptor) -> (v : Bool) -> JSIO ()
  setSysex a b =   primToJSIO "setSysex" $ prim__setSysex (toJS a) (toJS b)

namespace PermissionDescriptor
  
  public export
  JSType PermissionDescriptor where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.name"
  prim__name : AnyPtr -> PrimIO AnyPtr

  export
  name : (obj : PermissionDescriptor) -> JSIO PermissionName
  name a =   primToJSIO "name" $ prim__name (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.name  = v}"
  prim__setName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setName : (obj : PermissionDescriptor) -> (v : PermissionName) -> JSIO ()
  setName a b =   primToJSIO "setName" $ prim__setName (toJS a) (toJS b)

namespace PermissionSetParameters
  
  public export
  JSType PermissionSetParameters where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.descriptor"
  prim__descriptor : AnyPtr -> PrimIO AnyPtr

  export
  descriptor : (obj : PermissionSetParameters) -> JSIO PermissionDescriptor
  descriptor a =   primToJSIO "descriptor" $ prim__descriptor (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.descriptor  = v}"
  prim__setDescriptor : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDescriptor :  (obj : PermissionSetParameters)
                -> (v : PermissionDescriptor)
                -> JSIO ()
  setDescriptor a b =
    primToJSIO "setDescriptor" $ prim__setDescriptor (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : PermissionSetParameters) -> JSIO PermissionState
  state a =   primToJSIO "state" $ prim__state (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.state  = v}"
  prim__setState : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setState : (obj : PermissionSetParameters) -> (v : PermissionState) -> JSIO ()
  setState a b =   primToJSIO "setState" $ prim__setState (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oneRealm"
  prim__oneRealm : AnyPtr -> PrimIO AnyPtr

  export
  oneRealm : (obj : PermissionSetParameters) -> JSIO Bool
  oneRealm a =   primToJSIO "oneRealm" $ prim__oneRealm (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oneRealm  = v}"
  prim__setOneRealm : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOneRealm : (obj : PermissionSetParameters) -> (v : Bool) -> JSIO ()
  setOneRealm a b =
    primToJSIO "setOneRealm" $ prim__setOneRealm (toJS a) (toJS b)

namespace PushPermissionDescriptor
  
  public export
  JSType PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.userVisibleOnly"
  prim__userVisibleOnly : AnyPtr -> PrimIO AnyPtr

  export
  userVisibleOnly : (obj : PushPermissionDescriptor) -> JSIO Bool
  userVisibleOnly a =
    primToJSIO "userVisibleOnly" $ prim__userVisibleOnly (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.userVisibleOnly  = v}"
  prim__setUserVisibleOnly : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUserVisibleOnly : (obj : PushPermissionDescriptor) -> (v : Bool) -> JSIO ()
  setUserVisibleOnly a b =
    primToJSIO "setUserVisibleOnly" $ prim__setUserVisibleOnly (toJS a) (toJS b)

