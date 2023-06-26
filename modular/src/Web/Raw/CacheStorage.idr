module Web.Raw.CacheStorage

import JS
import Web.Types.Cache
import Web.Types.CacheStorage
import Web.Types.MultiCacheQueryOptions
import Web.Types.Request
import Web.Types.Response


%default total


export
%foreign "browser:lambda:(x,a)=>x.delete(a)"
prim__delete : CacheStorage -> String -> PrimIO (Promise Boolean)


export
%foreign "browser:lambda:(x,a)=>x.has(a)"
prim__has : CacheStorage -> String -> PrimIO (Promise Boolean)


export
%foreign "browser:lambda:x=>x.keys()"
prim__keys : CacheStorage -> PrimIO (Promise (Array String))


export
%foreign "browser:lambda:(x,a,b)=>x.match(a,b)"
prim__match :
     CacheStorage
  -> Union2 Request String
  -> UndefOr MultiCacheQueryOptions
  -> PrimIO (Promise (Union2 Response Undefined))


export
%foreign "browser:lambda:(x,a)=>x.open(a)"
prim__open : CacheStorage -> String -> PrimIO (Promise Cache)


export
delete : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Boolean)
delete a b = primJS $ CacheStorage.prim__delete a b


export
has : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Boolean)
has a b = primJS $ CacheStorage.prim__has a b


export
keys : (obj : CacheStorage) -> JSIO (Promise (Array String))
keys a = primJS $ CacheStorage.prim__keys a


export
match' :
     {auto _ : Cast t3 MultiCacheQueryOptions}
  -> (obj : CacheStorage)
  -> (request : HSum [Request, String])
  -> (options : Optional t3)
  -> JSIO (Promise (Union2 Response Undefined))
match' a b c = primJS $ CacheStorage.prim__match a (toFFI b) (optUp c)

export
match :
     (obj : CacheStorage)
  -> (request : HSum [Request, String])
  -> JSIO (Promise (Union2 Response Undefined))
match a b = primJS $ CacheStorage.prim__match a (toFFI b) undef


export
open_ : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Cache)
open_ a b = primJS $ CacheStorage.prim__open a b
