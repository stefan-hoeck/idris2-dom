module Web.Raw.Xhr
 
import JS
import Web.Internal.XhrPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  public export
  JSType FormData where
    parents =  [ Object ]

    mixins =  []
  
  export
  new : (form : Optional HTMLFormElement) -> JSIO FormData
  new a = primJS $ FormData.prim__new (toFFI a)

  export
  new' : JSIO FormData
  new' = primJS $ FormData.prim__new undef
  
  export
  append : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  append a b c = primJS $ FormData.prim__append a b c
  
  export
  append1 :  (obj : FormData)
          -> (name : String)
          -> (blobValue : Blob)
          -> (filename : Optional String)
          -> JSIO ()
  append1 a b c d = primJS $ FormData.prim__append1 a b c (toFFI d)

  export
  append1' :  (obj : FormData)
           -> (name : String)
           -> (blobValue : Blob)
           -> JSIO ()
  append1' a b c = primJS $ FormData.prim__append1 a b c undef
  
  export
  delete : (obj : FormData) -> (name : String) -> JSIO ()
  delete a b = primJS $ FormData.prim__delete a b
  
  export
  getAll :  (obj : FormData)
         -> (name : String)
         -> JSIO (Array (Union2 File String))
  getAll a b = primJS $ FormData.prim__getAll a b
  
  export
  get :  (obj : FormData)
      -> (name : String)
      -> JSIO (Maybe (NS I [ File , String ]))
  get a b = tryJS "FormData.get" $ FormData.prim__get a b
  
  export
  has : (obj : FormData) -> (name : String) -> JSIO Bool
  has a b = tryJS "FormData.has" $ FormData.prim__has a b
  
  export
  set : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  set a b c = primJS $ FormData.prim__set a b c
  
  export
  set1 :  (obj : FormData)
       -> (name : String)
       -> (blobValue : Blob)
       -> (filename : Optional String)
       -> JSIO ()
  set1 a b c d = primJS $ FormData.prim__set1 a b c (toFFI d)

  export
  set1' : (obj : FormData) -> (name : String) -> (blobValue : Blob) -> JSIO ()
  set1' a b c = primJS $ FormData.prim__set1 a b c undef

namespace ProgressEvent
  
  public export
  JSType ProgressEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : Optional ProgressEventInit)
      -> JSIO ProgressEvent
  new a b = primJS $ ProgressEvent.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO ProgressEvent
  new' a = primJS $ ProgressEvent.prim__new a undef
  
  export
  lengthComputable : (obj : ProgressEvent) -> JSIO Bool
  lengthComputable a = tryJS "ProgressEvent.lengthComputable"
                     $ ProgressEvent.prim__lengthComputable a
  
  export
  loaded : (obj : ProgressEvent) -> JSIO UInt64
  loaded a = primJS $ ProgressEvent.prim__loaded a
  
  export
  total_ : (obj : ProgressEvent) -> JSIO UInt64
  total_ a = primJS $ ProgressEvent.prim__total a

namespace XMLHttpRequest
  
  public export
  JSType XMLHttpRequest where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , Object ]

    mixins =  []
  
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
  onreadystatechange : XMLHttpRequest -> Attribute False Maybe EventHandlerNonNull
  onreadystatechange = fromNullablePrim "XMLHttpRequest.getonreadystatechange"
                                        prim__onreadystatechange
                                        prim__setOnreadystatechange
  
  export
  readyState : (obj : XMLHttpRequest) -> JSIO UInt16
  readyState a = primJS $ XMLHttpRequest.prim__readyState a
  
  export
  response : (obj : XMLHttpRequest) -> JSIO Any
  response a = tryJS "XMLHttpRequest.response" $ XMLHttpRequest.prim__response a
  
  export
  responseText : (obj : XMLHttpRequest) -> JSIO String
  responseText a = primJS $ XMLHttpRequest.prim__responseText a
  
  export
  responseType : XMLHttpRequest -> Attribute True I XMLHttpRequestResponseType
  responseType = fromPrim "XMLHttpRequest.getresponseType"
                          prim__responseType
                          prim__setResponseType
  
  export
  responseURL : (obj : XMLHttpRequest) -> JSIO String
  responseURL a = primJS $ XMLHttpRequest.prim__responseURL a
  
  export
  responseXML : (obj : XMLHttpRequest) -> JSIO (Maybe Document)
  responseXML a = tryJS "XMLHttpRequest.responseXML"
                $ XMLHttpRequest.prim__responseXML a
  
  export
  status : (obj : XMLHttpRequest) -> JSIO UInt16
  status a = primJS $ XMLHttpRequest.prim__status a
  
  export
  statusText : (obj : XMLHttpRequest) -> JSIO ByteString
  statusText a = primJS $ XMLHttpRequest.prim__statusText a
  
  export
  timeout : XMLHttpRequest -> Attribute True I UInt32
  timeout = fromPrim "XMLHttpRequest.gettimeout" prim__timeout prim__setTimeout
  
  export
  upload : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestUpload
  upload a = primJS $ XMLHttpRequest.prim__upload a
  
  export
  withCredentials : XMLHttpRequest -> Attribute True I Bool
  withCredentials = fromPrim "XMLHttpRequest.getwithCredentials"
                             prim__withCredentials
                             prim__setWithCredentials
  
  export
  abort : (obj : XMLHttpRequest) -> JSIO ()
  abort a = primJS $ XMLHttpRequest.prim__abort a
  
  export
  getAllResponseHeaders : (obj : XMLHttpRequest) -> JSIO ByteString
  getAllResponseHeaders a = primJS
                          $ XMLHttpRequest.prim__getAllResponseHeaders a
  
  export
  getResponseHeader :  (obj : XMLHttpRequest)
                    -> (name : ByteString)
                    -> JSIO (Maybe ByteString)
  getResponseHeader a b = tryJS "XMLHttpRequest.getResponseHeader"
                        $ XMLHttpRequest.prim__getResponseHeader a b
  
  export
  open_ :  (obj : XMLHttpRequest)
        -> (method : ByteString)
        -> (url : String)
        -> JSIO ()
  open_ a b c = primJS $ XMLHttpRequest.prim__open a b c
  
  export
  open1 :  (obj : XMLHttpRequest)
        -> (method : ByteString)
        -> (url : String)
        -> (async : Bool)
        -> (username : Optional (Maybe String))
        -> (password : Optional (Maybe String))
        -> JSIO ()
  open1 a b c d e f = primJS
                    $ XMLHttpRequest.prim__open1 a
                                                 b
                                                 c
                                                 (toFFI d)
                                                 (toFFI e)
                                                 (toFFI f)

  export
  open1' :  (obj : XMLHttpRequest)
         -> (method : ByteString)
         -> (url : String)
         -> (async : Bool)
         -> JSIO ()
  open1' a b c d = primJS
                 $ XMLHttpRequest.prim__open1 a b c (toFFI d) undef undef
  
  export
  overrideMimeType : (obj : XMLHttpRequest) -> (mime : String) -> JSIO ()
  overrideMimeType a b = primJS $ XMLHttpRequest.prim__overrideMimeType a b
  
  export
  send :  (obj : XMLHttpRequest)
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
  send a b = primJS $ XMLHttpRequest.prim__send a (toFFI b)

  export
  send' : (obj : XMLHttpRequest) -> JSIO ()
  send' a = primJS $ XMLHttpRequest.prim__send a undef
  
  export
  setRequestHeader :  (obj : XMLHttpRequest)
                   -> (name : ByteString)
                   -> (value : ByteString)
                   -> JSIO ()
  setRequestHeader a b c = primJS $ XMLHttpRequest.prim__setRequestHeader a b c

namespace XMLHttpRequestEventTarget
  
  public export
  JSType XMLHttpRequestEventTarget where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  onabort : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onabort = fromNullablePrim "XMLHttpRequestEventTarget.getonabort"
                             prim__onabort
                             prim__setOnabort
  
  export
  onerror : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onerror = fromNullablePrim "XMLHttpRequestEventTarget.getonerror"
                             prim__onerror
                             prim__setOnerror
  
  export
  onload : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onload = fromNullablePrim "XMLHttpRequestEventTarget.getonload"
                            prim__onload
                            prim__setOnload
  
  export
  onloadend : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onloadend = fromNullablePrim "XMLHttpRequestEventTarget.getonloadend"
                               prim__onloadend
                               prim__setOnloadend
  
  export
  onloadstart : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onloadstart = fromNullablePrim "XMLHttpRequestEventTarget.getonloadstart"
                                 prim__onloadstart
                                 prim__setOnloadstart
  
  export
  onprogress : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  onprogress = fromNullablePrim "XMLHttpRequestEventTarget.getonprogress"
                                prim__onprogress
                                prim__setOnprogress
  
  export
  ontimeout : XMLHttpRequestEventTarget -> Attribute False Maybe EventHandlerNonNull
  ontimeout = fromNullablePrim "XMLHttpRequestEventTarget.getontimeout"
                               prim__ontimeout
                               prim__setOntimeout

namespace XMLHttpRequestUpload
  
  public export
  JSType XMLHttpRequestUpload where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  public export
  JSType ProgressEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
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
  lengthComputable : ProgressEventInit -> Attribute True Optional Bool
  lengthComputable = fromUndefOrPrim "ProgressEventInit.getlengthComputable"
                                     prim__lengthComputable
                                     prim__setLengthComputable
                                     False
  
  export
  loaded : ProgressEventInit -> Attribute True Optional UInt64
  loaded = fromUndefOrPrim "ProgressEventInit.getloaded"
                           prim__loaded
                           prim__setLoaded
                           0
  
  export
  total_ : ProgressEventInit -> Attribute True Optional UInt64
  total_ = fromUndefOrPrim "ProgressEventInit.gettotal"
                           prim__total
                           prim__setTotal
                           0
