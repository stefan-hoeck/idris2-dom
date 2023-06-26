module Web.Raw.MultiCacheQueryOptions

import JS
import Web.Types.CacheQueryOptions
import Web.Types.MultiCacheQueryOptions


%default total


export
%foreign "browser:lambda:(a)=> ({cacheName: a})"
prim__new : UndefOr String -> PrimIO MultiCacheQueryOptions


export
%foreign "browser:lambda:x=>x.cacheName"
prim__cacheName : MultiCacheQueryOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.cacheName = v}"
prim__setCacheName : MultiCacheQueryOptions -> UndefOr String -> PrimIO ()



export
new' : (cacheName : Optional String) -> JSIO MultiCacheQueryOptions
new' a = primJS $ MultiCacheQueryOptions.prim__new (toFFI a)

export
new : JSIO MultiCacheQueryOptions
new = primJS $ MultiCacheQueryOptions.prim__new undef


export
cacheName :
     {auto _ : Cast t MultiCacheQueryOptions}
  -> t
  -> Attribute False Optional String
cacheName v = fromUndefOrPrimNoDefault
                "MultiCacheQueryOptions.getcacheName"
                prim__cacheName
                prim__setCacheName
                (cast {to = MultiCacheQueryOptions} v)

