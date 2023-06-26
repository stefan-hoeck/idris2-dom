module Web.Raw.CacheQueryOptions

import JS
import Web.Types.CacheQueryOptions


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({ignoreSearch: a,ignoreMethod: b,ignoreVary: c})"
prim__new :
     UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> PrimIO CacheQueryOptions


export
%foreign "browser:lambda:x=>x.ignoreMethod"
prim__ignoreMethod : CacheQueryOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.ignoreMethod = v}"
prim__setIgnoreMethod : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ignoreSearch"
prim__ignoreSearch : CacheQueryOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.ignoreSearch = v}"
prim__setIgnoreSearch : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ignoreVary"
prim__ignoreVary : CacheQueryOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.ignoreVary = v}"
prim__setIgnoreVary : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()



export
new' :
     (ignoreSearch : Optional Bool)
  -> (ignoreMethod : Optional Bool)
  -> (ignoreVary : Optional Bool)
  -> JSIO CacheQueryOptions
new' a b c = primJS $ CacheQueryOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO CacheQueryOptions
new = primJS $ CacheQueryOptions.prim__new undef undef undef


export
ignoreMethod :
     {auto _ : Cast t CacheQueryOptions}
  -> t
  -> Attribute True Optional Bool
ignoreMethod v = fromUndefOrPrim
                   "CacheQueryOptions.getignoreMethod"
                   prim__ignoreMethod
                   prim__setIgnoreMethod
                   False
                   (cast {to = CacheQueryOptions} v)


export
ignoreSearch :
     {auto _ : Cast t CacheQueryOptions}
  -> t
  -> Attribute True Optional Bool
ignoreSearch v = fromUndefOrPrim
                   "CacheQueryOptions.getignoreSearch"
                   prim__ignoreSearch
                   prim__setIgnoreSearch
                   False
                   (cast {to = CacheQueryOptions} v)


export
ignoreVary :
     {auto _ : Cast t CacheQueryOptions}
  -> t
  -> Attribute True Optional Bool
ignoreVary v = fromUndefOrPrim
                 "CacheQueryOptions.getignoreVary"
                 prim__ignoreVary
                 prim__setIgnoreVary
                 False
                 (cast {to = CacheQueryOptions} v)
