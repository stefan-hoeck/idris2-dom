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
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem Object (Types t2)}
    -> (obj : Permissions)
    -> (permissionDesc : t2)
    -> JSIO (Promise PermissionStatus)
  query a b = primJS $ Permissions.prim__query a (up b)





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CameraDevicePermissionDescriptor

  export
  new : (panTiltZoom : Optional Bool) -> JSIO CameraDevicePermissionDescriptor
  new a = primJS $ CameraDevicePermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO CameraDevicePermissionDescriptor
  new' = primJS $ CameraDevicePermissionDescriptor.prim__new undef


  export
  panTiltZoom :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CameraDevicePermissionDescriptor (Types t)}
    -> t
    -> Attribute True Optional Bool
  panTiltZoom v = fromUndefOrPrim
                    "CameraDevicePermissionDescriptor.getpanTiltZoom"
                    prim__panTiltZoom
                    prim__setPanTiltZoom
                    False
                    (v :> CameraDevicePermissionDescriptor)



namespace DevicePermissionDescriptor

  export
  new : (deviceId : Optional String) -> JSIO DevicePermissionDescriptor
  new a = primJS $ DevicePermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO DevicePermissionDescriptor
  new' = primJS $ DevicePermissionDescriptor.prim__new undef


  export
  deviceId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem DevicePermissionDescriptor (Types t)}
    -> t
    -> Attribute False Optional String
  deviceId v = fromUndefOrPrimNoDefault
                 "DevicePermissionDescriptor.getdeviceId"
                 prim__deviceId
                 prim__setDeviceId
                 (v :> DevicePermissionDescriptor)



namespace MidiPermissionDescriptor

  export
  new : (sysex : Optional Bool) -> JSIO MidiPermissionDescriptor
  new a = primJS $ MidiPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO MidiPermissionDescriptor
  new' = primJS $ MidiPermissionDescriptor.prim__new undef


  export
  sysex :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MidiPermissionDescriptor (Types t)}
    -> t
    -> Attribute True Optional Bool
  sysex v = fromUndefOrPrim
              "MidiPermissionDescriptor.getsysex"
              prim__sysex
              prim__setSysex
              False
              (v :> MidiPermissionDescriptor)



namespace PermissionDescriptor

  export
  new : (name : PermissionName) -> JSIO PermissionDescriptor
  new a = primJS $ PermissionDescriptor.prim__new (toFFI a)


  export
  name :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem PermissionDescriptor (Types t)}
    -> t
    -> Attribute True I PermissionName
  name v = fromPrim
             "PermissionDescriptor.getname"
             prim__name
             prim__setName
             (v :> PermissionDescriptor)



namespace PermissionSetParameters

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem PermissionDescriptor (Types t1)}
    -> (descriptor : t1)
    -> (state : PermissionState)
    -> (oneRealm : Optional Bool)
    -> JSIO PermissionSetParameters
  new a b c = primJS $
    PermissionSetParameters.prim__new (up a) (toFFI b) (toFFI c)

  export
  new' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem PermissionDescriptor (Types t1)}
    -> (descriptor : t1)
    -> (state : PermissionState)
    -> JSIO PermissionSetParameters
  new' a b = primJS $ PermissionSetParameters.prim__new (up a) (toFFI b) undef


  export
  descriptor :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem PermissionSetParameters (Types t)}
    -> t
    -> Attribute True I PermissionDescriptor
  descriptor v = fromPrim
                   "PermissionSetParameters.getdescriptor"
                   prim__descriptor
                   prim__setDescriptor
                   (v :> PermissionSetParameters)


  export
  oneRealm :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem PermissionSetParameters (Types t)}
    -> t
    -> Attribute True Optional Bool
  oneRealm v = fromUndefOrPrim
                 "PermissionSetParameters.getoneRealm"
                 prim__oneRealm
                 prim__setOneRealm
                 False
                 (v :> PermissionSetParameters)


  export
  state :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem PermissionSetParameters (Types t)}
    -> t
    -> Attribute True I PermissionState
  state v = fromPrim
              "PermissionSetParameters.getstate"
              prim__state
              prim__setState
              (v :> PermissionSetParameters)



namespace PushPermissionDescriptor

  export
  new : (userVisibleOnly : Optional Bool) -> JSIO PushPermissionDescriptor
  new a = primJS $ PushPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO PushPermissionDescriptor
  new' = primJS $ PushPermissionDescriptor.prim__new undef


  export
  userVisibleOnly :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem PushPermissionDescriptor (Types t)}
    -> t
    -> Attribute True Optional Bool
  userVisibleOnly v = fromUndefOrPrim
                        "PushPermissionDescriptor.getuserVisibleOnly"
                        prim__userVisibleOnly
                        prim__setUserVisibleOnly
                        False
                        (v :> PushPermissionDescriptor)
