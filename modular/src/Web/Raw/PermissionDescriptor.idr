module Web.Raw.PermissionDescriptor

import JS
import Web.Types.PermissionDescriptor
import Web.Types.PermissionName


%default total


export
%foreign "browser:lambda:(a)=> ({name: a})"
prim__new : String -> PrimIO PermissionDescriptor


export
%foreign "browser:lambda:x=>x.name"
prim__name : PermissionDescriptor -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : PermissionDescriptor -> String -> PrimIO ()



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
