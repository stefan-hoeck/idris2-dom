module Web.Xhr

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ProgressEvent
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr
  
  export
  lengthComputable :  Cast progressEvent ProgressEvent
                   => ToJS ProgressEvent
                   => (obj : progressEvent)
                   -> IO Bool
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr
  
  export
  loaded :  Cast progressEvent ProgressEvent
         => ToJS ProgressEvent
         => (obj : progressEvent)
         -> IO UInt64
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr
  
  export
  total_ :  Cast progressEvent ProgressEvent
         => ToJS ProgressEvent
         => (obj : progressEvent)
         -> IO UInt64

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
  UNSENT = 0o0
  
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : AnyPtr -> PrimIO AnyPtr
  
  export
  readyState :  Cast xMLHttpRequest XMLHttpRequest
             => ToJS XMLHttpRequest
             => (obj : xMLHttpRequest)
             -> IO UInt16
  
  %foreign "browser:lambda:x=>x.response"
  prim__response : AnyPtr -> PrimIO AnyPtr
  
  export
  response :  Cast xMLHttpRequest XMLHttpRequest
           => ToJS XMLHttpRequest
           => (obj : xMLHttpRequest)
           -> IO JSAny
  
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : AnyPtr -> PrimIO AnyPtr
  
  export
  responseText :  Cast xMLHttpRequest XMLHttpRequest
               => ToJS XMLHttpRequest
               => (obj : xMLHttpRequest)
               -> IO String
  
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : AnyPtr -> PrimIO AnyPtr
  
  export
  responseURL :  Cast xMLHttpRequest XMLHttpRequest
              => ToJS XMLHttpRequest
              => (obj : xMLHttpRequest)
              -> IO String
  
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : AnyPtr -> PrimIO AnyPtr
  
  export
  responseXML :  Cast xMLHttpRequest XMLHttpRequest
              => ToJS XMLHttpRequest
              => (obj : xMLHttpRequest)
              -> IO (Maybe Document)
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  export
  status :  Cast xMLHttpRequest XMLHttpRequest
         => ToJS XMLHttpRequest
         => (obj : xMLHttpRequest)
         -> IO UInt16
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr
  
  export
  statusText :  Cast xMLHttpRequest XMLHttpRequest
             => ToJS XMLHttpRequest
             => (obj : xMLHttpRequest)
             -> IO String
  
  %foreign "browser:lambda:x=>x.upload"
  prim__upload : AnyPtr -> PrimIO AnyPtr
  
  export
  upload :  Cast xMLHttpRequest XMLHttpRequest
         => ToJS XMLHttpRequest
         => (obj : xMLHttpRequest)
         -> IO XMLHttpRequestUpload
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onreadystatechange :  Cast xMLHttpRequest XMLHttpRequest
                     => ToJS XMLHttpRequest
                     => (obj : xMLHttpRequest)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnreadystatechange :  Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => Cast xMLHttpRequest XMLHttpRequest
                        => ToJS XMLHttpRequest
                        => (obj : xMLHttpRequest)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : AnyPtr -> PrimIO AnyPtr
  
  export
  responseType :  Cast xMLHttpRequest XMLHttpRequest
               => ToJS XMLHttpRequest
               => (obj : xMLHttpRequest)
               -> IO XMLHttpRequestResponseType
  
  %foreign "browser:lambda:(x,v)=>{x.responseType = v}"
  prim__setResponseType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResponseType :  Cast xMLHttpRequest XMLHttpRequest
                  => ToJS XMLHttpRequest
                  => Cast xMLHttpRequestResponseType XMLHttpRequestResponseType
                  => ToJS XMLHttpRequestResponseType
                  => (obj : xMLHttpRequest)
                  -> (v : xMLHttpRequestResponseType)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : AnyPtr -> PrimIO AnyPtr
  
  export
  timeout :  Cast xMLHttpRequest XMLHttpRequest
          => ToJS XMLHttpRequest
          => (obj : xMLHttpRequest)
          -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.timeout = v}"
  prim__setTimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTimeout :  Cast xMLHttpRequest XMLHttpRequest
             => ToJS XMLHttpRequest
             => (obj : xMLHttpRequest)
             -> (v : UInt32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr
  
  export
  withCredentials :  Cast xMLHttpRequest XMLHttpRequest
                  => ToJS XMLHttpRequest
                  => (obj : xMLHttpRequest)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWithCredentials :  Cast xMLHttpRequest XMLHttpRequest
                     => ToJS XMLHttpRequest
                     => (obj : xMLHttpRequest)
                     -> (v : Bool)
                     -> IO ()

namespace XMLHttpRequestEventTarget
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr
  
  export
  onabort :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
          => ToJS XMLHttpRequestEventTarget
          => (obj : xMLHttpRequestEventTarget)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnabort :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
             => ToJS XMLHttpRequestEventTarget
             => (obj : xMLHttpRequestEventTarget)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onerror :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
          => ToJS XMLHttpRequestEventTarget
          => (obj : xMLHttpRequestEventTarget)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnerror :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
             => ToJS XMLHttpRequestEventTarget
             => (obj : xMLHttpRequestEventTarget)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr
  
  export
  onload :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
         => ToJS XMLHttpRequestEventTarget
         => (obj : xMLHttpRequestEventTarget)
         -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnload :  Cast eventHandler EventHandler
            => ToJS EventHandler
            => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
            => ToJS XMLHttpRequestEventTarget
            => (obj : xMLHttpRequestEventTarget)
            -> (v : eventHandler)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadend :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
            => ToJS XMLHttpRequestEventTarget
            => (obj : xMLHttpRequestEventTarget)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadend :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
               => ToJS XMLHttpRequestEventTarget
               => (obj : xMLHttpRequestEventTarget)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr
  
  export
  onloadstart :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
              => ToJS XMLHttpRequestEventTarget
              => (obj : xMLHttpRequestEventTarget)
              -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnloadstart :  Cast eventHandler EventHandler
                 => ToJS EventHandler
                 => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
                 => ToJS XMLHttpRequestEventTarget
                 => (obj : xMLHttpRequestEventTarget)
                 -> (v : eventHandler)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr
  
  export
  onprogress :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
             => ToJS XMLHttpRequestEventTarget
             => (obj : xMLHttpRequestEventTarget)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnprogress :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
                => ToJS XMLHttpRequestEventTarget
                => (obj : xMLHttpRequestEventTarget)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout : AnyPtr -> PrimIO AnyPtr
  
  export
  ontimeout :  Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
            => ToJS XMLHttpRequestEventTarget
            => (obj : xMLHttpRequestEventTarget)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.ontimeout = v}"
  prim__setOntimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOntimeout :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast xMLHttpRequestEventTarget XMLHttpRequestEventTarget
               => ToJS XMLHttpRequestEventTarget
               => (obj : xMLHttpRequestEventTarget)
               -> (v : eventHandler)
               -> IO ()


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr
  
  export
  lengthComputable :  Cast progressEventInit ProgressEventInit
                   => ToJS ProgressEventInit
                   => (obj : progressEventInit)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.lengthComputable = v}"
  prim__setLengthComputable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLengthComputable :  Cast progressEventInit ProgressEventInit
                      => ToJS ProgressEventInit
                      => (obj : progressEventInit)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr
  
  export
  loaded :  Cast progressEventInit ProgressEventInit
         => ToJS ProgressEventInit
         => (obj : progressEventInit)
         -> IO UInt64
  
  %foreign "browser:lambda:(x,v)=>{x.loaded = v}"
  prim__setLoaded : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLoaded :  Cast progressEventInit ProgressEventInit
            => ToJS ProgressEventInit
            => (obj : progressEventInit)
            -> (v : UInt64)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.total"
  prim__total_ : AnyPtr -> PrimIO AnyPtr
  
  export
  total_ :  Cast progressEventInit ProgressEventInit
         => ToJS ProgressEventInit
         => (obj : progressEventInit)
         -> IO UInt64
  
  %foreign "browser:lambda:(x,v)=>{x.total = v}"
  prim__setTotal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTotal :  Cast progressEventInit ProgressEventInit
           => ToJS ProgressEventInit
           => (obj : progressEventInit)
           -> (v : UInt64)
           -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ProgressEvent Event where
  cast = believe_me

export
Cast ProgressEventInit EventInit where
  cast = believe_me

export
Cast XMLHttpRequest XMLHttpRequestEventTarget where
  cast = believe_me

export
Cast XMLHttpRequestEventTarget EventTarget where
  cast = believe_me

export
Cast XMLHttpRequestUpload XMLHttpRequestEventTarget where
  cast = believe_me