module Web.Fetch
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers
  
  public export
  JSType Headers where
    parents =  [ JSObject ]

    mixins =  []

namespace Request
  
  public export
  JSType Request where
    parents =  [ JSObject ]

    mixins =  [ Body ]
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr

  export
  cache : (obj : Request) -> JSIO RequestCache
  cache a =   primToJSIO "cache" $ prim__cache (toJS a)
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : Request) -> JSIO RequestCredentials
  credentials a =   primToJSIO "credentials" $ prim__credentials (toJS a)
  
  %foreign "browser:lambda:x=>x.destination"
  prim__destination : AnyPtr -> PrimIO AnyPtr

  export
  destination : (obj : Request) -> JSIO RequestDestination
  destination a =   primToJSIO "destination" $ prim__destination (toJS a)
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : Request) -> JSIO Headers
  headers a =   primToJSIO "headers" $ prim__headers (toJS a)
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : Request) -> JSIO String
  integrity a =   primToJSIO "integrity" $ prim__integrity (toJS a)
  
  %foreign "browser:lambda:x=>x.isHistoryNavigation"
  prim__isHistoryNavigation : AnyPtr -> PrimIO AnyPtr

  export
  isHistoryNavigation : (obj : Request) -> JSIO Bool
  isHistoryNavigation a =
    primToJSIO "isHistoryNavigation" $ prim__isHistoryNavigation (toJS a)
  
  %foreign "browser:lambda:x=>x.isReloadNavigation"
  prim__isReloadNavigation : AnyPtr -> PrimIO AnyPtr

  export
  isReloadNavigation : (obj : Request) -> JSIO Bool
  isReloadNavigation a =
    primToJSIO "isReloadNavigation" $ prim__isReloadNavigation (toJS a)
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr

  export
  keepalive : (obj : Request) -> JSIO Bool
  keepalive a =   primToJSIO "keepalive" $ prim__keepalive (toJS a)
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : Request) -> JSIO String
  method a =   primToJSIO "method" $ prim__method (toJS a)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : Request) -> JSIO RequestMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr

  export
  redirect : (obj : Request) -> JSIO RequestRedirect
  redirect a =   primToJSIO "redirect" $ prim__redirect (toJS a)
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : Request) -> JSIO String
  referrer a =   primToJSIO "referrer" $ prim__referrer (toJS a)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : Request) -> JSIO ReferrerPolicy
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : Request) -> JSIO AbortSignal
  signal a =   primToJSIO "signal" $ prim__signal (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Request) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)

namespace Response
  
  public export
  JSType Response where
    parents =  [ JSObject ]

    mixins =  [ Body ]
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : Response) -> JSIO Headers
  headers a =   primToJSIO "headers" $ prim__headers (toJS a)
  
  %foreign "browser:lambda:x=>x.ok"
  prim__ok : AnyPtr -> PrimIO AnyPtr

  export
  ok : (obj : Response) -> JSIO Bool
  ok a =   primToJSIO "ok" $ prim__ok (toJS a)
  
  %foreign "browser:lambda:x=>x.redirected"
  prim__redirected : AnyPtr -> PrimIO AnyPtr

  export
  redirected : (obj : Response) -> JSIO Bool
  redirected a =   primToJSIO "redirected" $ prim__redirected (toJS a)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : Response) -> JSIO UInt16
  status a =   primToJSIO "status" $ prim__status (toJS a)
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : Response) -> JSIO String
  statusText a =   primToJSIO "statusText" $ prim__statusText (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Response) -> JSIO ResponseType
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Response) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : Body) -> JSIO (Maybe ReadableStream)
  body a =   primToJSIO "body" $ prim__body (toJS a)
  
  %foreign "browser:lambda:x=>x.bodyUsed"
  prim__bodyUsed : AnyPtr -> PrimIO AnyPtr

  export
  bodyUsed : (obj : Body) -> JSIO Bool
  bodyUsed a =   primToJSIO "bodyUsed" $ prim__bodyUsed (toJS a)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  public export
  JSType RequestInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : RequestInit) -> JSIO (Maybe BodyInit)
  body a =   primToJSIO "body" $ prim__body (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.body  = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBody : (obj : RequestInit) -> (v : Maybe BodyInit) -> JSIO ()
  setBody a b =   primToJSIO "setBody" $ prim__setBody (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr

  export
  cache : (obj : RequestInit) -> JSIO RequestCache
  cache a =   primToJSIO "cache" $ prim__cache (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cache  = v}"
  prim__setCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCache : (obj : RequestInit) -> (v : RequestCache) -> JSIO ()
  setCache a b =   primToJSIO "setCache" $ prim__setCache (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : RequestInit) -> JSIO RequestCredentials
  credentials a =   primToJSIO "credentials" $ prim__credentials (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : RequestInit) -> (v : RequestCredentials) -> JSIO ()
  setCredentials a b =
    primToJSIO "setCredentials" $ prim__setCredentials (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : RequestInit) -> JSIO HeadersInit
  headers a =   primToJSIO "headers" $ prim__headers (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : RequestInit) -> (v : HeadersInit) -> JSIO ()
  setHeaders a b =
    primToJSIO "setHeaders" $ prim__setHeaders (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : RequestInit) -> JSIO String
  integrity a =   primToJSIO "integrity" $ prim__integrity (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : RequestInit) -> (v : String) -> JSIO ()
  setIntegrity a b =
    primToJSIO "setIntegrity" $ prim__setIntegrity (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr

  export
  keepalive : (obj : RequestInit) -> JSIO Bool
  keepalive a =   primToJSIO "keepalive" $ prim__keepalive (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.keepalive  = v}"
  prim__setKeepalive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKeepalive : (obj : RequestInit) -> (v : Bool) -> JSIO ()
  setKeepalive a b =
    primToJSIO "setKeepalive" $ prim__setKeepalive (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : RequestInit) -> JSIO String
  method a =   primToJSIO "method" $ prim__method (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.method  = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMethod : (obj : RequestInit) -> (v : String) -> JSIO ()
  setMethod a b =   primToJSIO "setMethod" $ prim__setMethod (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : RequestInit) -> JSIO RequestMode
  mode a =   primToJSIO "mode" $ prim__mode (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : RequestInit) -> (v : RequestMode) -> JSIO ()
  setMode a b =   primToJSIO "setMode" $ prim__setMode (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr

  export
  redirect : (obj : RequestInit) -> JSIO RequestRedirect
  redirect a =   primToJSIO "redirect" $ prim__redirect (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.redirect  = v}"
  prim__setRedirect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRedirect : (obj : RequestInit) -> (v : RequestRedirect) -> JSIO ()
  setRedirect a b =
    primToJSIO "setRedirect" $ prim__setRedirect (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : RequestInit) -> JSIO String
  referrer a =   primToJSIO "referrer" $ prim__referrer (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrer  = v}"
  prim__setReferrer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrer : (obj : RequestInit) -> (v : String) -> JSIO ()
  setReferrer a b =
    primToJSIO "setReferrer" $ prim__setReferrer (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : RequestInit) -> JSIO ReferrerPolicy
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : RequestInit) -> (v : ReferrerPolicy) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : RequestInit) -> JSIO (Maybe AbortSignal)
  signal a =   primToJSIO "signal" $ prim__signal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : RequestInit) -> (v : Maybe AbortSignal) -> JSIO ()
  setSignal a b =   primToJSIO "setSignal" $ prim__setSignal (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr

  export
  window : (obj : RequestInit) -> JSIO Any
  window a =   primToJSIO "window" $ prim__window (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.window  = v}"
  prim__setWindow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWindow : (obj : RequestInit) -> (v : Any) -> JSIO ()
  setWindow a b =   primToJSIO "setWindow" $ prim__setWindow (toJS a) (toJS b)

namespace ResponseInit
  
  public export
  JSType ResponseInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : ResponseInit) -> JSIO HeadersInit
  headers a =   primToJSIO "headers" $ prim__headers (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : ResponseInit) -> (v : HeadersInit) -> JSIO ()
  setHeaders a b =
    primToJSIO "setHeaders" $ prim__setHeaders (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : ResponseInit) -> JSIO UInt16
  status a =   primToJSIO "status" $ prim__status (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.status  = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatus : (obj : ResponseInit) -> (v : UInt16) -> JSIO ()
  setStatus a b =   primToJSIO "setStatus" $ prim__setStatus (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : ResponseInit) -> JSIO String
  statusText a =   primToJSIO "statusText" $ prim__statusText (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.statusText  = v}"
  prim__setStatusText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatusText : (obj : ResponseInit) -> (v : String) -> JSIO ()
  setStatusText a b =
    primToJSIO "setStatusText" $ prim__setStatusText (toJS a) (toJS b)

