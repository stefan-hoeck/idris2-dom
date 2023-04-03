module Web.Raw.Xhr

import JS
import Web.Internal.XhrPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData

  export
  new : {default Undef form : Optional HTMLFormElement} -> JSIO FormData
  new = primJS $ FormData.prim__new (toFFI form)


  export
  append : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  append a b c = primJS $ FormData.prim__append a b c


  export
  append1 :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Blob (Types t3)}
    -> (obj : FormData)
    -> (name : String)
    -> (blobValue : t3)
    -> {default Undef filename : Optional String}
    -> JSIO ()
  append1 a b c = primJS $ FormData.prim__append1 a b (up c) (toFFI filename)


  export
  delete : (obj : FormData) -> (name : String) -> JSIO ()
  delete a b = primJS $ FormData.prim__delete a b


  export
  getAll :
       (obj : FormData)
    -> (name : String)
    -> JSIO (Array (Union2 File String))
  getAll a b = primJS $ FormData.prim__getAll a b


  export
  get :
       (obj : FormData)
    -> (name : String)
    -> JSIO (Maybe (NS I [File, String]))
  get a b = tryJS "FormData.get" $ FormData.prim__get a b


  export
  has : (obj : FormData) -> (name : String) -> JSIO Bool
  has a b = tryJS "FormData.has" $ FormData.prim__has a b


  export
  set : (obj : FormData) -> (name : String) -> (value : String) -> JSIO ()
  set a b c = primJS $ FormData.prim__set a b c


  export
  set1 :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Blob (Types t3)}
    -> (obj : FormData)
    -> (name : String)
    -> (blobValue : t3)
    -> {default Undef filename : Optional String}
    -> JSIO ()
  set1 a b c = primJS $ FormData.prim__set1 a b (up c) (toFFI filename)



namespace ProgressEvent

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ProgressEventInit (Types t2)}
    -> (type : String)
    -> {default Undef eventInitDict : Optional t2}
    -> JSIO ProgressEvent
  new a = primJS $ ProgressEvent.prim__new a (optUp eventInitDict)


  export
  lengthComputable : (obj : ProgressEvent) -> JSIO Bool
  lengthComputable a = tryJS "ProgressEvent.lengthComputable" $
    ProgressEvent.prim__lengthComputable a


  export
  loaded : (obj : ProgressEvent) -> JSIO JSBits64
  loaded a = primJS $ ProgressEvent.prim__loaded a


  export
  total_ : (obj : ProgressEvent) -> JSIO JSBits64
  total_ a = primJS $ ProgressEvent.prim__total a



namespace XMLHttpRequest

  public export
  DONE : Bits16
  DONE = 4


  public export
  HEADERS_RECEIVED : Bits16
  HEADERS_RECEIVED = 2


  public export
  LOADING : Bits16
  LOADING = 3


  public export
  OPENED : Bits16
  OPENED = 1


  public export
  UNSENT : Bits16
  UNSENT = 0


  export
  new : JSIO XMLHttpRequest
  new = primJS $ XMLHttpRequest.prim__new


  export
  onreadystatechange :
       XMLHttpRequest
    -> Attribute False Maybe EventHandlerNonNull
  onreadystatechange v = fromNullablePrim
                           "XMLHttpRequest.getonreadystatechange"
                           prim__onreadystatechange
                           prim__setOnreadystatechange
                           v


  export
  readyState : (obj : XMLHttpRequest) -> JSIO Bits16
  readyState a = primJS $ XMLHttpRequest.prim__readyState a


  export
  response : (obj : XMLHttpRequest) -> JSIO Any
  response a = tryJS "XMLHttpRequest.response" $ XMLHttpRequest.prim__response a


  export
  responseText : (obj : XMLHttpRequest) -> JSIO String
  responseText a = primJS $ XMLHttpRequest.prim__responseText a


  export
  responseType : XMLHttpRequest -> Attribute True I XMLHttpRequestResponseType
  responseType v = fromPrim
                     "XMLHttpRequest.getresponseType"
                     prim__responseType
                     prim__setResponseType
                     v


  export
  responseURL : (obj : XMLHttpRequest) -> JSIO String
  responseURL a = primJS $ XMLHttpRequest.prim__responseURL a


  export
  responseXML : (obj : XMLHttpRequest) -> JSIO (Maybe Document)
  responseXML a = tryJS "XMLHttpRequest.responseXML" $
    XMLHttpRequest.prim__responseXML a


  export
  status : (obj : XMLHttpRequest) -> JSIO Bits16
  status a = primJS $ XMLHttpRequest.prim__status a


  export
  statusText : (obj : XMLHttpRequest) -> JSIO ByteString
  statusText a = primJS $ XMLHttpRequest.prim__statusText a


  export
  timeout : XMLHttpRequest -> Attribute True I Bits32
  timeout v = fromPrim
                "XMLHttpRequest.gettimeout"
                prim__timeout
                prim__setTimeout
                v


  export
  upload : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestUpload
  upload a = primJS $ XMLHttpRequest.prim__upload a


  export
  withCredentials : XMLHttpRequest -> Attribute True I Bool
  withCredentials v = fromPrim
                        "XMLHttpRequest.getwithCredentials"
                        prim__withCredentials
                        prim__setWithCredentials
                        v


  export
  abort : (obj : XMLHttpRequest) -> JSIO ()
  abort a = primJS $ XMLHttpRequest.prim__abort a


  export
  getAllResponseHeaders : (obj : XMLHttpRequest) -> JSIO ByteString
  getAllResponseHeaders a = primJS $
    XMLHttpRequest.prim__getAllResponseHeaders a


  export
  getResponseHeader :
       (obj : XMLHttpRequest)
    -> (name : ByteString)
    -> JSIO (Maybe ByteString)
  getResponseHeader a b = tryJS "XMLHttpRequest.getResponseHeader" $
    XMLHttpRequest.prim__getResponseHeader a b


  export
  open_ :
       (obj : XMLHttpRequest)
    -> (method : ByteString)
    -> (url : String)
    -> JSIO ()
  open_ a b c = primJS $ XMLHttpRequest.prim__open a b c


  export
  open1 :
       (obj : XMLHttpRequest)
    -> (method : ByteString)
    -> (url : String)
    -> (async : Bool)
    -> {default Undef username : Optional (Maybe String)}
    -> {default Undef password : Optional (Maybe String)}
    -> JSIO ()
  open1 a b c d = primJS $
    XMLHttpRequest.prim__open1 a b c (toFFI d) (toFFI username) (toFFI password)


  export
  overrideMimeType : (obj : XMLHttpRequest) -> (mime : String) -> JSIO ()
  overrideMimeType a b = primJS $ XMLHttpRequest.prim__overrideMimeType a b


  export
  send :
       (obj : XMLHttpRequest)
    -> {default Undef body : Optional
                               (Maybe
                                  (NS I
                                     [ Document
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
    -> JSIO ()
  send a = primJS $ XMLHttpRequest.prim__send a (toFFI body)


  export
  setRequestHeader :
       (obj : XMLHttpRequest)
    -> (name : ByteString)
    -> (value : ByteString)
    -> JSIO ()
  setRequestHeader a b c = primJS $ XMLHttpRequest.prim__setRequestHeader a b c



namespace XMLHttpRequestEventTarget

  export
  onabort :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim
                "XMLHttpRequestEventTarget.getonabort"
                prim__onabort
                prim__setOnabort
                (v :> XMLHttpRequestEventTarget)


  export
  onerror :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "XMLHttpRequestEventTarget.getonerror"
                prim__onerror
                prim__setOnerror
                (v :> XMLHttpRequestEventTarget)


  export
  onload :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onload v = fromNullablePrim
               "XMLHttpRequestEventTarget.getonload"
               prim__onload
               prim__setOnload
               (v :> XMLHttpRequestEventTarget)


  export
  onloadend :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onloadend v = fromNullablePrim
                  "XMLHttpRequestEventTarget.getonloadend"
                  prim__onloadend
                  prim__setOnloadend
                  (v :> XMLHttpRequestEventTarget)


  export
  onloadstart :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onloadstart v = fromNullablePrim
                    "XMLHttpRequestEventTarget.getonloadstart"
                    prim__onloadstart
                    prim__setOnloadstart
                    (v :> XMLHttpRequestEventTarget)


  export
  onprogress :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onprogress v = fromNullablePrim
                   "XMLHttpRequestEventTarget.getonprogress"
                   prim__onprogress
                   prim__setOnprogress
                   (v :> XMLHttpRequestEventTarget)


  export
  ontimeout :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem XMLHttpRequestEventTarget (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  ontimeout v = fromNullablePrim
                  "XMLHttpRequestEventTarget.getontimeout"
                  prim__ontimeout
                  prim__setOntimeout
                  (v :> XMLHttpRequestEventTarget)






--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit

  export
  new :
       {default Undef lengthComputable : Optional Bool}
    -> {default Undef loaded : Optional JSBits64}
    -> {default Undef total_ : Optional JSBits64}
    -> JSIO ProgressEventInit
  new = primJS $
    ProgressEventInit.prim__new
      (toFFI lengthComputable)
      (toFFI loaded)
      (toFFI total_)


  export
  lengthComputable :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ProgressEventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  lengthComputable v = fromUndefOrPrim
                         "ProgressEventInit.getlengthComputable"
                         prim__lengthComputable
                         prim__setLengthComputable
                         False
                         (v :> ProgressEventInit)


  export
  loaded :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ProgressEventInit (Types t)}
    -> t
    -> Attribute True Optional JSBits64
  loaded v = fromUndefOrPrim
               "ProgressEventInit.getloaded"
               prim__loaded
               prim__setLoaded
               0
               (v :> ProgressEventInit)


  export
  total_ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ProgressEventInit (Types t)}
    -> t
    -> Attribute True Optional JSBits64
  total_ v = fromUndefOrPrim
               "ProgressEventInit.gettotal"
               prim__total
               prim__setTotal
               0
               (v :> ProgressEventInit)
