module Web.Serviceworker

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Client
  
  %foreign "browser:lambda:x=>x.frameType"
  prim__frameType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

namespace ExtendableMessageEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

namespace FetchEvent
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

namespace ServiceWorker
  
  %foreign "browser:lambda:x=>x.scriptURL"
  prim__scriptURL : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onstatechange"
  prim__onstatechange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onstatechange = v}"
  prim__setOnstatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ServiceWorkerContainer
  
  %foreign "browser:lambda:x=>x.controller"
  prim__controller : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oncontrollerchange"
  prim__oncontrollerchange : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oncontrollerchange = v}"
  prim__setOncontrollerchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ServiceWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.clients"
  prim__clients : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.registration"
  prim__registration : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onactivate"
  prim__onactivate : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onactivate = v}"
  prim__setOnactivate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onfetch"
  prim__onfetch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onfetch = v}"
  prim__setOnfetch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.oninstall"
  prim__oninstall : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.oninstall = v}"
  prim__setOninstall : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ServiceWorkerRegistration
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.installing"
  prim__installing : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.navigationPreload"
  prim__navigationPreload : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.waiting"
  prim__waiting : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.onupdatefound"
  prim__onupdatefound : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.onupdatefound = v}"
  prim__setOnupdatefound : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WindowClient
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.focused"
  prim__focused : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  %foreign "browser:lambda:x=>x.ignoreMethod"
  prim__ignoreMethod : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ignoreMethod = v}"
  prim__setIgnoreMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ignoreSearch"
  prim__ignoreSearch : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ignoreSearch = v}"
  prim__setIgnoreSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ignoreVary"
  prim__ignoreVary : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ignoreVary = v}"
  prim__setIgnoreVary : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ClientQueryOptions
  
  %foreign "browser:lambda:x=>x.includeUncontrolled"
  prim__includeUncontrolled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.includeUncontrolled = v}"
  prim__setIncludeUncontrolled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace ExtendableMessageEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FetchEventInit
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.request = v}"
  prim__setRequest : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clientId = v}"
  prim__setClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.handled = v}"
  prim__setHandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.preloadResponse = v}"
  prim__setPreloadResponse : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.replacesClientId = v}"
  prim__setReplacesClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.resultingClientId = v}"
  prim__setResultingClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MultiCacheQueryOptions
  
  %foreign "browser:lambda:x=>x.cacheName"
  prim__cacheName : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.cacheName = v}"
  prim__setCacheName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace NavigationPreloadState
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.headerValue"
  prim__headerValue : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.headerValue = v}"
  prim__setHeaderValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace RegistrationOptions
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.updateViaCache = v}"
  prim__setUpdateViaCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast ExtendableEvent Event where
  cast = believe_me

export
Cast ExtendableEventInit EventInit where
  cast = believe_me

export
Cast ExtendableMessageEvent ExtendableEvent where
  cast = believe_me

export
Cast ExtendableMessageEventInit ExtendableEventInit where
  cast = believe_me

export
Cast FetchEvent ExtendableEvent where
  cast = believe_me

export
Cast FetchEventInit ExtendableEventInit where
  cast = believe_me

export
Cast MultiCacheQueryOptions CacheQueryOptions where
  cast = believe_me

export
Cast ServiceWorker AbstractWorker where
  cast = believe_me

export
Cast ServiceWorker EventTarget where
  cast = believe_me

export
Cast ServiceWorkerContainer EventTarget where
  cast = believe_me

export
Cast ServiceWorkerGlobalScope WorkerGlobalScope where
  cast = believe_me

export
Cast ServiceWorkerRegistration EventTarget where
  cast = believe_me

export
Cast WindowClient Client where
  cast = believe_me