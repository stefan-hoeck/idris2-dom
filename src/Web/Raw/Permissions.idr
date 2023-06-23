module Web.Raw.Permissions

import JS
import Web.Internal.PermissionsPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  export
  onchange : PermissionStatus -> Attribute False Maybe EventHandlerNonNull
  onchange v = fromNullablePrim
                 "PermissionStatus.getonchange"
                 prim__onchange
                 prim__setOnchange
                 v

  
  export
  state : (obj : PermissionStatus) -> JSIO PermissionState
  state a = tryJS "PermissionStatus.state" $ PermissionStatus.prim__state a



namespace Permissions
  
  export
  query :
       {auto _ : Cast t2 Object}
    -> (obj : Permissions)
    -> (permissionDesc : t2)
    -> JSIO (Promise PermissionStatus)
  query a b = primJS $ Permissions.prim__query a (cast b)





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor
  
  export
  new' : (panTiltZoom : Optional Bool) -> JSIO CameraDevicePermissionDescriptor
  new' a = primJS $ CameraDevicePermissionDescriptor.prim__new (toFFI a)
  
  export
  new : JSIO CameraDevicePermissionDescriptor
  new = primJS $ CameraDevicePermissionDescriptor.prim__new undef

  
  export
  panTiltZoom :
       {auto _ : Cast t CameraDevicePermissionDescriptor}
    -> t
    -> Attribute True Optional Bool
  panTiltZoom v = fromUndefOrPrim
                    "CameraDevicePermissionDescriptor.getpanTiltZoom"
                    prim__panTiltZoom
                    prim__setPanTiltZoom
                    False
                    (cast {to = CameraDevicePermissionDescriptor} v)



namespace DevicePermissionDescriptor
  
  export
  new' : (deviceId : Optional String) -> JSIO DevicePermissionDescriptor
  new' a = primJS $ DevicePermissionDescriptor.prim__new (toFFI a)
  
  export
  new : JSIO DevicePermissionDescriptor
  new = primJS $ DevicePermissionDescriptor.prim__new undef

  
  export
  deviceId :
       {auto _ : Cast t DevicePermissionDescriptor}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "DevicePermissionDescriptor.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (cast {to = DevicePermissionDescriptor} v)



namespace MidiPermissionDescriptor
  
  export
  new' : (sysex : Optional Bool) -> JSIO MidiPermissionDescriptor
  new' a = primJS $ MidiPermissionDescriptor.prim__new (toFFI a)
  
  export
  new : JSIO MidiPermissionDescriptor
  new = primJS $ MidiPermissionDescriptor.prim__new undef

  
  export
  sysex :
       {auto _ : Cast t MidiPermissionDescriptor}
    -> t
    -> Attribute True Optional Bool
  sysex v = fromUndefOrPrim
              "MidiPermissionDescriptor.getsysex"
              prim__sysex
              prim__setSysex
              False
              (cast {to = MidiPermissionDescriptor} v)



namespace PermissionDescriptor
  
  export
  new : (name : PermissionName) -> JSIO PermissionDescriptor
  new a = primJS $ PermissionDescriptor.prim__new (toFFI a)

  
  export
  name :
       {auto _ : Cast t PermissionDescriptor}
    -> t
    -> Attribute True Prelude.id PermissionName
  name v = fromPrim
             "PermissionDescriptor.getname"
             prim__name
             prim__setName
             (cast {to = PermissionDescriptor} v)



namespace PermissionSetParameters
  
  export
  new' :
       {auto _ : Cast t1 PermissionDescriptor}
    -> (descriptor : t1)
    -> (state : PermissionState)
    -> (oneRealm : Optional Bool)
    -> JSIO PermissionSetParameters
  new' a b c = primJS $
    PermissionSetParameters.prim__new (cast a) (toFFI b) (toFFI c)
  
  export
  new :
       {auto _ : Cast t1 PermissionDescriptor}
    -> (descriptor : t1)
    -> (state : PermissionState)
    -> JSIO PermissionSetParameters
  new a b = primJS $ PermissionSetParameters.prim__new (cast a) (toFFI b) undef

  
  export
  descriptor :
       {auto _ : Cast t PermissionSetParameters}
    -> t
    -> Attribute True Prelude.id PermissionDescriptor
  descriptor v = fromPrim
                   "PermissionSetParameters.getdescriptor"
                   prim__descriptor
                   prim__setDescriptor
                   (cast {to = PermissionSetParameters} v)

  
  export
  oneRealm :
       {auto _ : Cast t PermissionSetParameters}
    -> t
    -> Attribute True Optional Bool
  oneRealm v = fromUndefOrPrim
                 "PermissionSetParameters.getoneRealm"
                 prim__oneRealm
                 prim__setOneRealm
                 False
                 (cast {to = PermissionSetParameters} v)

  
  export
  state :
       {auto _ : Cast t PermissionSetParameters}
    -> t
    -> Attribute True Prelude.id PermissionState
  state v = fromPrim
              "PermissionSetParameters.getstate"
              prim__state
              prim__setState
              (cast {to = PermissionSetParameters} v)



namespace PushPermissionDescriptor
  
  export
  new' : (userVisibleOnly : Optional Bool) -> JSIO PushPermissionDescriptor
  new' a = primJS $ PushPermissionDescriptor.prim__new (toFFI a)
  
  export
  new : JSIO PushPermissionDescriptor
  new = primJS $ PushPermissionDescriptor.prim__new undef

  
  export
  userVisibleOnly :
       {auto _ : Cast t PushPermissionDescriptor}
    -> t
    -> Attribute True Optional Bool
  userVisibleOnly v = fromUndefOrPrim
                        "PushPermissionDescriptor.getuserVisibleOnly"
                        prim__userVisibleOnly
                        prim__setUserVisibleOnly
                        False
                        (cast {to = PushPermissionDescriptor} v)



