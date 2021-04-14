module Web.Raw.Permissions
 
import JS
import Web.Internal.PermissionsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace PermissionStatus
  
  export
  onchange : PermissionStatus -> Attribute False Maybe EventHandlerNonNull
  onchange = fromNullablePrim "PermissionStatus.getonchange"
                              prim__onchange
                              prim__setOnchange
  
  export
  state :  JSType t1
        => {auto 0 _ : Elem PermissionStatus (Types t1)}
        -> (obj : t1)
        -> JSIO PermissionState
  state a = tryJS "PermissionStatus.state" $ PermissionStatus.prim__state (up a)

namespace Permissions
  
  export
  query :  JSType t1
        => JSType t2
        => {auto 0 _ : Elem Permissions (Types t1)}
        -> {auto 0 _ : Elem Object (Types t2)}
        -> (obj : t1)
        -> (permissionDesc : t2)
        -> JSIO (Promise PermissionStatus)
  query a b = primJS $ Permissions.prim__query (up a) (up b)


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
  panTiltZoom : CameraDevicePermissionDescriptor -> Attribute True Optional Bool
  panTiltZoom = fromUndefOrPrim "CameraDevicePermissionDescriptor.getpanTiltZoom"
                                prim__panTiltZoom
                                prim__setPanTiltZoom
                                False

namespace DevicePermissionDescriptor
  
  export
  new : (deviceId : Optional String) -> JSIO DevicePermissionDescriptor
  new a = primJS $ DevicePermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO DevicePermissionDescriptor
  new' = primJS $ DevicePermissionDescriptor.prim__new undef
  
  export
  deviceId : DevicePermissionDescriptor -> Attribute False Optional String
  deviceId = fromUndefOrPrimNoDefault "DevicePermissionDescriptor.getdeviceId"
                                      prim__deviceId
                                      prim__setDeviceId

namespace MidiPermissionDescriptor
  
  export
  new : (sysex : Optional Bool) -> JSIO MidiPermissionDescriptor
  new a = primJS $ MidiPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO MidiPermissionDescriptor
  new' = primJS $ MidiPermissionDescriptor.prim__new undef
  
  export
  sysex : MidiPermissionDescriptor -> Attribute True Optional Bool
  sysex = fromUndefOrPrim "MidiPermissionDescriptor.getsysex"
                          prim__sysex
                          prim__setSysex
                          False

namespace PermissionDescriptor
  
  export
  new : (name : PermissionName) -> JSIO PermissionDescriptor
  new a = primJS $ PermissionDescriptor.prim__new (toFFI a)
  
  export
  name : PermissionDescriptor -> Attribute True I PermissionName
  name = fromPrim "PermissionDescriptor.getname" prim__name prim__setName

namespace PermissionSetParameters
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem PermissionDescriptor (Types t1)}
      -> (descriptor : t1)
      -> (state : PermissionState)
      -> (oneRealm : Optional Bool)
      -> JSIO PermissionSetParameters
  new a b c = primJS
            $ PermissionSetParameters.prim__new (up a) (toFFI b) (toFFI c)

  export
  new' :  JSType t1
       => {auto 0 _ : Elem PermissionDescriptor (Types t1)}
       -> (descriptor : t1)
       -> (state : PermissionState)
       -> JSIO PermissionSetParameters
  new' a b = primJS $ PermissionSetParameters.prim__new (up a) (toFFI b) undef
  
  export
  descriptor : PermissionSetParameters -> Attribute True I PermissionDescriptor
  descriptor = fromPrim "PermissionSetParameters.getdescriptor"
                        prim__descriptor
                        prim__setDescriptor
  
  export
  oneRealm : PermissionSetParameters -> Attribute True Optional Bool
  oneRealm = fromUndefOrPrim "PermissionSetParameters.getoneRealm"
                             prim__oneRealm
                             prim__setOneRealm
                             False
  
  export
  state : PermissionSetParameters -> Attribute True I PermissionState
  state = fromPrim "PermissionSetParameters.getstate" prim__state prim__setState

namespace PushPermissionDescriptor
  
  export
  new : (userVisibleOnly : Optional Bool) -> JSIO PushPermissionDescriptor
  new a = primJS $ PushPermissionDescriptor.prim__new (toFFI a)

  export
  new' : JSIO PushPermissionDescriptor
  new' = primJS $ PushPermissionDescriptor.prim__new undef
  
  export
  userVisibleOnly : PushPermissionDescriptor -> Attribute True Optional Bool
  userVisibleOnly = fromUndefOrPrim "PushPermissionDescriptor.getuserVisibleOnly"
                                    prim__userVisibleOnly
                                    prim__setUserVisibleOnly
                                    False
