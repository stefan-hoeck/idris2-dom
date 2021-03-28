module Web.Serviceworker
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Cache
  
  public export
  JSType Cache where
    parents =  [ JSObject ]

    mixins =  []

namespace CacheStorage
  
  public export
  JSType CacheStorage where
    parents =  [ JSObject ]

    mixins =  []

namespace Client
  
  public export
  JSType Client where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.frameType"
  prim__frameType : AnyPtr -> PrimIO AnyPtr

  export
  frameType : (obj : Client) -> IO FrameType
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Client) -> IO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Client) -> IO ClientType
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Client) -> IO String

namespace Clients
  
  public export
  JSType Clients where
    parents =  [ JSObject ]

    mixins =  []

namespace ExtendableEvent
  
  public export
  JSType ExtendableEvent where
    parents =  [ Event , JSObject ]

    mixins =  []

namespace ExtendableMessageEvent
  
  public export
  JSType ExtendableMessageEvent where
    parents =  [ ExtendableEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : ExtendableMessageEvent) -> IO Any
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : ExtendableMessageEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : ExtendableMessageEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : ExtendableMessageEvent) -> IO (JSArray MessagePort)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source :  (obj : ExtendableMessageEvent)
         -> IO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))

namespace FetchEvent
  
  public export
  JSType FetchEvent where
    parents =  [ ExtendableEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr

  export
  clientId : (obj : FetchEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr

  export
  handled : (obj : FetchEvent) -> IO (JSPromise Undefined)
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr

  export
  preloadResponse : (obj : FetchEvent) -> IO (JSPromise Any)
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr

  export
  replacesClientId : (obj : FetchEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr

  export
  request : (obj : FetchEvent) -> IO Request
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

  export
  resultingClientId : (obj : FetchEvent) -> IO String

namespace NavigationPreloadManager
  
  public export
  JSType NavigationPreloadManager where
    parents =  [ JSObject ]

    mixins =  []

namespace ServiceWorker
  
  public export
  JSType ServiceWorker where
    parents =  [ EventTarget , JSObject ]

    mixins =  [ AbstractWorker ]
  
  %foreign "browser:lambda:x=>x.scriptURL"
  prim__scriptURL : AnyPtr -> PrimIO AnyPtr

  export
  scriptURL : (obj : ServiceWorker) -> IO String
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : ServiceWorker) -> IO ServiceWorkerState
  
  %foreign "browser:lambda:x=>x.onstatechange"
  prim__onstatechange : AnyPtr -> PrimIO AnyPtr

  export
  onstatechange : (obj : ServiceWorker) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onstatechange  = v}"
  prim__setOnstatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstatechange : (obj : ServiceWorker) -> (v : EventHandler) -> IO ()

namespace ServiceWorkerContainer
  
  public export
  JSType ServiceWorkerContainer where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.controller"
  prim__controller : AnyPtr -> PrimIO AnyPtr

  export
  controller : (obj : ServiceWorkerContainer) -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready :  (obj : ServiceWorkerContainer)
        -> IO (JSPromise ServiceWorkerRegistration)
  
  %foreign "browser:lambda:x=>x.oncontrollerchange"
  prim__oncontrollerchange : AnyPtr -> PrimIO AnyPtr

  export
  oncontrollerchange : (obj : ServiceWorkerContainer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oncontrollerchange  = v}"
  prim__setOncontrollerchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncontrollerchange :  (obj : ServiceWorkerContainer)
                        -> (v : EventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : ServiceWorkerContainer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : ServiceWorkerContainer) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : ServiceWorkerContainer) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : ServiceWorkerContainer)
                    -> (v : EventHandler)
                    -> IO ()

namespace ServiceWorkerGlobalScope
  
  public export
  JSType ServiceWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clients"
  prim__clients : AnyPtr -> PrimIO AnyPtr

  export
  clients : (obj : ServiceWorkerGlobalScope) -> IO Clients
  
  %foreign "browser:lambda:x=>x.registration"
  prim__registration : AnyPtr -> PrimIO AnyPtr

  export
  registration :  (obj : ServiceWorkerGlobalScope)
               -> IO ServiceWorkerRegistration
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : ServiceWorkerGlobalScope) -> IO ServiceWorker
  
  %foreign "browser:lambda:x=>x.onactivate"
  prim__onactivate : AnyPtr -> PrimIO AnyPtr

  export
  onactivate : (obj : ServiceWorkerGlobalScope) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onactivate  = v}"
  prim__setOnactivate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnactivate :  (obj : ServiceWorkerGlobalScope)
                -> (v : EventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onfetch"
  prim__onfetch : AnyPtr -> PrimIO AnyPtr

  export
  onfetch : (obj : ServiceWorkerGlobalScope) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onfetch  = v}"
  prim__setOnfetch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfetch : (obj : ServiceWorkerGlobalScope) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.oninstall"
  prim__oninstall : AnyPtr -> PrimIO AnyPtr

  export
  oninstall : (obj : ServiceWorkerGlobalScope) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.oninstall  = v}"
  prim__setOninstall : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninstall : (obj : ServiceWorkerGlobalScope) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : ServiceWorkerGlobalScope) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : ServiceWorkerGlobalScope) -> (v : EventHandler) -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : ServiceWorkerGlobalScope) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : ServiceWorkerGlobalScope)
                    -> (v : EventHandler)
                    -> IO ()

namespace ServiceWorkerRegistration
  
  public export
  JSType ServiceWorkerRegistration where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr

  export
  active : (obj : ServiceWorkerRegistration) -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.installing"
  prim__installing : AnyPtr -> PrimIO AnyPtr

  export
  installing : (obj : ServiceWorkerRegistration) -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.navigationPreload"
  prim__navigationPreload : AnyPtr -> PrimIO AnyPtr

  export
  navigationPreload :  (obj : ServiceWorkerRegistration)
                    -> IO NavigationPreloadManager
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : ServiceWorkerRegistration) -> IO String
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr

  export
  updateViaCache :  (obj : ServiceWorkerRegistration)
                 -> IO ServiceWorkerUpdateViaCache
  
  %foreign "browser:lambda:x=>x.waiting"
  prim__waiting : AnyPtr -> PrimIO AnyPtr

  export
  waiting : (obj : ServiceWorkerRegistration) -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.onupdatefound"
  prim__onupdatefound : AnyPtr -> PrimIO AnyPtr

  export
  onupdatefound : (obj : ServiceWorkerRegistration) -> IO EventHandler

  %foreign "browser:lambda:(x,v)=>{x.onupdatefound  = v}"
  prim__setOnupdatefound : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdatefound :  (obj : ServiceWorkerRegistration)
                   -> (v : EventHandler)
                   -> IO ()

namespace WindowClient
  
  public export
  JSType WindowClient where
    parents =  [ Client , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr

  export
  ancestorOrigins : (obj : WindowClient) -> IO (JSArray String)
  
  %foreign "browser:lambda:x=>x.focused"
  prim__focused : AnyPtr -> PrimIO AnyPtr

  export
  focused : (obj : WindowClient) -> IO Bool
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr

  export
  visibilityState : (obj : WindowClient) -> IO VisibilityState


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  public export
  JSType CacheQueryOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ignoreMethod"
  prim__ignoreMethod : AnyPtr -> PrimIO AnyPtr

  export
  ignoreMethod : (obj : CacheQueryOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.ignoreMethod  = v}"
  prim__setIgnoreMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreMethod : (obj : CacheQueryOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.ignoreSearch"
  prim__ignoreSearch : AnyPtr -> PrimIO AnyPtr

  export
  ignoreSearch : (obj : CacheQueryOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.ignoreSearch  = v}"
  prim__setIgnoreSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreSearch : (obj : CacheQueryOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.ignoreVary"
  prim__ignoreVary : AnyPtr -> PrimIO AnyPtr

  export
  ignoreVary : (obj : CacheQueryOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.ignoreVary  = v}"
  prim__setIgnoreVary : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreVary : (obj : CacheQueryOptions) -> (v : Bool) -> IO ()

namespace ClientQueryOptions
  
  public export
  JSType ClientQueryOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.includeUncontrolled"
  prim__includeUncontrolled : AnyPtr -> PrimIO AnyPtr

  export
  includeUncontrolled : (obj : ClientQueryOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.includeUncontrolled  = v}"
  prim__setIncludeUncontrolled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIncludeUncontrolled : (obj : ClientQueryOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : ClientQueryOptions) -> IO ClientType

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : ClientQueryOptions) -> (v : ClientType) -> IO ()

namespace ExtendableEventInit
  
  public export
  JSType ExtendableEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []

namespace ExtendableMessageEventInit
  
  public export
  JSType ExtendableMessageEventInit where
    parents =  [ ExtendableEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : ExtendableMessageEventInit) -> IO Any

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : ExtendableMessageEventInit) -> (v : Any) -> IO ()
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : ExtendableMessageEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.lastEventId  = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastEventId : (obj : ExtendableMessageEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : ExtendableMessageEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.origin  = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrigin : (obj : ExtendableMessageEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : ExtendableMessageEventInit) -> IO (JSArray MessagePort)

  %foreign "browser:lambda:(x,v)=>{x.ports  = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPorts :  (obj : ExtendableMessageEventInit)
           -> (v : JSArray MessagePort)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source :  (obj : ExtendableMessageEventInit)
         -> IO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))

  %foreign "browser:lambda:(x,v)=>{x.source  = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSource :  (obj : ExtendableMessageEventInit)
            -> (v : Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
            -> IO ()

namespace FetchEventInit
  
  public export
  JSType FetchEventInit where
    parents =  [ ExtendableEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr

  export
  request : (obj : FetchEventInit) -> IO Request

  %foreign "browser:lambda:(x,v)=>{x.request  = v}"
  prim__setRequest : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequest : (obj : FetchEventInit) -> (v : Request) -> IO ()
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr

  export
  clientId : (obj : FetchEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.clientId  = v}"
  prim__setClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientId : (obj : FetchEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr

  export
  handled : (obj : FetchEventInit) -> IO (JSPromise Undefined)

  %foreign "browser:lambda:(x,v)=>{x.handled  = v}"
  prim__setHandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHandled : (obj : FetchEventInit) -> (v : JSPromise Undefined) -> IO ()
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr

  export
  preloadResponse : (obj : FetchEventInit) -> IO (JSPromise Any)

  %foreign "browser:lambda:(x,v)=>{x.preloadResponse  = v}"
  prim__setPreloadResponse : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreloadResponse : (obj : FetchEventInit) -> (v : JSPromise Any) -> IO ()
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr

  export
  replacesClientId : (obj : FetchEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.replacesClientId  = v}"
  prim__setReplacesClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReplacesClientId : (obj : FetchEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

  export
  resultingClientId : (obj : FetchEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.resultingClientId  = v}"
  prim__setResultingClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResultingClientId : (obj : FetchEventInit) -> (v : String) -> IO ()

namespace MultiCacheQueryOptions
  
  public export
  JSType MultiCacheQueryOptions where
    parents =  [ CacheQueryOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.cacheName"
  prim__cacheName : AnyPtr -> PrimIO AnyPtr

  export
  cacheName : (obj : MultiCacheQueryOptions) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.cacheName  = v}"
  prim__setCacheName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCacheName : (obj : MultiCacheQueryOptions) -> (v : String) -> IO ()

namespace NavigationPreloadState
  
  public export
  JSType NavigationPreloadState where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : NavigationPreloadState) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : NavigationPreloadState) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.headerValue"
  prim__headerValue : AnyPtr -> PrimIO AnyPtr

  export
  headerValue : (obj : NavigationPreloadState) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.headerValue  = v}"
  prim__setHeaderValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaderValue : (obj : NavigationPreloadState) -> (v : String) -> IO ()

namespace RegistrationOptions
  
  public export
  JSType RegistrationOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : RegistrationOptions) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.scope  = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScope : (obj : RegistrationOptions) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : RegistrationOptions) -> IO WorkerType

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : RegistrationOptions) -> (v : WorkerType) -> IO ()
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr

  export
  updateViaCache : (obj : RegistrationOptions) -> IO ServiceWorkerUpdateViaCache

  %foreign "browser:lambda:(x,v)=>{x.updateViaCache  = v}"
  prim__setUpdateViaCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUpdateViaCache :  (obj : RegistrationOptions)
                    -> (v : ServiceWorkerUpdateViaCache)
                    -> IO ()

