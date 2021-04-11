module Web.Xhr
 
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
  new' = new Undef
  
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
  append1' a b c = append1 a b c Undef
  
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
  set1' a b c = set1 a b c Undef

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
  new' a = new a Undef
  
  export
  lengthComputable : (obj : ProgressEvent) -> JSIO Bool
  lengthComputable a = tryJS "ProgressEvent.lengthComputable" $ ProgressEvent.prim__lengthComputable a
  
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
  onreadystatechange :  (obj : XMLHttpRequest)
                     -> JSIO (Maybe EventHandlerNonNull)
  onreadystatechange a = tryJS "XMLHttpRequest.onreadystatechange" $ XMLHttpRequest.prim__onreadystatechange a
  
  export
  setOnreadystatechange :  (obj : XMLHttpRequest)
                        -> (value : Maybe EventHandlerNonNull)
                        -> JSIO ()
  setOnreadystatechange a b = primJS $ XMLHttpRequest.prim__setOnreadystatechange a
                                                                                  (toFFI b)
  
  export
  readyState : (obj : XMLHttpRequest) -> JSIO UInt16
  readyState a = primJS $ XMLHttpRequest.prim__readyState a
  
  export
  response : (obj : XMLHttpRequest) -> JSIO AnyPtr
  response a = primJS $ XMLHttpRequest.prim__response a
  
  export
  responseText : (obj : XMLHttpRequest) -> JSIO String
  responseText a = primJS $ XMLHttpRequest.prim__responseText a
  
  export
  responseType : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestResponseType
  responseType a = tryJS "XMLHttpRequest.responseType" $ XMLHttpRequest.prim__responseType a
  
  export
  setResponseType :  (obj : XMLHttpRequest)
                  -> (value : XMLHttpRequestResponseType)
                  -> JSIO ()
  setResponseType a b = primJS $ XMLHttpRequest.prim__setResponseType a
                                                                      (toFFI b)
  
  export
  responseURL : (obj : XMLHttpRequest) -> JSIO String
  responseURL a = primJS $ XMLHttpRequest.prim__responseURL a
  
  export
  responseXML : (obj : XMLHttpRequest) -> JSIO (Maybe Document)
  responseXML a = tryJS "XMLHttpRequest.responseXML" $ XMLHttpRequest.prim__responseXML a
  
  export
  status : (obj : XMLHttpRequest) -> JSIO UInt16
  status a = primJS $ XMLHttpRequest.prim__status a
  
  export
  statusText : (obj : XMLHttpRequest) -> JSIO ByteString
  statusText a = primJS $ XMLHttpRequest.prim__statusText a
  
  export
  timeout : (obj : XMLHttpRequest) -> JSIO UInt32
  timeout a = primJS $ XMLHttpRequest.prim__timeout a
  
  export
  setTimeout : (obj : XMLHttpRequest) -> (value : UInt32) -> JSIO ()
  setTimeout a b = primJS $ XMLHttpRequest.prim__setTimeout a b
  
  export
  upload : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestUpload
  upload a = primJS $ XMLHttpRequest.prim__upload a
  
  export
  withCredentials : (obj : XMLHttpRequest) -> JSIO Bool
  withCredentials a = tryJS "XMLHttpRequest.withCredentials" $ XMLHttpRequest.prim__withCredentials a
  
  export
  setWithCredentials : (obj : XMLHttpRequest) -> (value : Bool) -> JSIO ()
  setWithCredentials a b = primJS $ XMLHttpRequest.prim__setWithCredentials a
                                                                            (toFFI b)
  
  export
  abort : (obj : XMLHttpRequest) -> JSIO ()
  abort a = primJS $ XMLHttpRequest.prim__abort a
  
  export
  getAllResponseHeaders : (obj : XMLHttpRequest) -> JSIO ByteString
  getAllResponseHeaders a = primJS $ XMLHttpRequest.prim__getAllResponseHeaders a
  
  export
  getResponseHeader :  (obj : XMLHttpRequest)
                    -> (name : ByteString)
                    -> JSIO (Maybe ByteString)
  getResponseHeader a b = tryJS "XMLHttpRequest.getResponseHeader" $ XMLHttpRequest.prim__getResponseHeader a
                                                                                                            b
  
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
  open1 a b c d e f = primJS $ XMLHttpRequest.prim__open1 a
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
  open1' a b c d = open1 a b c d Undef Undef
  
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
  send' a = send a Undef
  
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
  onabort :  (obj : XMLHttpRequestEventTarget)
          -> JSIO (Maybe EventHandlerNonNull)
  onabort a = tryJS "XMLHttpRequestEventTarget.onabort" $ XMLHttpRequestEventTarget.prim__onabort a
  
  export
  setOnabort :  (obj : XMLHttpRequestEventTarget)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnabort a b = primJS $ XMLHttpRequestEventTarget.prim__setOnabort a
                                                                       (toFFI b)
  
  export
  onerror :  (obj : XMLHttpRequestEventTarget)
          -> JSIO (Maybe EventHandlerNonNull)
  onerror a = tryJS "XMLHttpRequestEventTarget.onerror" $ XMLHttpRequestEventTarget.prim__onerror a
  
  export
  setOnerror :  (obj : XMLHttpRequestEventTarget)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnerror a b = primJS $ XMLHttpRequestEventTarget.prim__setOnerror a
                                                                       (toFFI b)
  
  export
  onload : (obj : XMLHttpRequestEventTarget) -> JSIO (Maybe EventHandlerNonNull)
  onload a = tryJS "XMLHttpRequestEventTarget.onload" $ XMLHttpRequestEventTarget.prim__onload a
  
  export
  setOnload :  (obj : XMLHttpRequestEventTarget)
            -> (value : Maybe EventHandlerNonNull)
            -> JSIO ()
  setOnload a b = primJS $ XMLHttpRequestEventTarget.prim__setOnload a (toFFI b)
  
  export
  onloadend :  (obj : XMLHttpRequestEventTarget)
            -> JSIO (Maybe EventHandlerNonNull)
  onloadend a = tryJS "XMLHttpRequestEventTarget.onloadend" $ XMLHttpRequestEventTarget.prim__onloadend a
  
  export
  setOnloadend :  (obj : XMLHttpRequestEventTarget)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOnloadend a b = primJS $ XMLHttpRequestEventTarget.prim__setOnloadend a
                                                                           (toFFI b)
  
  export
  onloadstart :  (obj : XMLHttpRequestEventTarget)
              -> JSIO (Maybe EventHandlerNonNull)
  onloadstart a = tryJS "XMLHttpRequestEventTarget.onloadstart" $ XMLHttpRequestEventTarget.prim__onloadstart a
  
  export
  setOnloadstart :  (obj : XMLHttpRequestEventTarget)
                 -> (value : Maybe EventHandlerNonNull)
                 -> JSIO ()
  setOnloadstart a b = primJS $ XMLHttpRequestEventTarget.prim__setOnloadstart a
                                                                               (toFFI b)
  
  export
  onprogress :  (obj : XMLHttpRequestEventTarget)
             -> JSIO (Maybe EventHandlerNonNull)
  onprogress a = tryJS "XMLHttpRequestEventTarget.onprogress" $ XMLHttpRequestEventTarget.prim__onprogress a
  
  export
  setOnprogress :  (obj : XMLHttpRequestEventTarget)
                -> (value : Maybe EventHandlerNonNull)
                -> JSIO ()
  setOnprogress a b = primJS $ XMLHttpRequestEventTarget.prim__setOnprogress a
                                                                             (toFFI b)
  
  export
  ontimeout :  (obj : XMLHttpRequestEventTarget)
            -> JSIO (Maybe EventHandlerNonNull)
  ontimeout a = tryJS "XMLHttpRequestEventTarget.ontimeout" $ XMLHttpRequestEventTarget.prim__ontimeout a
  
  export
  setOntimeout :  (obj : XMLHttpRequestEventTarget)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOntimeout a b = primJS $ XMLHttpRequestEventTarget.prim__setOntimeout a
                                                                           (toFFI b)

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
  new' = new Undef Undef Undef
  
  export
  lengthComputable : (obj : ProgressEventInit) -> JSIO $ Optional Bool
  lengthComputable a = tryJS "ProgressEventInit.lengthComputable" $ ProgressEventInit.prim__lengthComputable a
  
  export
  setLengthComputable :  (obj : ProgressEventInit)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setLengthComputable a b = primJS $ ProgressEventInit.prim__setLengthComputable a
                                                                                 (toFFI b)

  export
  setLengthComputable' : (obj : ProgressEventInit) -> JSIO ()
  setLengthComputable' a = setLengthComputable a Undef
  
  export
  loaded : (obj : ProgressEventInit) -> JSIO $ Optional UInt64
  loaded a = tryJS "ProgressEventInit.loaded" $ ProgressEventInit.prim__loaded a
  
  export
  setLoaded : (obj : ProgressEventInit) -> (value : Optional UInt64) -> JSIO ()
  setLoaded a b = primJS $ ProgressEventInit.prim__setLoaded a (toFFI b)

  export
  setLoaded' : (obj : ProgressEventInit) -> JSIO ()
  setLoaded' a = setLoaded a Undef
  
  export
  total_ : (obj : ProgressEventInit) -> JSIO $ Optional UInt64
  total_ a = tryJS "ProgressEventInit.total_" $ ProgressEventInit.prim__total a
  
  export
  setTotal : (obj : ProgressEventInit) -> (value : Optional UInt64) -> JSIO ()
  setTotal a b = primJS $ ProgressEventInit.prim__setTotal a (toFFI b)

  export
  setTotal' : (obj : ProgressEventInit) -> JSIO ()
  setTotal' a = setTotal a Undef
