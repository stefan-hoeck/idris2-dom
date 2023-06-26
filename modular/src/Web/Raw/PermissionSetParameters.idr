module Web.Raw.PermissionSetParameters

import JS
import Web.Types.PermissionDescriptor
import Web.Types.PermissionSetParameters
import Web.Types.PermissionState


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({descriptor: a,state: b,oneRealm: c})"
prim__new :
     PermissionDescriptor
  -> String
  -> UndefOr Boolean
  -> PrimIO PermissionSetParameters


export
%foreign "browser:lambda:x=>x.descriptor"
prim__descriptor : PermissionSetParameters -> PrimIO PermissionDescriptor



export
%foreign "browser:lambda:(x,v)=>{x.descriptor = v}"
prim__setDescriptor :
     PermissionSetParameters
  -> PermissionDescriptor
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oneRealm"
prim__oneRealm : PermissionSetParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.oneRealm = v}"
prim__setOneRealm : PermissionSetParameters -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.state"
prim__state : PermissionSetParameters -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.state = v}"
prim__setState : PermissionSetParameters -> String -> PrimIO ()



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
