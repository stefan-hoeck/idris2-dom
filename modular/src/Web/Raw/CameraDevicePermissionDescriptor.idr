module Web.Raw.CameraDevicePermissionDescriptor

import JS
import Web.Types.CameraDevicePermissionDescriptor
import Web.Types.DevicePermissionDescriptor
import Web.Types.PermissionDescriptor


%default total


export
%foreign "browser:lambda:(a)=> ({panTiltZoom: a})"
prim__new : UndefOr Boolean -> PrimIO CameraDevicePermissionDescriptor


export
%foreign "browser:lambda:x=>x.panTiltZoom"
prim__panTiltZoom : CameraDevicePermissionDescriptor -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.panTiltZoom = v}"
prim__setPanTiltZoom :
     CameraDevicePermissionDescriptor
  -> UndefOr Boolean
  -> PrimIO ()



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
