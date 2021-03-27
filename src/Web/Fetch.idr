module Web.Fetch
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers
  
  public export
  JSVal Headers where
    parents =  [ JSObject ]

    mixins =  []

namespace Request
  
  public export
  JSVal Request where
    parents =  [ JSObject ]

    mixins =  [ Body ]
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr

  export
  cache : (obj : Request) -> IO RequestCache
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : Request) -> IO RequestCredentials
  
  %foreign "browser:lambda:x=>x.destination"
  prim__destination : AnyPtr -> PrimIO AnyPtr

  export
  destination : (obj : Request) -> IO RequestDestination
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : Request) -> IO Headers
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : Request) -> IO String
  
  %foreign "browser:lambda:x=>x.isHistoryNavigation"
  prim__isHistoryNavigation : AnyPtr -> PrimIO AnyPtr

  export
  isHistoryNavigation : (obj : Request) -> IO Bool
  
  %foreign "browser:lambda:x=>x.isReloadNavigation"
  prim__isReloadNavigation : AnyPtr -> PrimIO AnyPtr

  export
  isReloadNavigation : (obj : Request) -> IO Bool
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr

  export
  keepalive : (obj : Request) -> IO Bool
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : Request) -> IO String
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : Request) -> IO RequestMode
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr

  export
  redirect : (obj : Request) -> IO RequestRedirect
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : Request) -> IO String
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : Request) -> IO ReferrerPolicy
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : Request) -> IO AbortSignal
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Request) -> IO String

namespace Response
  
  public export
  JSVal Response where
    parents =  [ JSObject ]

    mixins =  [ Body ]
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : Response) -> IO Headers
  
  %foreign "browser:lambda:x=>x.ok"
  prim__ok : AnyPtr -> PrimIO AnyPtr

  export
  ok : (obj : Response) -> IO Bool
  
  %foreign "browser:lambda:x=>x.redirected"
  prim__redirected : AnyPtr -> PrimIO AnyPtr

  export
  redirected : (obj : Response) -> IO Bool
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : Response) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : Response) -> IO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Response) -> IO ResponseType
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Response) -> IO String

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : Body) -> IO (Maybe ReadableStream)
  
  %foreign "browser:lambda:x=>x.bodyUsed"
  prim__bodyUsed : AnyPtr -> PrimIO AnyPtr

  export
  bodyUsed : (obj : Body) -> IO Bool

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  public export
  JSVal RequestInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  export
  body : (obj : RequestInit) -> IO (Maybe BodyInit)

  %foreign "browser:lambda:(x,v)=>{x.body  = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBody : (obj : RequestInit) -> (v : Maybe BodyInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr

  export
  cache : (obj : RequestInit) -> IO RequestCache

  %foreign "browser:lambda:(x,v)=>{x.cache  = v}"
  prim__setCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCache : (obj : RequestInit) -> (v : RequestCache) -> IO ()
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  export
  credentials : (obj : RequestInit) -> IO RequestCredentials

  %foreign "browser:lambda:(x,v)=>{x.credentials  = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCredentials : (obj : RequestInit) -> (v : RequestCredentials) -> IO ()
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : RequestInit) -> IO HeadersInit

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : RequestInit) -> (v : HeadersInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  export
  integrity : (obj : RequestInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.integrity  = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIntegrity : (obj : RequestInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr

  export
  keepalive : (obj : RequestInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.keepalive  = v}"
  prim__setKeepalive : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKeepalive : (obj : RequestInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : RequestInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.method  = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMethod : (obj : RequestInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  export
  mode : (obj : RequestInit) -> IO RequestMode

  %foreign "browser:lambda:(x,v)=>{x.mode  = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMode : (obj : RequestInit) -> (v : RequestMode) -> IO ()
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr

  export
  redirect : (obj : RequestInit) -> IO RequestRedirect

  %foreign "browser:lambda:(x,v)=>{x.redirect  = v}"
  prim__setRedirect : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRedirect : (obj : RequestInit) -> (v : RequestRedirect) -> IO ()
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  export
  referrer : (obj : RequestInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.referrer  = v}"
  prim__setReferrer : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrer : (obj : RequestInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : RequestInit) -> IO ReferrerPolicy

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : RequestInit) -> (v : ReferrerPolicy) -> IO ()
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  export
  signal : (obj : RequestInit) -> IO (Maybe AbortSignal)

  %foreign "browser:lambda:(x,v)=>{x.signal  = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSignal : (obj : RequestInit) -> (v : Maybe AbortSignal) -> IO ()
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr

  export
  window : (obj : RequestInit) -> IO JSAny

  %foreign "browser:lambda:(x,v)=>{x.window  = v}"
  prim__setWindow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWindow : (obj : RequestInit) -> (v : JSAny) -> IO ()

namespace ResponseInit
  
  public export
  JSVal ResponseInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  export
  headers : (obj : ResponseInit) -> IO HeadersInit

  %foreign "browser:lambda:(x,v)=>{x.headers  = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaders : (obj : ResponseInit) -> (v : HeadersInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : ResponseInit) -> IO UInt16

  %foreign "browser:lambda:(x,v)=>{x.status  = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatus : (obj : ResponseInit) -> (v : UInt16) -> IO ()
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : ResponseInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.statusText  = v}"
  prim__setStatusText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStatusText : (obj : ResponseInit) -> (v : String) -> IO ()

