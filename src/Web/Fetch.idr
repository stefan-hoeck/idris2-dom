module Web.Fetch
 
import JS
import Web.Internal.FetchPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers
  
  public export
  JSType Headers where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (init : UndefOr HeadersInit) -> JSIO Headers
  new a = primJS $ Headers.prim__new a
  
  export
  append :  (obj : Headers)
         -> (name : ByteString)
         -> (value : ByteString)
         -> JSIO ()
  append a b c = primJS $ Headers.prim__append a b c
  
  export
  delete : (obj : Headers) -> (name : ByteString) -> JSIO ()
  delete a b = primJS $ Headers.prim__delete a b
  
  export
  get : (obj : Headers) -> (name : ByteString) -> JSIO (Nullable ByteString)
  get a b = primJS $ Headers.prim__get a b
  
  export
  has : (obj : Headers) -> (name : ByteString) -> JSIO Boolean
  has a b = primJS $ Headers.prim__has a b
  
  export
  set :  (obj : Headers)
      -> (name : ByteString)
      -> (value : ByteString)
      -> JSIO ()
  set a b c = primJS $ Headers.prim__set a b c

namespace Request
  
  public export
  JSType Request where
    parents =  [ Object ]

    mixins =  [ Body ]
  
  export
  new : (input : RequestInfo) -> (init : UndefOr RequestInit) -> JSIO Request
  new a b = primJS $ Request.prim__new a b
  
  export
  cache : (obj : Request) -> JSIO RequestCache
  cache a = primJS $ Request.prim__cache a
  
  export
  credentials : (obj : Request) -> JSIO RequestCredentials
  credentials a = primJS $ Request.prim__credentials a
  
  export
  destination : (obj : Request) -> JSIO RequestDestination
  destination a = primJS $ Request.prim__destination a
  
  export
  headers : (obj : Request) -> JSIO Headers
  headers a = primJS $ Request.prim__headers a
  
  export
  integrity : (obj : Request) -> JSIO String
  integrity a = primJS $ Request.prim__integrity a
  
  export
  isHistoryNavigation : (obj : Request) -> JSIO Boolean
  isHistoryNavigation a = primJS $ Request.prim__isHistoryNavigation a
  
  export
  isReloadNavigation : (obj : Request) -> JSIO Boolean
  isReloadNavigation a = primJS $ Request.prim__isReloadNavigation a
  
  export
  keepalive : (obj : Request) -> JSIO Boolean
  keepalive a = primJS $ Request.prim__keepalive a
  
  export
  method : (obj : Request) -> JSIO ByteString
  method a = primJS $ Request.prim__method a
  
  export
  mode : (obj : Request) -> JSIO RequestMode
  mode a = primJS $ Request.prim__mode a
  
  export
  redirect : (obj : Request) -> JSIO RequestRedirect
  redirect a = primJS $ Request.prim__redirect a
  
  export
  referrer : (obj : Request) -> JSIO String
  referrer a = primJS $ Request.prim__referrer a
  
  export
  referrerPolicy : (obj : Request) -> JSIO ReferrerPolicy
  referrerPolicy a = primJS $ Request.prim__referrerPolicy a
  
  export
  signal : (obj : Request) -> JSIO AbortSignal
  signal a = primJS $ Request.prim__signal a
  
  export
  url : (obj : Request) -> JSIO String
  url a = primJS $ Request.prim__url a
  
  export
  clone : (obj : Request) -> JSIO Request
  clone a = primJS $ Request.prim__clone a

namespace Response
  
  public export
  JSType Response where
    parents =  [ Object ]

    mixins =  [ Body ]
  
  export
  new :  (body : UndefOr (Nullable BodyInit))
      -> (init : UndefOr ResponseInit)
      -> JSIO Response
  new a b = primJS $ Response.prim__new a b
  
  export
  headers : (obj : Response) -> JSIO Headers
  headers a = primJS $ Response.prim__headers a
  
  export
  ok : (obj : Response) -> JSIO Boolean
  ok a = primJS $ Response.prim__ok a
  
  export
  redirected : (obj : Response) -> JSIO Boolean
  redirected a = primJS $ Response.prim__redirected a
  
  export
  status : (obj : Response) -> JSIO UInt16
  status a = primJS $ Response.prim__status a
  
  export
  statusText : (obj : Response) -> JSIO ByteString
  statusText a = primJS $ Response.prim__statusText a
  
  export
  type : (obj : Response) -> JSIO ResponseType
  type a = primJS $ Response.prim__type a
  
  export
  url : (obj : Response) -> JSIO String
  url a = primJS $ Response.prim__url a
  
  export
  clone : (obj : Response) -> JSIO Response
  clone a = primJS $ Response.prim__clone a

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  export
  body : (obj : Body) -> JSIO (Nullable ReadableStream)
  body a = primJS $ Body.prim__body a
  
  export
  bodyUsed : (obj : Body) -> JSIO Boolean
  bodyUsed a = primJS $ Body.prim__bodyUsed a
  
  export
  arrayBuffer : (obj : Body) -> JSIO (Promise ArrayBuffer)
  arrayBuffer a = primJS $ Body.prim__arrayBuffer a
  
  export
  blob : (obj : Body) -> JSIO (Promise Blob)
  blob a = primJS $ Body.prim__blob a
  
  export
  formData : (obj : Body) -> JSIO (Promise FormData)
  formData a = primJS $ Body.prim__formData a
  
  export
  json : (obj : Body) -> JSIO (Promise AnyPtr)
  json a = primJS $ Body.prim__json a
  
  export
  text : (obj : Body) -> JSIO (Promise String)
  text a = primJS $ Body.prim__text a

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  public export
  JSType RequestInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (method : UndefOr ByteString)
      -> (headers : UndefOr HeadersInit)
      -> (body : UndefOr (Nullable BodyInit))
      -> (referrer : UndefOr String)
      -> (referrerPolicy : UndefOr ReferrerPolicy)
      -> (mode : UndefOr RequestMode)
      -> (credentials : UndefOr RequestCredentials)
      -> (cache : UndefOr RequestCache)
      -> (redirect : UndefOr RequestRedirect)
      -> (integrity : UndefOr String)
      -> (keepalive : UndefOr Boolean)
      -> (signal : UndefOr (Nullable AbortSignal))
      -> (window : UndefOr AnyPtr)
      -> JSIO RequestInit
  new a b c d e f g h i j k l m = primJS $ RequestInit.prim__new a
                                                                 b
                                                                 c
                                                                 d
                                                                 e
                                                                 f
                                                                 g
                                                                 h
                                                                 i
                                                                 j
                                                                 k
                                                                 l
                                                                 m
  
  export
  body : (obj : RequestInit) -> JSIO (UndefOr (Nullable BodyInit))
  body a = primJS $ RequestInit.prim__body a
  
  export
  setBody :  (obj : RequestInit)
          -> (value : UndefOr (Nullable BodyInit))
          -> JSIO ()
  setBody a b = primJS $ RequestInit.prim__setBody a b
  
  export
  cache : (obj : RequestInit) -> JSIO (UndefOr RequestCache)
  cache a = primJS $ RequestInit.prim__cache a
  
  export
  setCache : (obj : RequestInit) -> (value : UndefOr RequestCache) -> JSIO ()
  setCache a b = primJS $ RequestInit.prim__setCache a b
  
  export
  credentials : (obj : RequestInit) -> JSIO (UndefOr RequestCredentials)
  credentials a = primJS $ RequestInit.prim__credentials a
  
  export
  setCredentials :  (obj : RequestInit)
                 -> (value : UndefOr RequestCredentials)
                 -> JSIO ()
  setCredentials a b = primJS $ RequestInit.prim__setCredentials a b
  
  export
  headers : (obj : RequestInit) -> JSIO (UndefOr HeadersInit)
  headers a = primJS $ RequestInit.prim__headers a
  
  export
  setHeaders : (obj : RequestInit) -> (value : UndefOr HeadersInit) -> JSIO ()
  setHeaders a b = primJS $ RequestInit.prim__setHeaders a b
  
  export
  integrity : (obj : RequestInit) -> JSIO (UndefOr String)
  integrity a = primJS $ RequestInit.prim__integrity a
  
  export
  setIntegrity : (obj : RequestInit) -> (value : UndefOr String) -> JSIO ()
  setIntegrity a b = primJS $ RequestInit.prim__setIntegrity a b
  
  export
  keepalive : (obj : RequestInit) -> JSIO (UndefOr Boolean)
  keepalive a = primJS $ RequestInit.prim__keepalive a
  
  export
  setKeepalive : (obj : RequestInit) -> (value : UndefOr Boolean) -> JSIO ()
  setKeepalive a b = primJS $ RequestInit.prim__setKeepalive a b
  
  export
  method : (obj : RequestInit) -> JSIO (UndefOr ByteString)
  method a = primJS $ RequestInit.prim__method a
  
  export
  setMethod : (obj : RequestInit) -> (value : UndefOr ByteString) -> JSIO ()
  setMethod a b = primJS $ RequestInit.prim__setMethod a b
  
  export
  mode : (obj : RequestInit) -> JSIO (UndefOr RequestMode)
  mode a = primJS $ RequestInit.prim__mode a
  
  export
  setMode : (obj : RequestInit) -> (value : UndefOr RequestMode) -> JSIO ()
  setMode a b = primJS $ RequestInit.prim__setMode a b
  
  export
  redirect : (obj : RequestInit) -> JSIO (UndefOr RequestRedirect)
  redirect a = primJS $ RequestInit.prim__redirect a
  
  export
  setRedirect :  (obj : RequestInit)
              -> (value : UndefOr RequestRedirect)
              -> JSIO ()
  setRedirect a b = primJS $ RequestInit.prim__setRedirect a b
  
  export
  referrer : (obj : RequestInit) -> JSIO (UndefOr String)
  referrer a = primJS $ RequestInit.prim__referrer a
  
  export
  setReferrer : (obj : RequestInit) -> (value : UndefOr String) -> JSIO ()
  setReferrer a b = primJS $ RequestInit.prim__setReferrer a b
  
  export
  referrerPolicy : (obj : RequestInit) -> JSIO (UndefOr ReferrerPolicy)
  referrerPolicy a = primJS $ RequestInit.prim__referrerPolicy a
  
  export
  setReferrerPolicy :  (obj : RequestInit)
                    -> (value : UndefOr ReferrerPolicy)
                    -> JSIO ()
  setReferrerPolicy a b = primJS $ RequestInit.prim__setReferrerPolicy a b
  
  export
  signal : (obj : RequestInit) -> JSIO (UndefOr (Nullable AbortSignal))
  signal a = primJS $ RequestInit.prim__signal a
  
  export
  setSignal :  (obj : RequestInit)
            -> (value : UndefOr (Nullable AbortSignal))
            -> JSIO ()
  setSignal a b = primJS $ RequestInit.prim__setSignal a b
  
  export
  window : (obj : RequestInit) -> JSIO (UndefOr AnyPtr)
  window a = primJS $ RequestInit.prim__window a
  
  export
  setWindow : (obj : RequestInit) -> (value : UndefOr AnyPtr) -> JSIO ()
  setWindow a b = primJS $ RequestInit.prim__setWindow a b

namespace ResponseInit
  
  public export
  JSType ResponseInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (status : UndefOr UInt16)
      -> (statusText : UndefOr ByteString)
      -> (headers : UndefOr HeadersInit)
      -> JSIO ResponseInit
  new a b c = primJS $ ResponseInit.prim__new a b c
  
  export
  headers : (obj : ResponseInit) -> JSIO (UndefOr HeadersInit)
  headers a = primJS $ ResponseInit.prim__headers a
  
  export
  setHeaders : (obj : ResponseInit) -> (value : UndefOr HeadersInit) -> JSIO ()
  setHeaders a b = primJS $ ResponseInit.prim__setHeaders a b
  
  export
  status : (obj : ResponseInit) -> JSIO (UndefOr UInt16)
  status a = primJS $ ResponseInit.prim__status a
  
  export
  setStatus : (obj : ResponseInit) -> (value : UndefOr UInt16) -> JSIO ()
  setStatus a b = primJS $ ResponseInit.prim__setStatus a b
  
  export
  statusText : (obj : ResponseInit) -> JSIO (UndefOr ByteString)
  statusText a = primJS $ ResponseInit.prim__statusText a
  
  export
  setStatusText :  (obj : ResponseInit)
                -> (value : UndefOr ByteString)
                -> JSIO ()
  setStatusText a b = primJS $ ResponseInit.prim__setStatusText a b
