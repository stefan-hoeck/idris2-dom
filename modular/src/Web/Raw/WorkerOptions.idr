module Web.Raw.WorkerOptions

import JS
import Web.Types.RequestCredentials
import Web.Types.WorkerOptions
import Web.Types.WorkerType


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({type: a,credentials: b,name: c})"
prim__new :
     UndefOr String
  -> UndefOr String
  -> UndefOr String
  -> PrimIO WorkerOptions


export
%foreign "browser:lambda:x=>x.credentials"
prim__credentials : WorkerOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.credentials = v}"
prim__setCredentials : WorkerOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.name"
prim__name : WorkerOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.name = v}"
prim__setName : WorkerOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : WorkerOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : WorkerOptions -> UndefOr String -> PrimIO ()



export
new' :
     (type : Optional WorkerType)
  -> (credentials : Optional RequestCredentials)
  -> (name : Optional String)
  -> JSIO WorkerOptions
new' a b c = primJS $ WorkerOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO WorkerOptions
new = primJS $ WorkerOptions.prim__new undef undef undef


export
credentials :
     {auto _ : Cast t WorkerOptions}
  -> t
  -> Attribute False Optional RequestCredentials
credentials v = fromUndefOrPrimNoDefault
                  "WorkerOptions.getcredentials"
                  prim__credentials
                  prim__setCredentials
                  (cast {to = WorkerOptions} v)


export
name : {auto _ : Cast t WorkerOptions} -> t -> Attribute True Optional String
name v = fromUndefOrPrim
           "WorkerOptions.getname"
           prim__name
           prim__setName
           ""
           (cast {to = WorkerOptions} v)


export
type :
     {auto _ : Cast t WorkerOptions}
  -> t
  -> Attribute False Optional WorkerType
type v = fromUndefOrPrimNoDefault
           "WorkerOptions.gettype"
           prim__type
           prim__setType
           (cast {to = WorkerOptions} v)

