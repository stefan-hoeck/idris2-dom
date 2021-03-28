module Web.Xhr
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  public export
  JSType FormData where
    parents =  [ JSObject ]

    mixins =  []

namespace ProgressEvent
  
  public export
  JSType ProgressEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr

  export
  lengthComputable : (obj : ProgressEvent) -> JSIO Bool
  lengthComputable a =
    primToJSIO "lengthComputable" $ prim__lengthComputable (toJS a)
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr

  export
  loaded : (obj : ProgressEvent) -> JSIO UInt64
  loaded a =   primToJSIO "loaded" $ prim__loaded (toJS a)
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr

  export
  total_ : (obj : ProgressEvent) -> JSIO UInt64
  total_ a =   primToJSIO "total_" $ prim__total_ (toJS a)

namespace XMLHttpRequest
  
  public export
  JSType XMLHttpRequest where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , JSObject ]

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
  UNSENT = 0o0
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr

  export
  readyState : (obj : XMLHttpRequest) -> JSIO UInt16
  readyState a =   primToJSIO "readyState" $ prim__readyState (toJS a)
  
  %foreign "browser:lambda:x=>x.response"
  prim__response : AnyPtr -> PrimIO AnyPtr

  export
  response : (obj : XMLHttpRequest) -> JSIO Any
  response a =   primToJSIO "response" $ prim__response (toJS a)
  
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : AnyPtr -> PrimIO AnyPtr

  export
  responseText : (obj : XMLHttpRequest) -> JSIO String
  responseText a =   primToJSIO "responseText" $ prim__responseText (toJS a)
  
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : AnyPtr -> PrimIO AnyPtr

  export
  responseURL : (obj : XMLHttpRequest) -> JSIO String
  responseURL a =   primToJSIO "responseURL" $ prim__responseURL (toJS a)
  
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : AnyPtr -> PrimIO AnyPtr

  export
  responseXML : (obj : XMLHttpRequest) -> JSIO (Maybe Document)
  responseXML a =   primToJSIO "responseXML" $ prim__responseXML (toJS a)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : XMLHttpRequest) -> JSIO UInt16
  status a =   primToJSIO "status" $ prim__status (toJS a)
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : XMLHttpRequest) -> JSIO String
  statusText a =   primToJSIO "statusText" $ prim__statusText (toJS a)
  
  %foreign "browser:lambda:x=>x.upload"
  prim__upload : AnyPtr -> PrimIO AnyPtr

  export
  upload : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestUpload
  upload a =   primToJSIO "upload" $ prim__upload (toJS a)
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  export
  onreadystatechange : (obj : XMLHttpRequest) -> JSIO EventHandler
  onreadystatechange a =
    primToJSIO "onreadystatechange" $ prim__onreadystatechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange  = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreadystatechange :  (obj : XMLHttpRequest)
                        -> (v : EventHandler)
                        -> JSIO ()
  setOnreadystatechange a b =
    primToJSIO "setOnreadystatechange" $ prim__setOnreadystatechange (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : AnyPtr -> PrimIO AnyPtr

  export
  responseType : (obj : XMLHttpRequest) -> JSIO XMLHttpRequestResponseType
  responseType a =   primToJSIO "responseType" $ prim__responseType (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.responseType  = v}"
  prim__setResponseType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResponseType :  (obj : XMLHttpRequest)
                  -> (v : XMLHttpRequestResponseType)
                  -> JSIO ()
  setResponseType a b =
    primToJSIO "setResponseType" $ prim__setResponseType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : AnyPtr -> PrimIO AnyPtr

  export
  timeout : (obj : XMLHttpRequest) -> JSIO UInt32
  timeout a =   primToJSIO "timeout" $ prim__timeout (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.timeout  = v}"
  prim__setTimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimeout : (obj : XMLHttpRequest) -> (v : UInt32) -> JSIO ()
  setTimeout a b =
    primToJSIO "setTimeout" $ prim__setTimeout (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : XMLHttpRequest) -> JSIO Bool
  withCredentials a =
    primToJSIO "withCredentials" $ prim__withCredentials (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.withCredentials  = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWithCredentials : (obj : XMLHttpRequest) -> (v : Bool) -> JSIO ()
  setWithCredentials a b =
    primToJSIO "setWithCredentials" $ prim__setWithCredentials (toJS a) (toJS b)

namespace XMLHttpRequestEventTarget
  
  public export
  JSType XMLHttpRequestEventTarget where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onabort a =   primToJSIO "onabort" $ prim__onabort (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort :  (obj : XMLHttpRequestEventTarget)
             -> (v : EventHandler)
             -> JSIO ()
  setOnabort a b =
    primToJSIO "setOnabort" $ prim__setOnabort (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onerror a =   primToJSIO "onerror" $ prim__onerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror :  (obj : XMLHttpRequestEventTarget)
             -> (v : EventHandler)
             -> JSIO ()
  setOnerror a b =
    primToJSIO "setOnerror" $ prim__setOnerror (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onload a =   primToJSIO "onload" $ prim__onload (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : XMLHttpRequestEventTarget) -> (v : EventHandler) -> JSIO ()
  setOnload a b =   primToJSIO "setOnload" $ prim__setOnload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  export
  onloadend : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onloadend a =   primToJSIO "onloadend" $ prim__onloadend (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadend  = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadend :  (obj : XMLHttpRequestEventTarget)
               -> (v : EventHandler)
               -> JSIO ()
  setOnloadend a b =
    primToJSIO "setOnloadend" $ prim__setOnloadend (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onloadstart a =   primToJSIO "onloadstart" $ prim__onloadstart (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart :  (obj : XMLHttpRequestEventTarget)
                 -> (v : EventHandler)
                 -> JSIO ()
  setOnloadstart a b =
    primToJSIO "setOnloadstart" $ prim__setOnloadstart (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  onprogress a =   primToJSIO "onprogress" $ prim__onprogress (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress :  (obj : XMLHttpRequestEventTarget)
                -> (v : EventHandler)
                -> JSIO ()
  setOnprogress a b =
    primToJSIO "setOnprogress" $ prim__setOnprogress (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout : AnyPtr -> PrimIO AnyPtr

  export
  ontimeout : (obj : XMLHttpRequestEventTarget) -> JSIO EventHandler
  ontimeout a =   primToJSIO "ontimeout" $ prim__ontimeout (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ontimeout  = v}"
  prim__setOntimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntimeout :  (obj : XMLHttpRequestEventTarget)
               -> (v : EventHandler)
               -> JSIO ()
  setOntimeout a b =
    primToJSIO "setOntimeout" $ prim__setOntimeout (toJS a) (toJS b)

namespace XMLHttpRequestUpload
  
  public export
  JSType XMLHttpRequestUpload where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  public export
  JSType ProgressEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr

  export
  lengthComputable : (obj : ProgressEventInit) -> JSIO Bool
  lengthComputable a =
    primToJSIO "lengthComputable" $ prim__lengthComputable (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lengthComputable  = v}"
  prim__setLengthComputable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLengthComputable : (obj : ProgressEventInit) -> (v : Bool) -> JSIO ()
  setLengthComputable a b =
    primToJSIO "setLengthComputable" $ prim__setLengthComputable (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr

  export
  loaded : (obj : ProgressEventInit) -> JSIO UInt64
  loaded a =   primToJSIO "loaded" $ prim__loaded (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.loaded  = v}"
  prim__setLoaded : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoaded : (obj : ProgressEventInit) -> (v : UInt64) -> JSIO ()
  setLoaded a b =   primToJSIO "setLoaded" $ prim__setLoaded (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr

  export
  total_ : (obj : ProgressEventInit) -> JSIO UInt64
  total_ a =   primToJSIO "total_" $ prim__total_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.total  = v}"
  prim__setTotal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTotal : (obj : ProgressEventInit) -> (v : UInt64) -> JSIO ()
  setTotal a b =   primToJSIO "setTotal" $ prim__setTotal (toJS a) (toJS b)

