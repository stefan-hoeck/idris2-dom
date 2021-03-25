module Web.Xhr

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace ProgressEvent
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.total"
  prim__total : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.response"
  prim__response : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.responseText"
  prim__responseText : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.responseURL"
  prim__responseURL : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.responseXML"
  prim__responseXML : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.upload"
  prim__upload : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onreadystatechange"
  prim__onreadystatechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onreadystatechange = v}"
  prim__setOnreadystatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.responseType"
  prim__responseType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.responseType = v}"
  prim__setResponseType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.timeout"
  prim__timeout : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.timeout = v}"
  prim__setTimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.withCredentials"
  prim__withCredentials : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
  prim__setWithCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace XMLHttpRequestEventTarget
  
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onload"
  prim__onload : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onload = v}"
  prim__setOnload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadend"
  prim__onloadend : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadend = v}"
  prim__setOnloadend : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onloadstart"
  prim__onloadstart : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onloadstart = v}"
  prim__setOnloadstart : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onprogress"
  prim__onprogress : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onprogress = v}"
  prim__setOnprogress : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ontimeout"
  prim__ontimeout : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ontimeout = v}"
  prim__setOntimeout : AnyPtr -> AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  %foreign "browser:lambda:x=>x.lengthComputable"
  prim__lengthComputable : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lengthComputable = v}"
  prim__setLengthComputable : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.loaded"
  prim__loaded : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.loaded = v}"
  prim__setLoaded : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.total"
  prim__total : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.total = v}"
  prim__setTotal : AnyPtr -> AnyPtr -> PrimIO AnyPtr



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