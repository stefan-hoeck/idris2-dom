module Web.Internal.XhrPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData

  export
  %foreign "browser:lambda:(a)=> new FormData(a)"
  prim__new : UndefOr HTMLFormElement -> PrimIO FormData

  export
  %foreign "browser:lambda:(x,a,b)=>x.append(a,b)"
  prim__append : FormData -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.append(a,b,c)"
  prim__append1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.delete(a)"
  prim__delete : FormData -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.getAll(a)"
  prim__getAll : FormData -> String -> PrimIO (Array (Union2 File String))

  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : FormData -> String -> PrimIO (Nullable (Union2 File String))

  export
  %foreign "browser:lambda:(x,a)=>x.has(a)"
  prim__has : FormData -> String -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a,b)=>x.set(a,b)"
  prim__set : FormData -> String -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.set(a,b,c)"
  prim__set1 : FormData -> String -> Blob -> UndefOr String -> PrimIO ()


namespace ProgressEvent

  export
  %foreign "browser:lambda:(a,b)=> new ProgressEvent(a,b)"
  prim__new : String -> UndefOr ProgressEventInit -> PrimIO ProgressEvent

  export
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : ProgressEvent -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : ProgressEvent -> PrimIO JSBits64

  export
  %foreign "browser:lambda:x=>x.total"
  prim__total : ProgressEvent -> PrimIO JSBits64


namespace XMLHttpRequest

  export
  %foreign "browser:lambda:()=> new XMLHttpRequest()"
  prim__new : PrimIO XMLHttpRequest

  export
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange :  XMLHttpRequest
                           -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange :  XMLHttpRequest
                              -> Nullable EventHandlerNonNull
                              -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : XMLHttpRequest -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.response"
  prim__response : XMLHttpRequest -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : XMLHttpRequest -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : XMLHttpRequest -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.responseType = v}"
  prim__setResponseType : XMLHttpRequest -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : XMLHttpRequest -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : XMLHttpRequest -> PrimIO (Nullable Document)

  export
  %foreign "browser:lambda:x=>x.status"
  prim__status : XMLHttpRequest -> PrimIO Bits16

  export
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : XMLHttpRequest -> PrimIO ByteString

  export
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : XMLHttpRequest -> PrimIO Bits32


  export
  %foreign "browser:lambda:(x,v)=>{x.timeout = v}"
  prim__setTimeout : XMLHttpRequest -> Bits32 -> PrimIO ()


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
  %foreign "browser:lambda:(x,a,b)=>x.open(a,b)"
  prim__open : XMLHttpRequest -> ByteString -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c,d,e)=>x.open(a,b,c,d,e)"
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
             -> UndefOr (Nullable (Union16 Document
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
             -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.setRequestHeader(a,b)"
  prim__setRequestHeader :  XMLHttpRequest
                         -> ByteString
                         -> ByteString
                         -> PrimIO ()


namespace XMLHttpRequestEventTarget

  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort :  XMLHttpRequestEventTarget
                -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort :  XMLHttpRequestEventTarget
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror :  XMLHttpRequestEventTarget
                -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror :  XMLHttpRequestEventTarget
                   -> Nullable EventHandlerNonNull
                   -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onload"
  prim__onload :  XMLHttpRequestEventTarget
               -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload :  XMLHttpRequestEventTarget
                  -> Nullable EventHandlerNonNull
                  -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend :  XMLHttpRequestEventTarget
                  -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend :  XMLHttpRequestEventTarget
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart :  XMLHttpRequestEventTarget
                    -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart :  XMLHttpRequestEventTarget
                       -> Nullable EventHandlerNonNull
                       -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress :  XMLHttpRequestEventTarget
                   -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress :  XMLHttpRequestEventTarget
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout :  XMLHttpRequestEventTarget
                  -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.ontimeout = v}"
  prim__setOntimeout :  XMLHttpRequestEventTarget
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()






--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit

  export
  %foreign "browser:lambda:(a,b,c)=> ({lengthComputable: a,loaded: b,total: c})"
  prim__new :  UndefOr Boolean
            -> UndefOr JSBits64
            -> UndefOr JSBits64
            -> PrimIO ProgressEventInit

  export
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : ProgressEventInit -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.lengthComputable = v}"
  prim__setLengthComputable : ProgressEventInit -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : ProgressEventInit -> PrimIO (UndefOr JSBits64)


  export
  %foreign "browser:lambda:(x,v)=>{x.loaded = v}"
  prim__setLoaded : ProgressEventInit -> UndefOr JSBits64 -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.total"
  prim__total : ProgressEventInit -> PrimIO (UndefOr JSBits64)


  export
  %foreign "browser:lambda:(x,v)=>{x.total = v}"
  prim__setTotal : ProgressEventInit -> UndefOr JSBits64 -> PrimIO ()
