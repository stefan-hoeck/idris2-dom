module Web.Xhr
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  public export
  JSVal FormData where
    parents =  [ JSObject ]

    mixins =  []

namespace ProgressEvent
  
  public export
  JSVal ProgressEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr

  export
  lengthComputable : (obj : ProgressEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr

  export
  loaded : (obj : ProgressEvent) -> IO UInt64
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr

  export
  total_ : (obj : ProgressEvent) -> IO UInt64

namespace XMLHttpRequest
  
  public export
  JSVal XMLHttpRequest where
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
  readyState : (obj : XMLHttpRequest) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.response"
  prim__response : AnyPtr -> PrimIO AnyPtr

  export
  response : (obj : XMLHttpRequest) -> IO JSAny
  
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : AnyPtr -> PrimIO AnyPtr

  export
  responseText : (obj : XMLHttpRequest) -> IO String
  
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : AnyPtr -> PrimIO AnyPtr

  export
  responseURL : (obj : XMLHttpRequest) -> IO String
  
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : AnyPtr -> PrimIO AnyPtr

  export
  responseXML : (obj : XMLHttpRequest) -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  export
  status : (obj : XMLHttpRequest) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  export
  statusText : (obj : XMLHttpRequest) -> IO String
  
  %foreign "browser:lambda:x=>x.upload"
  prim__upload : AnyPtr -> PrimIO AnyPtr

  export
  upload : (obj : XMLHttpRequest) -> IO XMLHttpRequestUpload
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  export
  onreadystatechange : (obj : XMLHttpRequest) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange  = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnreadystatechange : (obj : XMLHttpRequest) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : AnyPtr -> PrimIO AnyPtr

  export
  responseType : (obj : XMLHttpRequest) -> IO XMLHttpRequestResponseType

  %foreign "browser:lambda:(x,v)=>{x.responseType  = v}"
  prim__setResponseType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResponseType :  (obj : XMLHttpRequest)
                  -> (v : XMLHttpRequestResponseType)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : AnyPtr -> PrimIO AnyPtr

  export
  timeout : (obj : XMLHttpRequest) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.timeout  = v}"
  prim__setTimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTimeout : (obj : XMLHttpRequest) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  export
  withCredentials : (obj : XMLHttpRequest) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.withCredentials  = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWithCredentials : (obj : XMLHttpRequest) -> (v : Bool) -> IO ()

namespace XMLHttpRequestEventTarget
  
  public export
  JSVal XMLHttpRequestEventTarget where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  export
  onabort : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onabort  = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnabort : (obj : XMLHttpRequestEventTarget) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  export
  onerror : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onerror  = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnerror : (obj : XMLHttpRequestEventTarget) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  export
  onload : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onload  = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnload : (obj : XMLHttpRequestEventTarget) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  export
  onloadend : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadend  = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadend :  (obj : XMLHttpRequestEventTarget)
               -> (v : EventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  export
  onloadstart : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onloadstart  = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnloadstart :  (obj : XMLHttpRequestEventTarget)
                 -> (v : EventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  export
  onprogress : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onprogress  = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnprogress :  (obj : XMLHttpRequestEventTarget)
                -> (v : EventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout : AnyPtr -> PrimIO AnyPtr

  export
  ontimeout : (obj : XMLHttpRequestEventTarget) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.ontimeout  = v}"
  prim__setOntimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOntimeout :  (obj : XMLHttpRequestEventTarget)
               -> (v : EventHandler)
               -> IO ()

namespace XMLHttpRequestUpload
  
  public export
  JSVal XMLHttpRequestUpload where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , JSObject ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  public export
  JSVal ProgressEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr

  export
  lengthComputable : (obj : ProgressEventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.lengthComputable  = v}"
  prim__setLengthComputable : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLengthComputable : (obj : ProgressEventInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr

  export
  loaded : (obj : ProgressEventInit) -> IO UInt64

  %foreign "browser:lambda:(x,v)=>{x.loaded  = v}"
  prim__setLoaded : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLoaded : (obj : ProgressEventInit) -> (v : UInt64) -> IO ()
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr

  export
  total_ : (obj : ProgressEventInit) -> IO UInt64

  %foreign "browser:lambda:(x,v)=>{x.total  = v}"
  prim__setTotal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTotal : (obj : ProgressEventInit) -> (v : UInt64) -> IO ()

