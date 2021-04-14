module Web.Raw.Xhr
 
import JS
import Web.Internal.XhrPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem HTMLFormElement (Types t1)}
      -> (form : Optional t1)
      -> JSIO FormData
  new a = primJS $ FormData.prim__new (optUp a)

  export
  new' : JSIO FormData
  new' = primJS $ FormData.prim__new undef
  
  export
  append :  JSType t1
         => {auto 0 _ : Elem FormData (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> (value : String)
         -> JSIO ()
  append a b c = primJS $ FormData.prim__append (up a) b c
  
  export
  append1 :  JSType t1
          => JSType t2
          => {auto 0 _ : Elem FormData (Types t1)}
          -> {auto 0 _ : Elem Blob (Types t2)}
          -> (obj : t1)
          -> (name : String)
          -> (blobValue : t2)
          -> (filename : Optional String)
          -> JSIO ()
  append1 a b c d = primJS $ FormData.prim__append1 (up a) b (up c) (toFFI d)

  export
  append1' :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem FormData (Types t1)}
           -> {auto 0 _ : Elem Blob (Types t2)}
           -> (obj : t1)
           -> (name : String)
           -> (blobValue : t2)
           -> JSIO ()
  append1' a b c = primJS $ FormData.prim__append1 (up a) b (up c) undef
  
  export
  delete :  JSType t1
         => {auto 0 _ : Elem FormData (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> JSIO ()
  delete a b = primJS $ FormData.prim__delete (up a) b
  
  export
  getAll :  JSType t1
         => {auto 0 _ : Elem FormData (Types t1)}
         -> (obj : t1)
         -> (name : String)
         -> JSIO (Array (Union2 File String))
  getAll a b = primJS $ FormData.prim__getAll (up a) b
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem FormData (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO (Maybe (NS I [ File , String ]))
  get a b = tryJS "FormData.get" $ FormData.prim__get (up a) b
  
  export
  has :  JSType t1
      => {auto 0 _ : Elem FormData (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> JSIO Bool
  has a b = tryJS "FormData.has" $ FormData.prim__has (up a) b
  
  export
  set :  JSType t1
      => {auto 0 _ : Elem FormData (Types t1)}
      -> (obj : t1)
      -> (name : String)
      -> (value : String)
      -> JSIO ()
  set a b c = primJS $ FormData.prim__set (up a) b c
  
  export
  set1 :  JSType t1
       => JSType t2
       => {auto 0 _ : Elem FormData (Types t1)}
       -> {auto 0 _ : Elem Blob (Types t2)}
       -> (obj : t1)
       -> (name : String)
       -> (blobValue : t2)
       -> (filename : Optional String)
       -> JSIO ()
  set1 a b c d = primJS $ FormData.prim__set1 (up a) b (up c) (toFFI d)

  export
  set1' :  JSType t1
        => JSType t2
        => {auto 0 _ : Elem FormData (Types t1)}
        -> {auto 0 _ : Elem Blob (Types t2)}
        -> (obj : t1)
        -> (name : String)
        -> (blobValue : t2)
        -> JSIO ()
  set1' a b c = primJS $ FormData.prim__set1 (up a) b (up c) undef

namespace ProgressEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ProgressEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ProgressEvent
  new a b = primJS $ ProgressEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ProgressEvent
  new' a = primJS $ ProgressEvent.prim__new a undef
  
  export
  lengthComputable :  JSType t1
                   => {auto 0 _ : Elem ProgressEvent (Types t1)}
                   -> (obj : t1)
                   -> JSIO Bool
  lengthComputable a = tryJS "ProgressEvent.lengthComputable"
                     $ ProgressEvent.prim__lengthComputable (up a)
  
  export
  loaded :  JSType t1
         => {auto 0 _ : Elem ProgressEvent (Types t1)}
         -> (obj : t1)
         -> JSIO UInt64
  loaded a = primJS $ ProgressEvent.prim__loaded (up a)
  
  export
  total_ :  JSType t1
         => {auto 0 _ : Elem ProgressEvent (Types t1)}
         -> (obj : t1)
         -> JSIO UInt64
  total_ a = primJS $ ProgressEvent.prim__total (up a)

namespace XMLHttpRequest
  
  public export
  DONE : UInt16
  DONE = 4
  
  public export
  HEADERS_RECEIVED : UInt16
  HEADERS_RECEIVED = 2
  
  public export
  LOADING : UInt16
  LOADING = 3
  
  public export
  OPENED : UInt16
  OPENED = 1
  
  public export
  UNSENT : UInt16
  UNSENT = 0
  
  export
  new : JSIO XMLHttpRequest
  new = primJS $ XMLHttpRequest.prim__new 
  
  export
  onreadystatechange :  JSType t
                     => {auto 0 _ : Elem XMLHttpRequest (Types t)}
                     -> t
                     -> Attribute False Maybe EventHandlerNonNull
  onreadystatechange v = fromNullablePrim "XMLHttpRequest.getonreadystatechange"
                                          prim__onreadystatechange
                                          prim__setOnreadystatechange
                                          (v :> XMLHttpRequest)
  
  export
  readyState :  JSType t1
             => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
             -> (obj : t1)
             -> JSIO UInt16
  readyState a = primJS $ XMLHttpRequest.prim__readyState (up a)
  
  export
  response :  JSType t1
           => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
           -> (obj : t1)
           -> JSIO Any
  response a = tryJS "XMLHttpRequest.response"
             $ XMLHttpRequest.prim__response (up a)
  
  export
  responseText :  JSType t1
               => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
               -> (obj : t1)
               -> JSIO String
  responseText a = primJS $ XMLHttpRequest.prim__responseText (up a)
  
  export
  responseType :  JSType t
               => {auto 0 _ : Elem XMLHttpRequest (Types t)}
               -> t
               -> Attribute True I XMLHttpRequestResponseType
  responseType v = fromPrim "XMLHttpRequest.getresponseType"
                            prim__responseType
                            prim__setResponseType
                            (v :> XMLHttpRequest)
  
  export
  responseURL :  JSType t1
              => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
              -> (obj : t1)
              -> JSIO String
  responseURL a = primJS $ XMLHttpRequest.prim__responseURL (up a)
  
  export
  responseXML :  JSType t1
              => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe Document)
  responseXML a = tryJS "XMLHttpRequest.responseXML"
                $ XMLHttpRequest.prim__responseXML (up a)
  
  export
  status :  JSType t1
         => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
         -> (obj : t1)
         -> JSIO UInt16
  status a = primJS $ XMLHttpRequest.prim__status (up a)
  
  export
  statusText :  JSType t1
             => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
             -> (obj : t1)
             -> JSIO ByteString
  statusText a = primJS $ XMLHttpRequest.prim__statusText (up a)
  
  export
  timeout :  JSType t
          => {auto 0 _ : Elem XMLHttpRequest (Types t)}
          -> t
          -> Attribute True I UInt32
  timeout v = fromPrim "XMLHttpRequest.gettimeout"
                       prim__timeout
                       prim__setTimeout
                       (v :> XMLHttpRequest)
  
  export
  upload :  JSType t1
         => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
         -> (obj : t1)
         -> JSIO XMLHttpRequestUpload
  upload a = primJS $ XMLHttpRequest.prim__upload (up a)
  
  export
  withCredentials :  JSType t
                  => {auto 0 _ : Elem XMLHttpRequest (Types t)}
                  -> t
                  -> Attribute True I Bool
  withCredentials v = fromPrim "XMLHttpRequest.getwithCredentials"
                               prim__withCredentials
                               prim__setWithCredentials
                               (v :> XMLHttpRequest)
  
  export
  abort :  JSType t1
        => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  abort a = primJS $ XMLHttpRequest.prim__abort (up a)
  
  export
  getAllResponseHeaders :  JSType t1
                        => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
                        -> (obj : t1)
                        -> JSIO ByteString
  getAllResponseHeaders a = primJS
                          $ XMLHttpRequest.prim__getAllResponseHeaders (up a)
  
  export
  getResponseHeader :  JSType t1
                    => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
                    -> (obj : t1)
                    -> (name : ByteString)
                    -> JSIO (Maybe ByteString)
  getResponseHeader a b = tryJS "XMLHttpRequest.getResponseHeader"
                        $ XMLHttpRequest.prim__getResponseHeader (up a) b
  
  export
  open_ :  JSType t1
        => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
        -> (obj : t1)
        -> (method : ByteString)
        -> (url : String)
        -> JSIO ()
  open_ a b c = primJS $ XMLHttpRequest.prim__open (up a) b c
  
  export
  open1 :  JSType t1
        => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
        -> (obj : t1)
        -> (method : ByteString)
        -> (url : String)
        -> (async : Bool)
        -> (username : Optional (Maybe String))
        -> (password : Optional (Maybe String))
        -> JSIO ()
  open1 a b c d e f = primJS
                    $ XMLHttpRequest.prim__open1 (up a)
                                                 b
                                                 c
                                                 (toFFI d)
                                                 (toFFI e)
                                                 (toFFI f)

  export
  open1' :  JSType t1
         => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
         -> (obj : t1)
         -> (method : ByteString)
         -> (url : String)
         -> (async : Bool)
         -> JSIO ()
  open1' a b c d = primJS
                 $ XMLHttpRequest.prim__open1 (up a) b c (toFFI d) undef undef
  
  export
  overrideMimeType :  JSType t1
                   => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
                   -> (obj : t1)
                   -> (mime : String)
                   -> JSIO ()
  overrideMimeType a b = primJS $ XMLHttpRequest.prim__overrideMimeType (up a) b
  
  export
  send :  JSType t1
       => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
       -> (obj : t1)
       -> (body : Optional (Maybe (NS I [ Document
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
  send a b = primJS $ XMLHttpRequest.prim__send (up a) (toFFI b)

  export
  send' :  JSType t1
        => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  send' a = primJS $ XMLHttpRequest.prim__send (up a) undef
  
  export
  setRequestHeader :  JSType t1
                   => {auto 0 _ : Elem XMLHttpRequest (Types t1)}
                   -> (obj : t1)
                   -> (name : ByteString)
                   -> (value : ByteString)
                   -> JSIO ()
  setRequestHeader a b c = primJS
                         $ XMLHttpRequest.prim__setRequestHeader (up a) b c

namespace XMLHttpRequestEventTarget
  
  export
  onabort :  JSType t
          => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim "XMLHttpRequestEventTarget.getonabort"
                               prim__onabort
                               prim__setOnabort
                               (v :> XMLHttpRequestEventTarget)
  
  export
  onerror :  JSType t
          => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
          -> t
          -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim "XMLHttpRequestEventTarget.getonerror"
                               prim__onerror
                               prim__setOnerror
                               (v :> XMLHttpRequestEventTarget)
  
  export
  onload :  JSType t
         => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
         -> t
         -> Attribute False Maybe EventHandlerNonNull
  onload v = fromNullablePrim "XMLHttpRequestEventTarget.getonload"
                              prim__onload
                              prim__setOnload
                              (v :> XMLHttpRequestEventTarget)
  
  export
  onloadend :  JSType t
            => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  onloadend v = fromNullablePrim "XMLHttpRequestEventTarget.getonloadend"
                                 prim__onloadend
                                 prim__setOnloadend
                                 (v :> XMLHttpRequestEventTarget)
  
  export
  onloadstart :  JSType t
              => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
              -> t
              -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim "XMLHttpRequestEventTarget.getonloadstart"
                                   prim__onloadstart
                                   prim__setOnloadstart
                                   (v :> XMLHttpRequestEventTarget)
  
  export
  onprogress :  JSType t
             => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
             -> t
             -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim "XMLHttpRequestEventTarget.getonprogress"
                                  prim__onprogress
                                  prim__setOnprogress
                                  (v :> XMLHttpRequestEventTarget)
  
  export
  ontimeout :  JSType t
            => {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
            -> t
            -> Attribute False Maybe EventHandlerNonNull
  ontimeout v = fromNullablePrim "XMLHttpRequestEventTarget.getontimeout"
                                 prim__ontimeout
                                 prim__setOntimeout
                                 (v :> XMLHttpRequestEventTarget)



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  export
  new :  (lengthComputable : Optional Bool)
      -> (loaded : Optional UInt64)
      -> (total_ : Optional UInt64)
      -> JSIO ProgressEventInit
  new a b c = primJS $ ProgressEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO ProgressEventInit
  new' = primJS $ ProgressEventInit.prim__new undef undef undef
  
  export
  lengthComputable :  JSType t
                   => {auto 0 _ : Elem ProgressEventInit (Types t)}
                   -> t
                   -> Attribute True Optional Bool
  lengthComputable v = fromUndefOrPrim "ProgressEventInit.getlengthComputable"
                                       prim__lengthComputable
                                       prim__setLengthComputable
                                       False
                                       (v :> ProgressEventInit)
  
  export
  loaded :  JSType t
         => {auto 0 _ : Elem ProgressEventInit (Types t)}
         -> t
         -> Attribute True Optional UInt64
  loaded v = fromUndefOrPrim "ProgressEventInit.getloaded"
                             prim__loaded
                             prim__setLoaded
                             0
                             (v :> ProgressEventInit)
  
  export
  total_ :  JSType t
         => {auto 0 _ : Elem ProgressEventInit (Types t)}
         -> t
         -> Attribute True Optional UInt64
  total_ v = fromUndefOrPrim "ProgressEventInit.gettotal"
                             prim__total
                             prim__setTotal
                             0
                             (v :> ProgressEventInit)
