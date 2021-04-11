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
  new :  (init : Optional (NS I [ Array (Array ByteString)
                                , Record ByteString ByteString
                                ]))
      -> JSIO Headers
  new a = primJS $ Headers.prim__new (toFFI a)

  export
  new' : JSIO Headers
  new' = new Undef
  
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
  get : (obj : Headers) -> (name : ByteString) -> JSIO (Maybe ByteString)
  get a b = tryJS "Headers.get" $ Headers.prim__get a b
  
  export
  has : (obj : Headers) -> (name : ByteString) -> JSIO Bool
  has a b = tryJS "Headers.has" $ Headers.prim__has a b
  
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
  new :  (input : NS I [ Request , String ])
      -> (init : Optional RequestInit)
      -> JSIO Request
  new a b = primJS $ Request.prim__new (toFFI a) (toFFI b)

  export
  new' : (input : NS I [ Request , String ]) -> JSIO Request
  new' a = new a Undef
  
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
  isHistoryNavigation a = tryJS "Request.isHistoryNavigation" $ Request.prim__isHistoryNavigation a
  
  export
  isReloadNavigation : (obj : Request) -> JSIO Bool
  isReloadNavigation a = tryJS "Request.isReloadNavigation" $ Request.prim__isReloadNavigation a
  
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
  referrerPolicy a = tryJS "Request.referrerPolicy" $ Request.prim__referrerPolicy a
  
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
  new :  (body : Optional (Maybe (NS I [ ReadableStream
                                       , Blob
                                       , Int8Array
                                       , Int16Array
                                       , Int32Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8ClampedArray
                                       , Float32Array
                                       , Float64Array
                                       , DataView
                                       , ArrayBuffer
                                       , FormData
                                       , URLSearchParams
                                       , String
                                       ])))
      -> (init : Optional ResponseInit)
      -> JSIO Response
  new a b = primJS $ Response.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO Response
  new' = new Undef Undef
  
  export
  error : JSIO Response
  error = primJS $ Response.prim__error 
  
  export
  redirect : (url : String) -> (status : Optional UInt16) -> JSIO Response
  redirect a b = primJS $ Response.prim__redirect a (toFFI b)

  export
  redirect' : (url : String) -> JSIO Response
  redirect' a = redirect a Undef
  
  export
  headers : (obj : Response) -> JSIO Headers
  headers a = primJS $ Response.prim__headers a
  
  export
  ok : (obj : Response) -> JSIO Bool
  ok a = tryJS "Response.ok" $ Response.prim__ok a
  
  export
  redirected : (obj : Response) -> JSIO Bool
  redirected a = tryJS "Response.redirected" $ Response.prim__redirected a
  
  export
  status : (obj : Response) -> JSIO UInt16
  status a = primJS $ Response.prim__status a
  
  export
  statusText : (obj : Response) -> JSIO ByteString
  statusText a = primJS $ Response.prim__statusText a
  
  export
  type : (obj : Response) -> JSIO ResponseType
  type a = tryJS "Response.type" $ Response.prim__type a
  
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
  body : (obj : Body) -> JSIO (Maybe ReadableStream)
  body a = tryJS "Body.body" $ Body.prim__body a
  
  export
  bodyUsed : (obj : Body) -> JSIO Bool
  bodyUsed a = tryJS "Body.bodyUsed" $ Body.prim__bodyUsed a
  
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
  new :  (method : Optional ByteString)
      -> (headers : Optional (NS I [ Array (Array ByteString)
                                   , Record ByteString ByteString
                                   ]))
      -> (body : Optional (Maybe (NS I [ ReadableStream
                                       , Blob
                                       , Int8Array
                                       , Int16Array
                                       , Int32Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8Array
                                       , UInt8ClampedArray
                                       , Float32Array
                                       , Float64Array
                                       , DataView
                                       , ArrayBuffer
                                       , FormData
                                       , URLSearchParams
                                       , String
                                       ])))
      -> (referrer : Optional String)
      -> (referrerPolicy : Optional ReferrerPolicy)
      -> (mode : Optional RequestMode)
      -> (credentials : Optional RequestCredentials)
      -> (cache : Optional RequestCache)
      -> (redirect : Optional RequestRedirect)
      -> (integrity : Optional String)
      -> (keepalive : Optional Bool)
      -> (signal : Optional (Maybe AbortSignal))
      -> (window : Optional AnyPtr)
      -> JSIO RequestInit
  new a b c d e f g h i j k l m = primJS $ RequestInit.prim__new (toFFI a)
                                                                 (toFFI b)
                                                                 (toFFI c)
                                                                 (toFFI d)
                                                                 (toFFI e)
                                                                 (toFFI f)
                                                                 (toFFI g)
                                                                 (toFFI h)
                                                                 (toFFI i)
                                                                 (toFFI j)
                                                                 (toFFI k)
                                                                 (toFFI l)
                                                                 (toFFI m)

  export
  new' : JSIO RequestInit
  new' = new Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
             Undef
  
  export
  body :  (obj : RequestInit)
       -> JSIO $ Optional (Maybe (Union16 ReadableStream
                                          Blob
                                          Int8Array
                                          Int16Array
                                          Int32Array
                                          UInt8Array
                                          UInt8Array
                                          UInt8Array
                                          UInt8ClampedArray
                                          Float32Array
                                          Float64Array
                                          DataView
                                          ArrayBuffer
                                          FormData
                                          URLSearchParams
                                          String))
  body a = tryJS "RequestInit.body" $ RequestInit.prim__body a
  
  export
  setBody :  (obj : RequestInit)
          -> (value : Optional (Maybe (NS I [ ReadableStream
                                            , Blob
                                            , Int8Array
                                            , Int16Array
                                            , Int32Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8Array
                                            , UInt8ClampedArray
                                            , Float32Array
                                            , Float64Array
                                            , DataView
                                            , ArrayBuffer
                                            , FormData
                                            , URLSearchParams
                                            , String
                                            ])))
          -> JSIO ()
  setBody a b = primJS $ RequestInit.prim__setBody a (toFFI b)

  export
  setBody' : (obj : RequestInit) -> JSIO ()
  setBody' a = setBody a Undef
  
  export
  cache : (obj : RequestInit) -> JSIO $ Optional RequestCache
  cache a = tryJS "RequestInit.cache" $ RequestInit.prim__cache a
  
  export
  setCache : (obj : RequestInit) -> (value : Optional RequestCache) -> JSIO ()
  setCache a b = primJS $ RequestInit.prim__setCache a (toFFI b)

  export
  setCache' : (obj : RequestInit) -> JSIO ()
  setCache' a = setCache a Undef
  
  export
  credentials : (obj : RequestInit) -> JSIO $ Optional RequestCredentials
  credentials a = tryJS "RequestInit.credentials" $ RequestInit.prim__credentials a
  
  export
  setCredentials :  (obj : RequestInit)
                 -> (value : Optional RequestCredentials)
                 -> JSIO ()
  setCredentials a b = primJS $ RequestInit.prim__setCredentials a (toFFI b)

  export
  setCredentials' : (obj : RequestInit) -> JSIO ()
  setCredentials' a = setCredentials a Undef
  
  export
  headers :  (obj : RequestInit)
          -> JSIO $ Optional (Union2 (Array (Array ByteString))
                                     (Record ByteString ByteString))
  headers a = tryJS "RequestInit.headers" $ RequestInit.prim__headers a
  
  export
  setHeaders :  (obj : RequestInit)
             -> (value : Optional (NS I [ Array (Array ByteString)
                                        , Record ByteString ByteString
                                        ]))
             -> JSIO ()
  setHeaders a b = primJS $ RequestInit.prim__setHeaders a (toFFI b)

  export
  setHeaders' : (obj : RequestInit) -> JSIO ()
  setHeaders' a = setHeaders a Undef
  
  export
  integrity : (obj : RequestInit) -> JSIO $ Optional String
  integrity a = tryJS "RequestInit.integrity" $ RequestInit.prim__integrity a
  
  export
  setIntegrity : (obj : RequestInit) -> (value : Optional String) -> JSIO ()
  setIntegrity a b = primJS $ RequestInit.prim__setIntegrity a (toFFI b)

  export
  setIntegrity' : (obj : RequestInit) -> JSIO ()
  setIntegrity' a = setIntegrity a Undef
  
  export
  keepalive : (obj : RequestInit) -> JSIO $ Optional Bool
  keepalive a = tryJS "RequestInit.keepalive" $ RequestInit.prim__keepalive a
  
  export
  setKeepalive : (obj : RequestInit) -> (value : Optional Bool) -> JSIO ()
  setKeepalive a b = primJS $ RequestInit.prim__setKeepalive a (toFFI b)

  export
  setKeepalive' : (obj : RequestInit) -> JSIO ()
  setKeepalive' a = setKeepalive a Undef
  
  export
  method : (obj : RequestInit) -> JSIO $ Optional ByteString
  method a = tryJS "RequestInit.method" $ RequestInit.prim__method a
  
  export
  setMethod : (obj : RequestInit) -> (value : Optional ByteString) -> JSIO ()
  setMethod a b = primJS $ RequestInit.prim__setMethod a (toFFI b)

  export
  setMethod' : (obj : RequestInit) -> JSIO ()
  setMethod' a = setMethod a Undef
  
  export
  mode : (obj : RequestInit) -> JSIO $ Optional RequestMode
  mode a = tryJS "RequestInit.mode" $ RequestInit.prim__mode a
  
  export
  setMode : (obj : RequestInit) -> (value : Optional RequestMode) -> JSIO ()
  setMode a b = primJS $ RequestInit.prim__setMode a (toFFI b)

  export
  setMode' : (obj : RequestInit) -> JSIO ()
  setMode' a = setMode a Undef
  
  export
  redirect : (obj : RequestInit) -> JSIO $ Optional RequestRedirect
  redirect a = tryJS "RequestInit.redirect" $ RequestInit.prim__redirect a
  
  export
  setRedirect :  (obj : RequestInit)
              -> (value : Optional RequestRedirect)
              -> JSIO ()
  setRedirect a b = primJS $ RequestInit.prim__setRedirect a (toFFI b)

  export
  setRedirect' : (obj : RequestInit) -> JSIO ()
  setRedirect' a = setRedirect a Undef
  
  export
  referrer : (obj : RequestInit) -> JSIO $ Optional String
  referrer a = tryJS "RequestInit.referrer" $ RequestInit.prim__referrer a
  
  export
  setReferrer : (obj : RequestInit) -> (value : Optional String) -> JSIO ()
  setReferrer a b = primJS $ RequestInit.prim__setReferrer a (toFFI b)

  export
  setReferrer' : (obj : RequestInit) -> JSIO ()
  setReferrer' a = setReferrer a Undef
  
  export
  referrerPolicy : (obj : RequestInit) -> JSIO $ Optional ReferrerPolicy
  referrerPolicy a = tryJS "RequestInit.referrerPolicy" $ RequestInit.prim__referrerPolicy a
  
  export
  setReferrerPolicy :  (obj : RequestInit)
                    -> (value : Optional ReferrerPolicy)
                    -> JSIO ()
  setReferrerPolicy a b = primJS $ RequestInit.prim__setReferrerPolicy a
                                                                       (toFFI b)

  export
  setReferrerPolicy' : (obj : RequestInit) -> JSIO ()
  setReferrerPolicy' a = setReferrerPolicy a Undef
  
  export
  signal : (obj : RequestInit) -> JSIO $ Optional (Maybe AbortSignal)
  signal a = tryJS "RequestInit.signal" $ RequestInit.prim__signal a
  
  export
  setSignal :  (obj : RequestInit)
            -> (value : Optional (Maybe AbortSignal))
            -> JSIO ()
  setSignal a b = primJS $ RequestInit.prim__setSignal a (toFFI b)

  export
  setSignal' : (obj : RequestInit) -> JSIO ()
  setSignal' a = setSignal a Undef
  
  export
  window : (obj : RequestInit) -> JSIO $ Optional AnyPtr
  window a = tryJS "RequestInit.window" $ RequestInit.prim__window a
  
  export
  setWindow : (obj : RequestInit) -> (value : Optional AnyPtr) -> JSIO ()
  setWindow a b = primJS $ RequestInit.prim__setWindow a (toFFI b)

  export
  setWindow' : (obj : RequestInit) -> JSIO ()
  setWindow' a = setWindow a Undef

namespace ResponseInit
  
  public export
  JSType ResponseInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (status : Optional UInt16)
      -> (statusText : Optional ByteString)
      -> (headers : Optional (NS I [ Array (Array ByteString)
                                   , Record ByteString ByteString
                                   ]))
      -> JSIO ResponseInit
  new a b c = primJS $ ResponseInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO ResponseInit
  new' = new Undef Undef Undef
  
  export
  headers :  (obj : ResponseInit)
          -> JSIO $ Optional (Union2 (Array (Array ByteString))
                                     (Record ByteString ByteString))
  headers a = tryJS "ResponseInit.headers" $ ResponseInit.prim__headers a
  
  export
  setHeaders :  (obj : ResponseInit)
             -> (value : Optional (NS I [ Array (Array ByteString)
                                        , Record ByteString ByteString
                                        ]))
             -> JSIO ()
  setHeaders a b = primJS $ ResponseInit.prim__setHeaders a (toFFI b)

  export
  setHeaders' : (obj : ResponseInit) -> JSIO ()
  setHeaders' a = setHeaders a Undef
  
  export
  status : (obj : ResponseInit) -> JSIO $ Optional UInt16
  status a = tryJS "ResponseInit.status" $ ResponseInit.prim__status a
  
  export
  setStatus : (obj : ResponseInit) -> (value : Optional UInt16) -> JSIO ()
  setStatus a b = primJS $ ResponseInit.prim__setStatus a (toFFI b)

  export
  setStatus' : (obj : ResponseInit) -> JSIO ()
  setStatus' a = setStatus a Undef
  
  export
  statusText : (obj : ResponseInit) -> JSIO $ Optional ByteString
  statusText a = tryJS "ResponseInit.statusText" $ ResponseInit.prim__statusText a
  
  export
  setStatusText :  (obj : ResponseInit)
                -> (value : Optional ByteString)
                -> JSIO ()
  setStatusText a b = primJS $ ResponseInit.prim__setStatusText a (toFFI b)

  export
  setStatusText' : (obj : ResponseInit) -> JSIO ()
  setStatusText' a = setStatusText a Undef
