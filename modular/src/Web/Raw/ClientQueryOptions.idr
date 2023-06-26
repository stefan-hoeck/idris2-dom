module Web.Raw.ClientQueryOptions

import JS
import Web.Types.ClientQueryOptions
import Web.Types.ClientType


%default total


export
%foreign "browser:lambda:(a,b)=> ({includeUncontrolled: a,type: b})"
prim__new : UndefOr Boolean -> UndefOr String -> PrimIO ClientQueryOptions


export
%foreign "browser:lambda:x=>x.includeUncontrolled"
prim__includeUncontrolled : ClientQueryOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.includeUncontrolled = v}"
prim__setIncludeUncontrolled :
     ClientQueryOptions
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.type"
prim__type : ClientQueryOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.type = v}"
prim__setType : ClientQueryOptions -> UndefOr String -> PrimIO ()



export
new' :
     (includeUncontrolled : Optional Bool)
  -> (type : Optional ClientType)
  -> JSIO ClientQueryOptions
new' a b = primJS $ ClientQueryOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO ClientQueryOptions
new = primJS $ ClientQueryOptions.prim__new undef undef


export
includeUncontrolled :
     {auto _ : Cast t ClientQueryOptions}
  -> t
  -> Attribute True Optional Bool
includeUncontrolled v = fromUndefOrPrim
                          "ClientQueryOptions.getincludeUncontrolled"
                          prim__includeUncontrolled
                          prim__setIncludeUncontrolled
                          False
                          (cast {to = ClientQueryOptions} v)


export
type :
     {auto _ : Cast t ClientQueryOptions}
  -> t
  -> Attribute False Optional ClientType
type v = fromUndefOrPrimNoDefault
           "ClientQueryOptions.gettype"
           prim__type
           prim__setType
           (cast {to = ClientQueryOptions} v)
