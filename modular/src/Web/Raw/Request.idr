module Web.Raw.Request

import JS
import Web.Types.AbortSignal
import Web.Types.Body
import Web.Types.Headers
import Web.Types.ReferrerPolicy
import Web.Types.Request
import Web.Types.RequestCache
import Web.Types.RequestCredentials
import Web.Types.RequestDestination
import Web.Types.RequestInit
import Web.Types.RequestMode
import Web.Types.RequestRedirect


%default total


export
%foreign "browser:lambda:(a,b)=> new Request(a,b)"
prim__new : Union2 Request String -> UndefOr RequestInit -> PrimIO Request


export
%foreign "browser:lambda:x=>x.cache"
prim__cache : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.credentials"
prim__credentials : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.destination"
prim__destination : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.headers"
prim__headers : Request -> PrimIO Headers


export
%foreign "browser:lambda:x=>x.integrity"
prim__integrity : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.isHistoryNavigation"
prim__isHistoryNavigation : Request -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.isReloadNavigation"
prim__isReloadNavigation : Request -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.keepalive"
prim__keepalive : Request -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.method"
prim__method : Request -> PrimIO ByteString


export
%foreign "browser:lambda:x=>x.mode"
prim__mode : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.redirect"
prim__redirect : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.referrer"
prim__referrer : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.referrerPolicy"
prim__referrerPolicy : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.signal"
prim__signal : Request -> PrimIO AbortSignal


export
%foreign "browser:lambda:x=>x.url"
prim__url : Request -> PrimIO String


export
%foreign "browser:lambda:x=>x.clone()"
prim__clone : Request -> PrimIO Request


export
new' :
     {auto _ : Cast t2 RequestInit}
  -> (input : HSum [Request, String])
  -> (init : Optional t2)
  -> JSIO Request
new' a b = primJS $ Request.prim__new (toFFI a) (optUp b)

export
new : (input : HSum [Request, String]) -> JSIO Request
new a = primJS $ Request.prim__new (toFFI a) undef


export
cache : (obj : Request) -> JSIO RequestCache
cache a = tryJS "Request.cache" $ Request.prim__cache a


export
credentials : (obj : Request) -> JSIO RequestCredentials
credentials a = tryJS "Request.credentials" $ Request.prim__credentials a


export
destination : (obj : Request) -> JSIO RequestDestination
destination a = tryJS "Request.destination" $ Request.prim__destination a


export
headers : (obj : Request) -> JSIO Headers
headers a = primJS $ Request.prim__headers a


export
integrity : (obj : Request) -> JSIO String
integrity a = primJS $ Request.prim__integrity a


export
isHistoryNavigation : (obj : Request) -> JSIO Bool
isHistoryNavigation a = tryJS "Request.isHistoryNavigation" $
  Request.prim__isHistoryNavigation a


export
isReloadNavigation : (obj : Request) -> JSIO Bool
isReloadNavigation a = tryJS "Request.isReloadNavigation" $
  Request.prim__isReloadNavigation a


export
keepalive : (obj : Request) -> JSIO Bool
keepalive a = tryJS "Request.keepalive" $ Request.prim__keepalive a


export
method : (obj : Request) -> JSIO ByteString
method a = primJS $ Request.prim__method a


export
mode : (obj : Request) -> JSIO RequestMode
mode a = tryJS "Request.mode" $ Request.prim__mode a


export
redirect : (obj : Request) -> JSIO RequestRedirect
redirect a = tryJS "Request.redirect" $ Request.prim__redirect a


export
referrer : (obj : Request) -> JSIO String
referrer a = primJS $ Request.prim__referrer a


export
referrerPolicy : (obj : Request) -> JSIO ReferrerPolicy
referrerPolicy a = tryJS "Request.referrerPolicy" $
  Request.prim__referrerPolicy a


export
signal : (obj : Request) -> JSIO AbortSignal
signal a = primJS $ Request.prim__signal a


export
url : (obj : Request) -> JSIO String
url a = primJS $ Request.prim__url a


export
clone : (obj : Request) -> JSIO Request
clone a = primJS $ Request.prim__clone a
