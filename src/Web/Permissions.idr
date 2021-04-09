module Web.Permissions
 
import JS
import Web.Internal.PermissionsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  public export
  JSType PermissionStatus where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  onchange : (obj : PermissionStatus) -> JSIO EventHandler
  onchange a = primJS $ PermissionStatus.prim__onchange a
  
  export
  setOnchange : (obj : PermissionStatus) -> (value : EventHandler) -> JSIO ()
  setOnchange a b = primJS $ PermissionStatus.prim__setOnchange a b
  
  export
  state : (obj : PermissionStatus) -> JSIO PermissionState
  state a = primJS $ PermissionStatus.prim__state a

namespace Permissions
  
  public export
  JSType Permissions where
    parents =  [ Object ]

    mixins =  []
  
  export
  query :  (obj : Permissions)
        -> (permissionDesc : Object)
        -> JSIO (Promise PermissionStatus)
  query a b = primJS $ Permissions.prim__query a b


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  public export
  JSType CameraDevicePermissionDescriptor where
    parents =  [ DevicePermissionDescriptor , PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (panTiltZoom : UndefOr Boolean) -> JSIO CameraDevicePermissionDescriptor
  new a = primJS $ CameraDevicePermissionDescriptor.prim__new a
  
  export
  panTiltZoom :  (obj : CameraDevicePermissionDescriptor)
              -> JSIO (UndefOr Boolean)
  panTiltZoom a = primJS $ CameraDevicePermissionDescriptor.prim__panTiltZoom a
  
  export
  setPanTiltZoom :  (obj : CameraDevicePermissionDescriptor)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setPanTiltZoom a b = primJS $ CameraDevicePermissionDescriptor.prim__setPanTiltZoom a
                                                                                      b

namespace DevicePermissionDescriptor
  
  public export
  JSType DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (deviceId : UndefOr String) -> JSIO DevicePermissionDescriptor
  new a = primJS $ DevicePermissionDescriptor.prim__new a
  
  export
  deviceId : (obj : DevicePermissionDescriptor) -> JSIO (UndefOr String)
  deviceId a = primJS $ DevicePermissionDescriptor.prim__deviceId a
  
  export
  setDeviceId :  (obj : DevicePermissionDescriptor)
              -> (value : UndefOr String)
              -> JSIO ()
  setDeviceId a b = primJS $ DevicePermissionDescriptor.prim__setDeviceId a b

namespace MidiPermissionDescriptor
  
  public export
  JSType MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (sysex : UndefOr Boolean) -> JSIO MidiPermissionDescriptor
  new a = primJS $ MidiPermissionDescriptor.prim__new a
  
  export
  sysex : (obj : MidiPermissionDescriptor) -> JSIO (UndefOr Boolean)
  sysex a = primJS $ MidiPermissionDescriptor.prim__sysex a
  
  export
  setSysex :  (obj : MidiPermissionDescriptor)
           -> (value : UndefOr Boolean)
           -> JSIO ()
  setSysex a b = primJS $ MidiPermissionDescriptor.prim__setSysex a b

namespace PermissionDescriptor
  
  public export
  JSType PermissionDescriptor where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (name : PermissionName) -> JSIO PermissionDescriptor
  new a = primJS $ PermissionDescriptor.prim__new a
  
  export
  name : (obj : PermissionDescriptor) -> JSIO PermissionName
  name a = primJS $ PermissionDescriptor.prim__name a
  
  export
  setName : (obj : PermissionDescriptor) -> (value : PermissionName) -> JSIO ()
  setName a b = primJS $ PermissionDescriptor.prim__setName a b

namespace PermissionSetParameters
  
  public export
  JSType PermissionSetParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (descriptor : PermissionDescriptor)
      -> (state : PermissionState)
      -> (oneRealm : UndefOr Boolean)
      -> JSIO PermissionSetParameters
  new a b c = primJS $ PermissionSetParameters.prim__new a b c
  
  export
  descriptor : (obj : PermissionSetParameters) -> JSIO PermissionDescriptor
  descriptor a = primJS $ PermissionSetParameters.prim__descriptor a
  
  export
  setDescriptor :  (obj : PermissionSetParameters)
                -> (value : PermissionDescriptor)
                -> JSIO ()
  setDescriptor a b = primJS $ PermissionSetParameters.prim__setDescriptor a b
  
  export
  oneRealm : (obj : PermissionSetParameters) -> JSIO (UndefOr Boolean)
  oneRealm a = primJS $ PermissionSetParameters.prim__oneRealm a
  
  export
  setOneRealm :  (obj : PermissionSetParameters)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setOneRealm a b = primJS $ PermissionSetParameters.prim__setOneRealm a b
  
  export
  state : (obj : PermissionSetParameters) -> JSIO PermissionState
  state a = primJS $ PermissionSetParameters.prim__state a
  
  export
  setState :  (obj : PermissionSetParameters)
           -> (value : PermissionState)
           -> JSIO ()
  setState a b = primJS $ PermissionSetParameters.prim__setState a b

namespace PushPermissionDescriptor
  
  public export
  JSType PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (userVisibleOnly : UndefOr Boolean) -> JSIO PushPermissionDescriptor
  new a = primJS $ PushPermissionDescriptor.prim__new a
  
  export
  userVisibleOnly : (obj : PushPermissionDescriptor) -> JSIO (UndefOr Boolean)
  userVisibleOnly a = primJS $ PushPermissionDescriptor.prim__userVisibleOnly a
  
  export
  setUserVisibleOnly :  (obj : PushPermissionDescriptor)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setUserVisibleOnly a b = primJS $ PushPermissionDescriptor.prim__setUserVisibleOnly a
                                                                                      b
