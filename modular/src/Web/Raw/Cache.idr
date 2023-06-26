module Web.Raw.Cache

import JS
import Web.Types.Cache
import Web.Types.CacheQueryOptions
import Web.Types.Request
import Web.Types.Response


%default total


export
%foreign "browser:lambda:(x,a)=>x.addAll(a)"
prim__addAll :
     Cache
  -> Array (Union2 Request String)
  -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.add(a)"
prim__add : Cache -> Union2 Request String -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a,b)=>x.delete(a,b)"
prim__delete :
     Cache
  -> Union2 Request String
  -> UndefOr CacheQueryOptions
  -> PrimIO (Promise Boolean)


export
%foreign "browser:lambda:(x,a,b)=>x.keys(a,b)"
prim__keys :
     Cache
  -> UndefOr (Union2 Request String)
  -> UndefOr CacheQueryOptions
  -> PrimIO (Promise (Array Request))


export
%foreign "browser:lambda:(x,a,b)=>x.matchAll(a,b)"
prim__matchAll :
     Cache
  -> UndefOr (Union2 Request String)
  -> UndefOr CacheQueryOptions
  -> PrimIO (Promise (Array Response))


export
%foreign "browser:lambda:(x,a,b)=>x.match(a,b)"
prim__match :
     Cache
  -> Union2 Request String
  -> UndefOr CacheQueryOptions
  -> PrimIO (Promise (Union2 Response Undefined))


export
%foreign "browser:lambda:(x,a,b)=>x.put(a,b)"
prim__put :
     Cache
  -> Union2 Request String
  -> Response
  -> PrimIO (Promise Undefined)


export
addAll :
     (obj : Cache)
  -> (requests : Array (Union2 Request String))
  -> JSIO (Promise Undefined)
addAll a b = primJS $ Cache.prim__addAll a b


export
add :
     (obj : Cache)
  -> (request : HSum [Request, String])
  -> JSIO (Promise Undefined)
add a b = primJS $ Cache.prim__add a (toFFI b)


export
delete' :
     {auto _ : Cast t3 CacheQueryOptions}
  -> (obj : Cache)
  -> (request : HSum [Request, String])
  -> (options : Optional t3)
  -> JSIO (Promise Boolean)
delete' a b c = primJS $ Cache.prim__delete a (toFFI b) (optUp c)

export
delete :
     (obj : Cache)
  -> (request : HSum [Request, String])
  -> JSIO (Promise Boolean)
delete a b = primJS $ Cache.prim__delete a (toFFI b) undef


export
keys' :
     {auto _ : Cast t3 CacheQueryOptions}
  -> (obj : Cache)
  -> (request : Optional (HSum [Request, String]))
  -> (options : Optional t3)
  -> JSIO (Promise (Array Request))
keys' a b c = primJS $ Cache.prim__keys a (toFFI b) (optUp c)

export
keys : (obj : Cache) -> JSIO (Promise (Array Request))
keys a = primJS $ Cache.prim__keys a undef undef


export
matchAll' :
     {auto _ : Cast t3 CacheQueryOptions}
  -> (obj : Cache)
  -> (request : Optional (HSum [Request, String]))
  -> (options : Optional t3)
  -> JSIO (Promise (Array Response))
matchAll' a b c = primJS $ Cache.prim__matchAll a (toFFI b) (optUp c)

export
matchAll : (obj : Cache) -> JSIO (Promise (Array Response))
matchAll a = primJS $ Cache.prim__matchAll a undef undef


export
match' :
     {auto _ : Cast t3 CacheQueryOptions}
  -> (obj : Cache)
  -> (request : HSum [Request, String])
  -> (options : Optional t3)
  -> JSIO (Promise (Union2 Response Undefined))
match' a b c = primJS $ Cache.prim__match a (toFFI b) (optUp c)

export
match :
     (obj : Cache)
  -> (request : HSum [Request, String])
  -> JSIO (Promise (Union2 Response Undefined))
match a b = primJS $ Cache.prim__match a (toFFI b) undef


export
put :
     (obj : Cache)
  -> (request : HSum [Request, String])
  -> (response : Response)
  -> JSIO (Promise Undefined)
put a b c = primJS $ Cache.prim__put a (toFFI b) c

