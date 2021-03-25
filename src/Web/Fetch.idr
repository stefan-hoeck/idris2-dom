module Web.Fetch

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Request
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.destination"
  prim__destination : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isHistoryNavigation"
  prim__isHistoryNavigation : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isReloadNavigation"
  prim__isReloadNavigation : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

namespace Response
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ok"
  prim__ok : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.redirected"
  prim__redirected : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace Body
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.bodyUsed"
  prim__bodyUsed : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  %foreign "browser:lambda:x=>x.body"
  prim__body : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.body = v}"
  prim__setBody : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cache"
  prim__cache : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cache = v}"
  prim__setCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.credentials"
  prim__credentials : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.credentials = v}"
  prim__setCredentials : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.integrity"
  prim__integrity : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.integrity = v}"
  prim__setIntegrity : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.keepalive"
  prim__keepalive : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.keepalive = v}"
  prim__setKeepalive : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.method = v}"
  prim__setMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.mode = v}"
  prim__setMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.redirect"
  prim__redirect : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.redirect = v}"
  prim__setRedirect : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrer"
  prim__referrer : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrer = v}"
  prim__setReferrer : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.signal"
  prim__signal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.signal = v}"
  prim__setSignal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.window"
  prim__window : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.window = v}"
  prim__setWindow : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ResponseInit
  
  %foreign "browser:lambda:x=>x.headers"
  prim__headers : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.headers = v}"
  prim__setHeaders : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.status"
  prim__status : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.status = v}"
  prim__setStatus : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.statusText"
  prim__statusText : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.statusText = v}"
  prim__setStatusText : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast Request Body where
  cast = believe_me

export
Cast Response Body where
  cast = believe_me