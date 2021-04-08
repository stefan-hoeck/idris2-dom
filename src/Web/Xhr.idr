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
  new : (form : UndefOr HTMLFormElement) -> JSIO FormData
  new a = primJS $ FormData.prim__new a
  
  export
  append : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  append a b c = primJS $ FormData.prim__append a b c
  
  export
  append1 :  (obj : FormData)
          -> (name : String)
          -> (blobValue : Blob)
          -> (filename : UndefOr String)
          -> JSIO ()
  append1 a b c d = primJS $ FormData.prim__append1 a b c d
  
  export
  delete : (obj : FormData) -> (name : String) -> JSIO ()
  delete a b = primJS $ FormData.prim__delete a b
  
  export
  getAll :  (obj : FormData)
         -> (name : String)
         -> JSIO (Array FormDataEntryValue)
  getAll a b = primJS $ FormData.prim__getAll a b
  
  export
  get :  (obj : FormData)
      -> (name : String)
      -> JSIO (Nullable FormDataEntryValue)
  get a b = primJS $ FormData.prim__get a b
  
  export
  has : (obj : FormData) -> (name : String) -> JSIO Boolean
  has a b = primJS $ FormData.prim__has a b
  
  export
  set : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  set a b c = primJS $ FormData.prim__set a b c
  
  export
  set1 :  (obj : FormData)
       -> (name : String)
       -> (blobValue : Blob)
       -> (filename : UndefOr String)
       -> JSIO ()
  set1 a b c d = primJS $ FormData.prim__set1 a b c d

namespace ProgressEvent
  
  public export
  JSType ProgressEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr ProgressEventInit)
      -> JSIO ProgressEvent
  new a b = primJS $ ProgressEvent.prim__new a b
  
  export
  lengthComputable : (obj : ProgressEvent) -> JSIO Boolean
  lengthComputable a = primJS $ ProgressEvent.prim__lengthComputable a
  
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
  onreadystatechange : (obj : XMLHttpRequest) -> JSIO EventHandler
  onreadystatechange a = primJS $ XMLHttpRequest.prim__onreadystatechange a
  
  export
  setOnreadystatechange :  (obj : XMLHttpRequest)
                        -> (value : EventHandler)
                        -> JSIO ()
  setOnreadystatechange a b = primJS $ XMLHttpRequest.prim__setOnreadystatechange a
                                                                                  b
  
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
  responseType a = primJS $ XMLHttpRequest.prim__responseType a
  
  export
  setResponseType :  (obj : XMLHttpRequest)
                  -> (value : XMLHttpRequestResponseType)
                  -> JSIO ()
  setResponseType a b = primJS $ XMLHttpRequest.prim__setResponseType a b
  
  export
  responseURL : (obj : XMLHttpRequest) -> JSIO String
  responseURL a = primJS $ XMLHttpRequest.prim__responseURL a
  
  export
  responseXML : (obj : XMLHttpRequest) -> JSIO (Nullable Document)
  responseXML a = primJS $ XMLHttpRequest.prim__responseXML a
  
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
  withCredentials : (obj : XMLHttpRequest) -> JSIO Boolean
  withCredentials a = primJS $ XMLHttpRequest.prim__withCredentials a
  
  export
  setWithCredentials : (obj : XMLHttpRequest) -> (value : Boolean) -> JSIO ()
  setWithCredentials a b = primJS $ XMLHttpRequest.prim__setWithCredentials a b
  
  export
  abort : (obj : XMLHttpRequest) -> JSIO ()
  abort a = primJS $ XMLHttpRequest.prim__abort a
  
  export
  getAllResponseHeaders : (obj : XMLHttpRequest) -> JSIO ByteString
  getAllResponseHeaders a = primJS $ XMLHttpRequest.prim__getAllResponseHeaders a
  
  export
  getResponseHeader :  (obj : XMLHttpRequest)
                    -> (name : ByteString)
                    -> JSIO (Nullable ByteString)
  getResponseHeader a b = primJS $ XMLHttpRequest.prim__getResponseHeader a b
  
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
        -> (async : Boolean)
        -> (username : UndefOr (Nullable String))
        -> (password : UndefOr (Nullable String))
        -> JSIO ()
  open1 a b c d e f = primJS $ XMLHttpRequest.prim__open1 a b c d e f
  
  export
  overrideMimeType : (obj : XMLHttpRequest) -> (mime : String) -> JSIO ()
  overrideMimeType a b = primJS $ XMLHttpRequest.prim__overrideMimeType a b
  
  export
  send :  (obj : XMLHttpRequest)
       -> (body : UndefOr (Nullable (Union2 Document XMLHttpRequestBodyInit)))
       -> JSIO ()
  send a b = primJS $ XMLHttpRequest.prim__send a b
  
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
  onabort : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onabort a = primJS $ XMLHttpRequestEventTarget.prim__onabort a
  
  export
  setOnabort :  (obj : XMLHttpRequestEventTarget)
             -> (value : EventHandler)
             -> JSIO ()
  setOnabort a b = primJS $ XMLHttpRequestEventTarget.prim__setOnabort a b
  
  export
  onerror : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onerror a = primJS $ XMLHttpRequestEventTarget.prim__onerror a
  
  export
  setOnerror :  (obj : XMLHttpRequestEventTarget)
             -> (value : EventHandler)
             -> JSIO ()
  setOnerror a b = primJS $ XMLHttpRequestEventTarget.prim__setOnerror a b
  
  export
  onload : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onload a = primJS $ XMLHttpRequestEventTarget.prim__onload a
  
  export
  setOnload :  (obj : XMLHttpRequestEventTarget)
            -> (value : EventHandler)
            -> JSIO ()
  setOnload a b = primJS $ XMLHttpRequestEventTarget.prim__setOnload a b
  
  export
  onloadend : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onloadend a = primJS $ XMLHttpRequestEventTarget.prim__onloadend a
  
  export
  setOnloadend :  (obj : XMLHttpRequestEventTarget)
               -> (value : EventHandler)
               -> JSIO ()
  setOnloadend a b = primJS $ XMLHttpRequestEventTarget.prim__setOnloadend a b
  
  export
  onloadstart : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onloadstart a = primJS $ XMLHttpRequestEventTarget.prim__onloadstart a
  
  export
  setOnloadstart :  (obj : XMLHttpRequestEventTarget)
                 -> (value : EventHandler)
                 -> JSIO ()
  setOnloadstart a b = primJS $ XMLHttpRequestEventTarget.prim__setOnloadstart a
                                                                               b
  
  export
  onprogress : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onprogress a = primJS $ XMLHttpRequestEventTarget.prim__onprogress a
  
  export
  setOnprogress :  (obj : XMLHttpRequestEventTarget)
                -> (value : EventHandler)
                -> JSIO ()
  setOnprogress a b = primJS $ XMLHttpRequestEventTarget.prim__setOnprogress a b
  
  export
  ontimeout : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  ontimeout a = primJS $ XMLHttpRequestEventTarget.prim__ontimeout a
  
  export
  setOntimeout :  (obj : XMLHttpRequestEventTarget)
               -> (value : EventHandler)
               -> JSIO ()
  setOntimeout a b = primJS $ XMLHttpRequestEventTarget.prim__setOntimeout a b

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
  lengthComputable : (obj : ProgressEventInit) -> JSIO (UndefOr Boolean)
  lengthComputable a = primJS $ ProgressEventInit.prim__lengthComputable a
  
  export
  setLengthComputable :  (obj : ProgressEventInit)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setLengthComputable a b = primJS $ ProgressEventInit.prim__setLengthComputable a
                                                                                 b
  
  export
  loaded : (obj : ProgressEventInit) -> JSIO (UndefOr UInt64)
  loaded a = primJS $ ProgressEventInit.prim__loaded a
  
  export
  setLoaded : (obj : ProgressEventInit) -> (value : UndefOr UInt64) -> JSIO ()
  setLoaded a b = primJS $ ProgressEventInit.prim__setLoaded a b
  
  export
  total_ : (obj : ProgressEventInit) -> JSIO (UndefOr UInt64)
  total_ a = primJS $ ProgressEventInit.prim__total a
  
  export
  setTotal : (obj : ProgressEventInit) -> (value : UndefOr UInt64) -> JSIO ()
  setTotal a b = primJS $ ProgressEventInit.prim__setTotal a b
