module Web.Internal.ServiceworkerPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Cache
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.addAll(a b)"
  prim__addAll : Cache -> Array RequestInfo -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a b)"
  prim__add : Cache -> RequestInfo -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.delete(a b c)"
  prim__delete :  Cache
               -> RequestInfo
               -> UndefOr CacheQueryOptions
               -> PrimIO (Promise Boolean)
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.keys(a b c)"
  prim__keys :  Cache
             -> UndefOr RequestInfo
             -> UndefOr CacheQueryOptions
             -> PrimIO (Promise (Array Request))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.matchAll(a b c)"
  prim__matchAll :  Cache
                 -> UndefOr RequestInfo
                 -> UndefOr CacheQueryOptions
                 -> PrimIO (Promise (Array Response))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.match(a b c)"
  prim__match :  Cache
              -> RequestInfo
              -> UndefOr CacheQueryOptions
              -> PrimIO (Promise (Union2 Response Undefined))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.put(a b c)"
  prim__put : Cache -> RequestInfo -> Response -> PrimIO (Promise Undefined)

namespace CacheStorage
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.delete(a b)"
  prim__delete : CacheStorage -> String -> PrimIO (Promise Boolean)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.has(a b)"
  prim__has : CacheStorage -> String -> PrimIO (Promise Boolean)
  
  export
  %foreign "browser:lambda:(x,a)=>x.keys(a)"
  prim__keys : CacheStorage -> PrimIO (Promise (Array String))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.match(a b c)"
  prim__match :  CacheStorage
              -> RequestInfo
              -> UndefOr MultiCacheQueryOptions
              -> PrimIO (Promise (Union2 Response Undefined))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.open(a b)"
  prim__open : CacheStorage -> String -> PrimIO (Promise Cache)

namespace Client
  
  export
  %foreign "browser:lambda:x=>x.frameType"
  prim__frameType : Client -> PrimIO FrameType
  
  export
  %foreign "browser:lambda:x=>x.id"
  prim__id : Client -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : Client -> PrimIO ClientType
  
  export
  %foreign "browser:lambda:x=>x.url"
  prim__url : Client -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a b c)"
  prim__postMessage : Client -> AnyPtr -> Array Object -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a b c)"
  prim__postMessage1 :  Client
                     -> AnyPtr
                     -> UndefOr PostMessageOptions
                     -> PrimIO ()

namespace Clients
  
  export
  %foreign "browser:lambda:(x,a)=>x.claim(a)"
  prim__claim : Clients -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.get(a b)"
  prim__get : Clients -> String -> PrimIO (Promise (Union2 Client Undefined))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.matchAll(a b)"
  prim__matchAll :  Clients
                 -> UndefOr ClientQueryOptions
                 -> PrimIO (Promise (Array Client))
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.openWindow(a b)"
  prim__openWindow :  Clients
                   -> String
                   -> PrimIO (Promise (Nullable WindowClient))

namespace ExtendableEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new ExtendableEvent(a b)"
  prim__new : String -> UndefOr ExtendableEventInit -> PrimIO ExtendableEvent
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.waitUntil(a b)"
  prim__waitUntil : ExtendableEvent -> Promise AnyPtr -> PrimIO ()

namespace ExtendableMessageEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new ExtendableMessageEvent(a b)"
  prim__new :  String
            -> UndefOr ExtendableMessageEventInit
            -> PrimIO ExtendableMessageEvent
  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : ExtendableMessageEvent -> PrimIO AnyPtr
  
  export
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : ExtendableMessageEvent -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : ExtendableMessageEvent -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : ExtendableMessageEvent -> PrimIO (Array MessagePort)
  
  export
  %foreign "browser:lambda:x=>x.source"
  prim__source :  ExtendableMessageEvent
               -> PrimIO (Nullable (Union3 Client ServiceWorker MessagePort))

namespace FetchEvent
  
  export
  %foreign "browser:lambda:(a,b)=> new FetchEvent(a b)"
  prim__new : String -> FetchEventInit -> PrimIO FetchEvent
  
  export
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : FetchEvent -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : FetchEvent -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : FetchEvent -> PrimIO (Promise AnyPtr)
  
  export
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : FetchEvent -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.request"
  prim__request : FetchEvent -> PrimIO Request
  
  export
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : FetchEvent -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.respondWith(a b)"
  prim__respondWith : FetchEvent -> Promise Response -> PrimIO ()

namespace NavigationPreloadManager
  
  export
  %foreign "browser:lambda:(x,a)=>x.disable(a)"
  prim__disable : NavigationPreloadManager -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.enable(a)"
  prim__enable : NavigationPreloadManager -> PrimIO (Promise Undefined)
  
  export
  %foreign "browser:lambda:(x,a)=>x.getState(a)"
  prim__getState :  NavigationPreloadManager
                 -> PrimIO (Promise NavigationPreloadState)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setHeaderValue(a b)"
  prim__setHeaderValue :  NavigationPreloadManager
                       -> ByteString
                       -> PrimIO (Promise Undefined)

namespace ServiceWorker
  
  export
  %foreign "browser:lambda:x=>x.onstatechange"
  prim__onstatechange : ServiceWorker -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onstatechange = v}"
  prim__setOnstatechange : ServiceWorker -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.scriptURL"
  prim__scriptURL : ServiceWorker -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.state"
  prim__state : ServiceWorker -> PrimIO ServiceWorkerState
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a b c)"
  prim__postMessage : ServiceWorker -> AnyPtr -> Array Object -> PrimIO ()
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.postMessage(a b c)"
  prim__postMessage1 :  ServiceWorker
                     -> AnyPtr
                     -> UndefOr PostMessageOptions
                     -> PrimIO ()

namespace ServiceWorkerContainer
  
  export
  %foreign "browser:lambda:x=>x.controller"
  prim__controller : ServiceWorkerContainer -> PrimIO (Nullable ServiceWorker)
  
  export
  %foreign "browser:lambda:x=>x.oncontrollerchange"
  prim__oncontrollerchange : ServiceWorkerContainer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.oncontrollerchange = v}"
  prim__setOncontrollerchange :  ServiceWorkerContainer
                              -> EventHandler
                              -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : ServiceWorkerContainer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : ServiceWorkerContainer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : ServiceWorkerContainer -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : ServiceWorkerContainer -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ready"
  prim__ready :  ServiceWorkerContainer
              -> PrimIO (Promise ServiceWorkerRegistration)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getRegistration(a b)"
  prim__getRegistration :  ServiceWorkerContainer
                        -> UndefOr String
                        -> PrimIO (Promise (Union2 ServiceWorkerRegistration
                                                   Undefined))
  
  export
  %foreign "browser:lambda:(x,a)=>x.getRegistrations(a)"
  prim__getRegistrations :  ServiceWorkerContainer
                         -> PrimIO (Promise (Array ServiceWorkerRegistration))
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.register(a b c)"
  prim__register :  ServiceWorkerContainer
                 -> String
                 -> UndefOr RegistrationOptions
                 -> PrimIO (Promise ServiceWorkerRegistration)
  
  export
  %foreign "browser:lambda:(x,a)=>x.startMessages(a)"
  prim__startMessages : ServiceWorkerContainer -> PrimIO ()

namespace ServiceWorkerGlobalScope
  
  export
  %foreign "browser:lambda:x=>x.clients"
  prim__clients : ServiceWorkerGlobalScope -> PrimIO Clients
  
  export
  %foreign "browser:lambda:x=>x.onactivate"
  prim__onactivate : ServiceWorkerGlobalScope -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onactivate = v}"
  prim__setOnactivate : ServiceWorkerGlobalScope -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onfetch"
  prim__onfetch : ServiceWorkerGlobalScope -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onfetch = v}"
  prim__setOnfetch : ServiceWorkerGlobalScope -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.oninstall"
  prim__oninstall : ServiceWorkerGlobalScope -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.oninstall = v}"
  prim__setOninstall : ServiceWorkerGlobalScope -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : ServiceWorkerGlobalScope -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : ServiceWorkerGlobalScope -> EventHandler -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : ServiceWorkerGlobalScope -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror :  ServiceWorkerGlobalScope
                          -> EventHandler
                          -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.registration"
  prim__registration :  ServiceWorkerGlobalScope
                     -> PrimIO ServiceWorkerRegistration
  
  export
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : ServiceWorkerGlobalScope -> PrimIO ServiceWorker
  
  export
  %foreign "browser:lambda:(x,a)=>x.skipWaiting(a)"
  prim__skipWaiting : ServiceWorkerGlobalScope -> PrimIO (Promise Undefined)

namespace ServiceWorkerRegistration
  
  export
  %foreign "browser:lambda:x=>x.active"
  prim__active : ServiceWorkerRegistration -> PrimIO (Nullable ServiceWorker)
  
  export
  %foreign "browser:lambda:x=>x.installing"
  prim__installing :  ServiceWorkerRegistration
                   -> PrimIO (Nullable ServiceWorker)
  
  export
  %foreign "browser:lambda:x=>x.navigationPreload"
  prim__navigationPreload :  ServiceWorkerRegistration
                          -> PrimIO NavigationPreloadManager
  
  export
  %foreign "browser:lambda:x=>x.onupdatefound"
  prim__onupdatefound : ServiceWorkerRegistration -> PrimIO EventHandler
  
  export
  %foreign "browser:lambda:(x,v)=>{x.onupdatefound = v}"
  prim__setOnupdatefound :  ServiceWorkerRegistration
                         -> EventHandler
                         -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : ServiceWorkerRegistration -> PrimIO String
  
  export
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache :  ServiceWorkerRegistration
                       -> PrimIO ServiceWorkerUpdateViaCache
  
  export
  %foreign "browser:lambda:x=>x.waiting"
  prim__waiting : ServiceWorkerRegistration -> PrimIO (Nullable ServiceWorker)
  
  export
  %foreign "browser:lambda:(x,a)=>x.unregister(a)"
  prim__unregister : ServiceWorkerRegistration -> PrimIO (Promise Boolean)
  
  export
  %foreign "browser:lambda:(x,a)=>x.update(a)"
  prim__update : ServiceWorkerRegistration -> PrimIO (Promise Undefined)

namespace WindowClient
  
  export
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : WindowClient -> PrimIO (Array String)
  
  export
  %foreign "browser:lambda:x=>x.focused"
  prim__focused : WindowClient -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : WindowClient -> PrimIO VisibilityState
  
  export
  %foreign "browser:lambda:(x,a)=>x.focus(a)"
  prim__focus : WindowClient -> PrimIO (Promise WindowClient)
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.navigate(a b)"
  prim__navigate :  WindowClient
                 -> String
                 -> PrimIO (Promise (Nullable WindowClient))


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  export
  %foreign "browser:lambda:x=>x.ignoreMethod"
  prim__ignoreMethod : CacheQueryOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ignoreMethod = v}"
  prim__setIgnoreMethod : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ignoreSearch"
  prim__ignoreSearch : CacheQueryOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ignoreSearch = v}"
  prim__setIgnoreSearch : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ignoreVary"
  prim__ignoreVary : CacheQueryOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ignoreVary = v}"
  prim__setIgnoreVary : CacheQueryOptions -> UndefOr Boolean -> PrimIO ()

namespace ClientQueryOptions
  
  export
  %foreign "browser:lambda:x=>x.includeUncontrolled"
  prim__includeUncontrolled : ClientQueryOptions -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.includeUncontrolled = v}"
  prim__setIncludeUncontrolled :  ClientQueryOptions
                               -> UndefOr Boolean
                               -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : ClientQueryOptions -> PrimIO (UndefOr ClientType)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : ClientQueryOptions -> UndefOr ClientType -> PrimIO ()


namespace ExtendableMessageEventInit
  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : ExtendableMessageEventInit -> PrimIO (UndefOr AnyPtr)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : ExtendableMessageEventInit -> UndefOr AnyPtr -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : ExtendableMessageEventInit -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId :  ExtendableMessageEventInit
                       -> UndefOr String
                       -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : ExtendableMessageEventInit -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : ExtendableMessageEventInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.ports"
  prim__ports :  ExtendableMessageEventInit
              -> PrimIO (UndefOr (Array MessagePort))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts :  ExtendableMessageEventInit
                 -> UndefOr (Array MessagePort)
                 -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.source"
  prim__source :  ExtendableMessageEventInit
               -> PrimIO (UndefOr (Nullable (Union3 Client
                                                    ServiceWorker
                                                    MessagePort)))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource :  ExtendableMessageEventInit
                  -> UndefOr (Nullable (Union3 Client
                                               ServiceWorker
                                               MessagePort))
                  -> PrimIO ()

namespace FetchEventInit
  
  export
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : FetchEventInit -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.clientId = v}"
  prim__setClientId : FetchEventInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : FetchEventInit -> PrimIO (UndefOr (Promise Undefined))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.handled = v}"
  prim__setHandled : FetchEventInit -> UndefOr (Promise Undefined) -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : FetchEventInit -> PrimIO (UndefOr (Promise AnyPtr))
  
  export
  %foreign "browser:lambda:(x,v)=>{x.preloadResponse = v}"
  prim__setPreloadResponse :  FetchEventInit
                           -> UndefOr (Promise AnyPtr)
                           -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : FetchEventInit -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.replacesClientId = v}"
  prim__setReplacesClientId : FetchEventInit -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.request"
  prim__request : FetchEventInit -> PrimIO Request
  
  export
  %foreign "browser:lambda:(x,v)=>{x.request = v}"
  prim__setRequest : FetchEventInit -> Request -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : FetchEventInit -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.resultingClientId = v}"
  prim__setResultingClientId : FetchEventInit -> UndefOr String -> PrimIO ()

namespace MultiCacheQueryOptions
  
  export
  %foreign "browser:lambda:x=>x.cacheName"
  prim__cacheName : MultiCacheQueryOptions -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.cacheName = v}"
  prim__setCacheName : MultiCacheQueryOptions -> UndefOr String -> PrimIO ()

namespace NavigationPreloadState
  
  export
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : NavigationPreloadState -> PrimIO (UndefOr Boolean)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : NavigationPreloadState -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.headerValue"
  prim__headerValue : NavigationPreloadState -> PrimIO (UndefOr ByteString)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.headerValue = v}"
  prim__setHeaderValue :  NavigationPreloadState
                       -> UndefOr ByteString
                       -> PrimIO ()

namespace RegistrationOptions
  
  export
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : RegistrationOptions -> PrimIO (UndefOr String)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : RegistrationOptions -> UndefOr String -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : RegistrationOptions -> PrimIO (UndefOr WorkerType)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : RegistrationOptions -> UndefOr WorkerType -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache :  RegistrationOptions
                       -> PrimIO (UndefOr ServiceWorkerUpdateViaCache)
  
  export
  %foreign "browser:lambda:(x,v)=>{x.updateViaCache = v}"
  prim__setUpdateViaCache :  RegistrationOptions
                          -> UndefOr ServiceWorkerUpdateViaCache
                          -> PrimIO ()