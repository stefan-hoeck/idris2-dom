module Web.Raw.Fetch

import JS
import Web.Internal.FetchPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers

  export
  new :
       {default Undef init : Optional
                               (NS I
                                  [ Array (Array ByteString)
                                  , Record ByteString ByteString
                                  ])}
    -> JSIO Headers
  new = primJS $ Headers.prim__new (toFFI init)


  export
  append :
       (obj : Headers)
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
  set :
       (obj : Headers)
    -> (name : ByteString)
    -> (value : ByteString)
    -> JSIO ()
  set a b c = primJS $ Headers.prim__set a b c



namespace Request

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem RequestInit (Types t2)}
    -> (input : NS I [Request, String])
    -> {default Undef init : Optional t2}
    -> JSIO Request
  new a = primJS $ Request.prim__new (toFFI a) (optUp init)


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



namespace Response

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ResponseInit (Types t2)}
    -> {default Undef body : Optional
                               (Maybe
                                  (NS I
                                     [ ReadableStream
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
                                     ]))}
    -> {default Undef init : Optional t2}
    -> JSIO Response
  new = primJS $ Response.prim__new (toFFI body) (optUp init)


  export
  error : JSIO Response
  error = primJS $ Response.prim__error


  export
  redirect :
       (url : String)
    -> {default Undef status : Optional Bits16}
    -> JSIO Response
  redirect a = primJS $ Response.prim__redirect a (toFFI status)


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
  status : (obj : Response) -> JSIO Bits16
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
  body :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe ReadableStream)
  body a = tryJS "Body.body" $ Body.prim__body (up a)


  export
  bodyUsed :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  bodyUsed a = tryJS "Body.bodyUsed" $ Body.prim__bodyUsed (up a)


  export
  arrayBuffer :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise ArrayBuffer)
  arrayBuffer a = primJS $ Body.prim__arrayBuffer (up a)


  export
  blob :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise Blob)
  blob a = primJS $ Body.prim__blob (up a)


  export
  formData :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise FormData)
  formData a = primJS $ Body.prim__formData (up a)


  export
  json :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise AnyPtr)
  json a = primJS $ Body.prim__json (up a)


  export
  text :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Body (Types t1)}
    -> (obj : t1)
    -> JSIO (Promise String)
  text a = primJS $ Body.prim__text (up a)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit

  export
  new :
       {default Undef method : Optional ByteString}
    -> {default Undef headers : Optional
                                  (NS I
                                     [ Array (Array ByteString)
                                     , Record ByteString ByteString
                                     ])}
    -> {default Undef body : Optional
                               (Maybe
                                  (NS I
                                     [ ReadableStream
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
                                     ]))}
    -> {default Undef referrer : Optional String}
    -> {default Undef referrerPolicy : Optional ReferrerPolicy}
    -> {default Undef mode : Optional RequestMode}
    -> {default Undef credentials : Optional RequestCredentials}
    -> {default Undef cache : Optional RequestCache}
    -> {default Undef redirect : Optional RequestRedirect}
    -> {default Undef integrity : Optional String}
    -> {default Undef keepalive : Optional Bool}
    -> {default Undef signal : Optional (Maybe AbortSignal)}
    -> {default Undef window : Optional Any}
    -> JSIO RequestInit
  new = primJS $
    RequestInit.prim__new
      (toFFI method)
      (toFFI headers)
      (toFFI body)
      (toFFI referrer)
      (toFFI referrerPolicy)
      (toFFI mode)
      (toFFI credentials)
      (toFFI cache)
      (toFFI redirect)
      (toFFI integrity)
      (toFFI keepalive)
      (toFFI signal)
      (toFFI window)


  export
  body :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional (Maybe
                                   (Union16
                                      ReadableStream
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
  body v = fromUndefOrPrimNoDefault
             "RequestInit.getbody"
             prim__body
             prim__setBody
             (v :> RequestInit)


  export
  cache :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional RequestCache
  cache v = fromUndefOrPrimNoDefault
              "RequestInit.getcache"
              prim__cache
              prim__setCache
              (v :> RequestInit)


  export
  credentials :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional RequestCredentials
  credentials v = fromUndefOrPrimNoDefault
                    "RequestInit.getcredentials"
                    prim__credentials
                    prim__setCredentials
                    (v :> RequestInit)


  export
  headers :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional (Union2
                                   (Array (Array ByteString))
                                   (Record ByteString ByteString))
  headers v = fromUndefOrPrimNoDefault
                "RequestInit.getheaders"
                prim__headers
                prim__setHeaders
                (v :> RequestInit)


  export
  integrity :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional String
  integrity v = fromUndefOrPrimNoDefault
                  "RequestInit.getintegrity"
                  prim__integrity
                  prim__setIntegrity
                  (v :> RequestInit)


  export
  keepalive :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional Bool
  keepalive v = fromUndefOrPrimNoDefault
                  "RequestInit.getkeepalive"
                  prim__keepalive
                  prim__setKeepalive
                  (v :> RequestInit)


  export
  method :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional ByteString
  method v = fromUndefOrPrimNoDefault
               "RequestInit.getmethod"
               prim__method
               prim__setMethod
               (v :> RequestInit)


  export
  mode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional RequestMode
  mode v = fromUndefOrPrimNoDefault
             "RequestInit.getmode"
             prim__mode
             prim__setMode
             (v :> RequestInit)


  export
  redirect :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional RequestRedirect
  redirect v = fromUndefOrPrimNoDefault
                 "RequestInit.getredirect"
                 prim__redirect
                 prim__setRedirect
                 (v :> RequestInit)


  export
  referrer :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional String
  referrer v = fromUndefOrPrimNoDefault
                 "RequestInit.getreferrer"
                 prim__referrer
                 prim__setReferrer
                 (v :> RequestInit)


  export
  referrerPolicy :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional ReferrerPolicy
  referrerPolicy v = fromUndefOrPrimNoDefault
                       "RequestInit.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       (v :> RequestInit)


  export
  signal :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional (Maybe AbortSignal)
  signal v = fromUndefOrPrimNoDefault
               "RequestInit.getsignal"
               prim__signal
               prim__setSignal
               (v :> RequestInit)


  export
  window :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RequestInit (Types t)}
    -> t
    -> Attribute False Optional Any
  window v = fromUndefOrPrimNoDefault
               "RequestInit.getwindow"
               prim__window
               prim__setWindow
               (v :> RequestInit)



namespace ResponseInit

  export
  new :
       {default Undef status : Optional Bits16}
    -> {default Undef statusText : Optional ByteString}
    -> {default Undef headers : Optional
                                  (NS I
                                     [ Array (Array ByteString)
                                     , Record ByteString ByteString
                                     ])}
    -> JSIO ResponseInit
  new = primJS $
    ResponseInit.prim__new (toFFI status) (toFFI statusText) (toFFI headers)


  export
  headers :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ResponseInit (Types t)}
    -> t
    -> Attribute False Optional (Union2
                                   (Array (Array ByteString))
                                   (Record ByteString ByteString))
  headers v = fromUndefOrPrimNoDefault
                "ResponseInit.getheaders"
                prim__headers
                prim__setHeaders
                (v :> ResponseInit)


  export
  status :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ResponseInit (Types t)}
    -> t
    -> Attribute True Optional Bits16
  status v = fromUndefOrPrim
               "ResponseInit.getstatus"
               prim__status
               prim__setStatus
               200
               (v :> ResponseInit)


  export
  statusText :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ResponseInit (Types t)}
    -> t
    -> Attribute False Optional ByteString
  statusText v = fromUndefOrPrimNoDefault
                   "ResponseInit.getstatusText"
                   prim__statusText
                   prim__setStatusText
                   (v :> ResponseInit)
