module Web.Raw.PushPermissionDescriptor

import JS
import Web.Types.PermissionDescriptor
import Web.Types.PushPermissionDescriptor


%default total


export
%foreign "browser:lambda:(a)=> ({userVisibleOnly: a})"
prim__new : UndefOr Boolean -> PrimIO PushPermissionDescriptor


export
%foreign "browser:lambda:x=>x.userVisibleOnly"
prim__userVisibleOnly : PushPermissionDescriptor -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.userVisibleOnly = v}"
prim__setUserVisibleOnly :
     PushPermissionDescriptor
  -> UndefOr Boolean
  -> PrimIO ()



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
