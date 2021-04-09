module Web.Internal.XhrPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  export
  %foreign "browser:lambda:(a)=> new FormData(a)"
  prim__new : UndefOr HTMLFormElement -> PrimIO FormData
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.append(a b)"
  prim__append : FormData -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.append(a b c)"
  prim__append1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.delete(a)"
  prim__delete : FormData -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.getAll(a)"
  prim__getAll : FormData -> String -> PrimIO (Array FormDataEntryValue)
  
  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : FormData -> String -> PrimIO (Nullable FormDataEntryValue)
  
  export
  %foreign "browser:lambda:(x,a)=>x.has(a)"
  prim__has : FormData -> String -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.set(a b)"
  prim__set : FormData -> String -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.set(a b c)"
  prim__set1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()

namespace ProgressEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new ProgressEvent(a b)"
  prim__new : String -> UndefOr ProgressEventInit -> PrimIO ProgressEvent
  
  export
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : ProgressEvent -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : ProgressEvent -> PrimIO UInt64
  
  export
  %foreign "browser:lambda:x=>x.total"
  prim__total : ProgressEvent -> PrimIO UInt64

namespace XMLHttpRequest
  
  export
  %foreign "browser:lambda:()=> new XMLHttpRequest()"
  prim__new : PrimIO XMLHttpRequest
  
  export
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : XMLHttpRequest -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : XMLHttpRequest -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : XMLHttpRequest -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.response"
  prim__response : XMLHttpRequest -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : XMLHttpRequest -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : XMLHttpRequest -> PrimIO XMLHttpRequestResponseType
  
  export
  %foreign "browser:lambda:(x,v)=>{x.responseType = v}"
  prim__setResponseType :  XMLHttpRequest
                        -> XMLHttpRequestResponseType
                        -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : XMLHttpRequest -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : XMLHttpRequest -> PrimIO (Nullable Document)
  
  export
  %foreign "browser:lambda:x=>x.status"
  prim__status : XMLHttpRequest -> PrimIO UInt16
  
  export
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : XMLHttpRequest -> PrimIO ByteString
  
  export
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : XMLHttpRequest -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,v)=>{x.timeout = v}"
  prim__setTimeout : XMLHttpRequest -> UInt32 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.upload"
  prim__upload : XMLHttpRequest -> PrimIO XMLHttpRequestUpload
  
  export
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : XMLHttpRequest -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : XMLHttpRequest -> Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : XMLHttpRequest -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.getAllResponseHeaders()"
  prim__getAllResponseHeaders : XMLHttpRequest -> PrimIO ByteString
  
  export
  %foreign "browser:lambda:(x,a)=>x.getResponseHeader(a)"
  prim__getResponseHeader :  XMLHttpRequest
                          -> ByteString
                          -> PrimIO (Nullable ByteString)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.open(a b)"
  prim__open : XMLHttpRequest -> ByteString -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.open(a b c d e)"
  prim__open1 :  XMLHttpRequest
              -> ByteString
              -> String
              -> Boolean
              -> UndefOr (Nullable String)
              -> UndefOr (Nullable String)
              -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.overrideMimeType(a)"
  prim__overrideMimeType : XMLHttpRequest -> String -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a)=>x.send(a)"
  prim__send :  XMLHttpRequest
             -> UndefOr (Nullable (Union2 Document XMLHttpRequestBodyInit))
             -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setRequestHeader(a b)"
  prim__setRequestHeader :  XMLHttpRequest
                         -> ByteString
                         -> ByteString
                         -> PrimIO ()

namespace XMLHttpRequestEventTarget
  
  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout : XMLHttpRequestEventTarget -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ontimeout = v}"
  prim__setOntimeout : XMLHttpRequestEventTarget -> EventHandler -> PrimIO ()



--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  export
  %foreign "browser:lambda:(a,b,c)=> {lengthComputable: a,loaded: b,total: c}"
  prim__new :  UndefOr Boolean
            -> UndefOr UInt64
            -> UndefOr UInt64
            -> PrimIO ProgressEventInit
  
  export
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : ProgressEventInit -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.lengthComputable = v}"
  prim__setLengthComputable : ProgressEventInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : ProgressEventInit -> PrimIO (UndefOr UInt64)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.loaded = v}"
  prim__setLoaded : ProgressEventInit -> UndefOr UInt64 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.total"
  prim__total : ProgressEventInit -> PrimIO (UndefOr UInt64)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.total = v}"
  prim__setTotal : ProgressEventInit -> UndefOr UInt64 -> PrimIO ()