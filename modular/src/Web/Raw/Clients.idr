module Web.Raw.Clients

import JS
import Web.Types.Client
import Web.Types.ClientQueryOptions
import Web.Types.Clients
import Web.Types.WindowClient


%default total


export
%foreign "browser:lambda:x=>x.claim()"
prim__claim : Clients -> PrimIO (Promise Undefined)


export
%foreign "browser:lambda:(x,a)=>x.get(a)"
prim__get : Clients -> String -> PrimIO (Promise (Union2 Client Undefined))


export
%foreign "browser:lambda:(x,a)=>x.matchAll(a)"
prim__matchAll :
     Clients
  -> UndefOr ClientQueryOptions
  -> PrimIO (Promise (Array Client))


export
%foreign "browser:lambda:(x,a)=>x.openWindow(a)"
prim__openWindow : Clients -> String -> PrimIO (Promise (Nullable WindowClient))


export
claim : (obj : Clients) -> JSIO (Promise Undefined)
claim a = primJS $ Clients.prim__claim a


export
get :
     (obj : Clients)
  -> (id : String)
  -> JSIO (Promise (Union2 Client Undefined))
get a b = primJS $ Clients.prim__get a b


export
matchAll' :
     {auto _ : Cast t2 ClientQueryOptions}
  -> (obj : Clients)
  -> (options : Optional t2)
  -> JSIO (Promise (Array Client))
matchAll' a b = primJS $ Clients.prim__matchAll a (optUp b)

export
matchAll : (obj : Clients) -> JSIO (Promise (Array Client))
matchAll a = primJS $ Clients.prim__matchAll a undef


export
openWindow :
     (obj : Clients)
  -> (url : String)
  -> JSIO (Promise (Nullable WindowClient))
openWindow a b = primJS $ Clients.prim__openWindow a b

