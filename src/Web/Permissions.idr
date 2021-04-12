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
  onchange : (obj : PermissionStatus) -> JSIO (Maybe EventHandlerNonNull)
  onchange a = tryJS "PermissionStatus.onchange"
             $ PermissionStatus.prim__onchange a
  
  export
  setOnchange :  (obj : PermissionStatus)
              -> (value : Maybe EventHandlerNonNull)
              -> JSIO ()
  setOnchange a b = primJS $ PermissionStatus.prim__setOnchange a (toFFI b)
  
  export
  state : (obj : PermissionStatus) -> JSIO PermissionState
  state a = tryJS "PermissionStatus.state" $ PermissionStatus.prim__state a

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
  new : (panTiltZoom : Optional Bool) -> JSIO CameraDevicePermissionDescriptor
  new a = primJS $ CameraDevicePermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO CameraDevicePermissionDescriptor
  new' = primJS $ CameraDevicePermissionDescriptor.prim__new undef
  
  export
  panTiltZoom : (obj : CameraDevicePermissionDescriptor) -> JSIO $ Optional Bool
  panTiltZoom a = tryJS "CameraDevicePermissionDescriptor.panTiltZoom"
                $ CameraDevicePermissionDescriptor.prim__panTiltZoom a
  
  export
  setPanTiltZoom :  (obj : CameraDevicePermissionDescriptor)
                 -> (value : Optional Bool)
                 -> JSIO ()
  setPanTiltZoom a b = primJS
                     $ CameraDevicePermissionDescriptor.prim__setPanTiltZoom a
                                                                             (toFFI b)

  export
  setPanTiltZoom' : (obj : CameraDevicePermissionDescriptor) -> JSIO ()
  setPanTiltZoom' a = primJS
                    $ CameraDevicePermissionDescriptor.prim__setPanTiltZoom a
                                                                            undef

namespace DevicePermissionDescriptor
  
  public export
  JSType DevicePermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (deviceId : Optional String) -> JSIO DevicePermissionDescriptor
  new a = primJS $ DevicePermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO DevicePermissionDescriptor
  new' = primJS $ DevicePermissionDescriptor.prim__new undef
  
  export
  deviceId : (obj : DevicePermissionDescriptor) -> JSIO $ Optional String
  deviceId a = tryJS "DevicePermissionDescriptor.deviceId"
             $ DevicePermissionDescriptor.prim__deviceId a
  
  export
  setDeviceId :  (obj : DevicePermissionDescriptor)
              -> (value : Optional String)
              -> JSIO ()
  setDeviceId a b = primJS
                  $ DevicePermissionDescriptor.prim__setDeviceId a (toFFI b)

  export
  setDeviceId' : (obj : DevicePermissionDescriptor) -> JSIO ()
  setDeviceId' a = primJS $ DevicePermissionDescriptor.prim__setDeviceId a undef

namespace MidiPermissionDescriptor
  
  public export
  JSType MidiPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (sysex : Optional Bool) -> JSIO MidiPermissionDescriptor
  new a = primJS $ MidiPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO MidiPermissionDescriptor
  new' = primJS $ MidiPermissionDescriptor.prim__new undef
  
  export
  sysex : (obj : MidiPermissionDescriptor) -> JSIO $ Optional Bool
  sysex a = tryJS "MidiPermissionDescriptor.sysex"
          $ MidiPermissionDescriptor.prim__sysex a
  
  export
  setSysex :  (obj : MidiPermissionDescriptor)
           -> (value : Optional Bool)
           -> JSIO ()
  setSysex a b = primJS $ MidiPermissionDescriptor.prim__setSysex a (toFFI b)

  export
  setSysex' : (obj : MidiPermissionDescriptor) -> JSIO ()
  setSysex' a = primJS $ MidiPermissionDescriptor.prim__setSysex a undef

namespace PermissionDescriptor
  
  public export
  JSType PermissionDescriptor where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (name : PermissionName) -> JSIO PermissionDescriptor
  new a = primJS $ PermissionDescriptor.prim__new (toFFI a)
  
  export
  name : (obj : PermissionDescriptor) -> JSIO PermissionName
  name a = tryJS "PermissionDescriptor.name" $ PermissionDescriptor.prim__name a
  
  export
  setName : (obj : PermissionDescriptor) -> (value : PermissionName) -> JSIO ()
  setName a b = primJS $ PermissionDescriptor.prim__setName a (toFFI b)

namespace PermissionSetParameters
  
  public export
  JSType PermissionSetParameters where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (descriptor : PermissionDescriptor)
      -> (state : PermissionState)
      -> (oneRealm : Optional Bool)
      -> JSIO PermissionSetParameters
  new a b c = primJS $ PermissionSetParameters.prim__new a (toFFI b) (toFFI c)

  export
  new' :  (descriptor : PermissionDescriptor)
       -> (state : PermissionState)
       -> JSIO PermissionSetParameters
  new' a b = primJS $ PermissionSetParameters.prim__new a (toFFI b) undef
  
  export
  descriptor : (obj : PermissionSetParameters) -> JSIO PermissionDescriptor
  descriptor a = primJS $ PermissionSetParameters.prim__descriptor a
  
  export
  setDescriptor :  (obj : PermissionSetParameters)
                -> (value : PermissionDescriptor)
                -> JSIO ()
  setDescriptor a b = primJS $ PermissionSetParameters.prim__setDescriptor a b
  
  export
  oneRealm : (obj : PermissionSetParameters) -> JSIO $ Optional Bool
  oneRealm a = tryJS "PermissionSetParameters.oneRealm"
             $ PermissionSetParameters.prim__oneRealm a
  
  export
  setOneRealm :  (obj : PermissionSetParameters)
              -> (value : Optional Bool)
              -> JSIO ()
  setOneRealm a b = primJS
                  $ PermissionSetParameters.prim__setOneRealm a (toFFI b)

  export
  setOneRealm' : (obj : PermissionSetParameters) -> JSIO ()
  setOneRealm' a = primJS $ PermissionSetParameters.prim__setOneRealm a undef
  
  export
  state : (obj : PermissionSetParameters) -> JSIO PermissionState
  state a = tryJS "PermissionSetParameters.state"
          $ PermissionSetParameters.prim__state a
  
  export
  setState :  (obj : PermissionSetParameters)
           -> (value : PermissionState)
           -> JSIO ()
  setState a b = primJS $ PermissionSetParameters.prim__setState a (toFFI b)

namespace PushPermissionDescriptor
  
  public export
  JSType PushPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []
  
  export
  new : (userVisibleOnly : Optional Bool) -> JSIO PushPermissionDescriptor
  new a = primJS $ PushPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO PushPermissionDescriptor
  new' = primJS $ PushPermissionDescriptor.prim__new undef
  
  export
  userVisibleOnly : (obj : PushPermissionDescriptor) -> JSIO $ Optional Bool
  userVisibleOnly a = tryJS "PushPermissionDescriptor.userVisibleOnly"
                    $ PushPermissionDescriptor.prim__userVisibleOnly a
  
  export
  setUserVisibleOnly :  (obj : PushPermissionDescriptor)
                     -> (value : Optional Bool)
                     -> JSIO ()
  setUserVisibleOnly a b = primJS
                         $ PushPermissionDescriptor.prim__setUserVisibleOnly a
                                                                             (toFFI b)

  export
  setUserVisibleOnly' : (obj : PushPermissionDescriptor) -> JSIO ()
  setUserVisibleOnly' a = primJS
                        $ PushPermissionDescriptor.prim__setUserVisibleOnly a
                                                                            undef
