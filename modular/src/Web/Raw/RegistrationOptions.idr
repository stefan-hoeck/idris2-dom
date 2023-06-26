module Web.Raw.RegistrationOptions

import JS
import Web.Types.RegistrationOptions
import Web.Types.ServiceWorkerUpdateViaCache
import Web.Types.WorkerType


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({scope: a,type: b,updateViaCache: c})"
prim__new :
     UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> PrimIO RegistrationOptions


export
%foreign "browser:lambda:x=>x.scope"
prim__scope : RegistrationOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.scope = v}"
prim__setScope : RegistrationOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : RegistrationOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : RegistrationOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.updateViaCache"
prim__updateViaCache : RegistrationOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.updateViaCache = v}"
prim__setUpdateViaCache : RegistrationOptions -> UndefOr String -> PrimIO ()



export
new' :
     (scope : Optional String)
  -> (type : Optional WorkerType)
  -> (updateViaCache : Optional ServiceWorkerUpdateViaCache)
  -> JSIO RegistrationOptions
new' a b c = primJS $
  RegistrationOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO RegistrationOptions
new = primJS $ RegistrationOptions.prim__new undef undef undef


export
scope :
     {auto _ : Cast t RegistrationOptions}
  -> t
  -> Attribute False Optional String
scope v = fromUndefOrPrimNoDefault
            "RegistrationOptions.getscope"
            prim__scope
            prim__setScope
            (cast {to = RegistrationOptions} v)


export
type :
     {auto _ : Cast t RegistrationOptions}
  -> t
  -> Attribute False Optional WorkerType
type v = fromUndefOrPrimNoDefault
           "RegistrationOptions.gettype"
           prim__type
           prim__setType
           (cast {to = RegistrationOptions} v)


export
updateViaCache :
     {auto _ : Cast t RegistrationOptions}
  -> t
  -> Attribute False Optional ServiceWorkerUpdateViaCache
updateViaCache v = fromUndefOrPrimNoDefault
                     "RegistrationOptions.getupdateViaCache"
                     prim__updateViaCache
                     prim__setUpdateViaCache
                     (cast {to = RegistrationOptions} v)

