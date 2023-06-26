module Web.Raw.DevicePermissionDescriptor

import JS
import Web.Types.DevicePermissionDescriptor
import Web.Types.PermissionDescriptor


%default total


export
%foreign "browser:lambda:(a)=> ({deviceId: a})"
prim__new : UndefOr String -> PrimIO DevicePermissionDescriptor


export
%foreign "browser:lambda:x=>x.deviceId"
prim__deviceId : DevicePermissionDescriptor -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.deviceId = v}"
prim__setDeviceId : DevicePermissionDescriptor -> UndefOr String -> PrimIO ()



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

