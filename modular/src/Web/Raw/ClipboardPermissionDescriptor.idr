module Web.Raw.ClipboardPermissionDescriptor

import JS
import Web.Types.ClipboardPermissionDescriptor
import Web.Types.PermissionDescriptor


%default total


export
%foreign "browser:lambda:(a)=> ({allowWithoutGesture: a})"
prim__new : UndefOr Boolean -> PrimIO ClipboardPermissionDescriptor


export
%foreign "browser:lambda:x=>x.allowWithoutGesture"
prim__allowWithoutGesture :
     ClipboardPermissionDescriptor
  -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.allowWithoutGesture = v}"
prim__setAllowWithoutGesture :
     ClipboardPermissionDescriptor
  -> UndefOr Boolean
  -> PrimIO ()



export
new' :
     (allowWithoutGesture : Optional Bool)
  -> JSIO ClipboardPermissionDescriptor
new' a = primJS $ ClipboardPermissionDescriptor.prim__new (toFFI a)

export
new : JSIO ClipboardPermissionDescriptor
new = primJS $ ClipboardPermissionDescriptor.prim__new undef


export
allowWithoutGesture :
     {auto _ : Cast t ClipboardPermissionDescriptor}
  -> t
  -> Attribute True Optional Bool
allowWithoutGesture v = fromUndefOrPrim
                          "ClipboardPermissionDescriptor.getallowWithoutGesture"
                          prim__allowWithoutGesture
                          prim__setAllowWithoutGesture
                          False
                          (cast {to = ClipboardPermissionDescriptor} v)

