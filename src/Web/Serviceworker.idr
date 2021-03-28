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
  frameType : (obj : Client) -> JSIO FrameType
  frameType a =   primToJSIO "frameType" $ prim__frameType (toJS a)
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr

  export
  id : (obj : Client) -> JSIO String
  id a =   primToJSIO "id" $ prim__id (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : Client) -> JSIO ClientType
  type a =   primToJSIO "type" $ prim__type (toJS a)
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr

  export
  url : (obj : Client) -> JSIO String
  url a =   primToJSIO "url" $ prim__url (toJS a)

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
  data_ : (obj : ExtendableMessageEvent) -> JSIO Any
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : ExtendableMessageEvent) -> JSIO String
  lastEventId a =   primToJSIO "lastEventId" $ prim__lastEventId (toJS a)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : ExtendableMessageEvent) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : ExtendableMessageEvent) -> JSIO (JSArray MessagePort)
  ports a =   primToJSIO "ports" $ prim__ports (toJS a)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source :  (obj : ExtendableMessageEvent)
         -> JSIO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
  source a =   primToJSIO "source" $ prim__source (toJS a)

namespace FetchEvent
  
  public export
  JSType FetchEvent where
    parents =  [ ExtendableEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr

  export
  clientId : (obj : FetchEvent) -> JSIO String
  clientId a =   primToJSIO "clientId" $ prim__clientId (toJS a)
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr

  export
  handled : (obj : FetchEvent) -> JSIO (JSPromise Undefined)
  handled a =   primToJSIO "handled" $ prim__handled (toJS a)
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr

  export
  preloadResponse : (obj : FetchEvent) -> JSIO (JSPromise Any)
  preloadResponse a =
    primToJSIO "preloadResponse" $ prim__preloadResponse (toJS a)
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr

  export
  replacesClientId : (obj : FetchEvent) -> JSIO String
  replacesClientId a =
    primToJSIO "replacesClientId" $ prim__replacesClientId (toJS a)
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr

  export
  request : (obj : FetchEvent) -> JSIO Request
  request a =   primToJSIO "request" $ prim__request (toJS a)
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

  export
  resultingClientId : (obj : FetchEvent) -> JSIO String
  resultingClientId a =
    primToJSIO "resultingClientId" $ prim__resultingClientId (toJS a)

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
  scriptURL : (obj : ServiceWorker) -> JSIO String
  scriptURL a =   primToJSIO "scriptURL" $ prim__scriptURL (toJS a)
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr

  export
  state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
  state a =   primToJSIO "state" $ prim__state (toJS a)
  
  %foreign "browser:lambda:x=>x.onstatechange"
  prim__onstatechange : AnyPtr -> PrimIO AnyPtr

  export
  onstatechange : (obj : ServiceWorker) -> JSIO EventHandler
  onstatechange a =   primToJSIO "onstatechange" $ prim__onstatechange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onstatechange  = v}"
  prim__setOnstatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnstatechange : (obj : ServiceWorker) -> (v : EventHandler) -> JSIO ()
  setOnstatechange a b =
    primToJSIO "setOnstatechange" $ prim__setOnstatechange (toJS a) (toJS b)

namespace ServiceWorkerContainer
  
  public export
  JSType ServiceWorkerContainer where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.controller"
  prim__controller : AnyPtr -> PrimIO AnyPtr

  export
  controller : (obj : ServiceWorkerContainer) -> JSIO (Maybe ServiceWorker)
  controller a =   primToJSIO "controller" $ prim__controller (toJS a)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr

  export
  ready :  (obj : ServiceWorkerContainer)
        -> JSIO (JSPromise ServiceWorkerRegistration)
  ready a =   primToJSIO "ready" $ prim__ready (toJS a)
  
  %foreign "browser:lambda:x=>x.oncontrollerchange"
  prim__oncontrollerchange : AnyPtr -> PrimIO AnyPtr

  export
  oncontrollerchange : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  oncontrollerchange a =
    primToJSIO "oncontrollerchange" $ prim__oncontrollerchange (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oncontrollerchange  = v}"
  prim__setOncontrollerchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOncontrollerchange :  (obj : ServiceWorkerContainer)
                        -> (v : EventHandler)
                        -> JSIO ()
  setOncontrollerchange a b =
    primToJSIO "setOncontrollerchange" $ prim__setOncontrollerchange (toJS a)
                                                                     (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage : (obj : ServiceWorkerContainer) -> (v : EventHandler) -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : ServiceWorkerContainer)
                    -> (v : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace ServiceWorkerGlobalScope
  
  public export
  JSType ServiceWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clients"
  prim__clients : AnyPtr -> PrimIO AnyPtr

  export
  clients : (obj : ServiceWorkerGlobalScope) -> JSIO Clients
  clients a =   primToJSIO "clients" $ prim__clients (toJS a)
  
  %foreign "browser:lambda:x=>x.registration"
  prim__registration : AnyPtr -> PrimIO AnyPtr

  export
  registration :  (obj : ServiceWorkerGlobalScope)
               -> JSIO ServiceWorkerRegistration
  registration a =   primToJSIO "registration" $ prim__registration (toJS a)
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr

  export
  serviceWorker : (obj : ServiceWorkerGlobalScope) -> JSIO ServiceWorker
  serviceWorker a =   primToJSIO "serviceWorker" $ prim__serviceWorker (toJS a)
  
  %foreign "browser:lambda:x=>x.onactivate"
  prim__onactivate : AnyPtr -> PrimIO AnyPtr

  export
  onactivate : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onactivate a =   primToJSIO "onactivate" $ prim__onactivate (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onactivate  = v}"
  prim__setOnactivate : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnactivate :  (obj : ServiceWorkerGlobalScope)
                -> (v : EventHandler)
                -> JSIO ()
  setOnactivate a b =
    primToJSIO "setOnactivate" $ prim__setOnactivate (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onfetch"
  prim__onfetch : AnyPtr -> PrimIO AnyPtr

  export
  onfetch : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onfetch a =   primToJSIO "onfetch" $ prim__onfetch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onfetch  = v}"
  prim__setOnfetch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnfetch : (obj : ServiceWorkerGlobalScope) -> (v : EventHandler) -> JSIO ()
  setOnfetch a b =
    primToJSIO "setOnfetch" $ prim__setOnfetch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.oninstall"
  prim__oninstall : AnyPtr -> PrimIO AnyPtr

  export
  oninstall : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  oninstall a =   primToJSIO "oninstall" $ prim__oninstall (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.oninstall  = v}"
  prim__setOninstall : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOninstall :  (obj : ServiceWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()
  setOninstall a b =
    primToJSIO "setOninstall" $ prim__setOninstall (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr

  export
  onmessage : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onmessage a =   primToJSIO "onmessage" $ prim__onmessage (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessage  = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessage :  (obj : ServiceWorkerGlobalScope)
               -> (v : EventHandler)
               -> JSIO ()
  setOnmessage a b =
    primToJSIO "setOnmessage" $ prim__setOnmessage (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr

  export
  onmessageerror : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onmessageerror a =
    primToJSIO "onmessageerror" $ prim__onmessageerror (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onmessageerror  = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnmessageerror :  (obj : ServiceWorkerGlobalScope)
                    -> (v : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b =
    primToJSIO "setOnmessageerror" $ prim__setOnmessageerror (toJS a) (toJS b)

namespace ServiceWorkerRegistration
  
  public export
  JSType ServiceWorkerRegistration where
    parents =  [ EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr

  export
  active : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  active a =   primToJSIO "active" $ prim__active (toJS a)
  
  %foreign "browser:lambda:x=>x.installing"
  prim__installing : AnyPtr -> PrimIO AnyPtr

  export
  installing : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  installing a =   primToJSIO "installing" $ prim__installing (toJS a)
  
  %foreign "browser:lambda:x=>x.navigationPreload"
  prim__navigationPreload : AnyPtr -> PrimIO AnyPtr

  export
  navigationPreload :  (obj : ServiceWorkerRegistration)
                    -> JSIO NavigationPreloadManager
  navigationPreload a =
    primToJSIO "navigationPreload" $ prim__navigationPreload (toJS a)
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : ServiceWorkerRegistration) -> JSIO String
  scope a =   primToJSIO "scope" $ prim__scope (toJS a)
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr

  export
  updateViaCache :  (obj : ServiceWorkerRegistration)
                 -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a =
    primToJSIO "updateViaCache" $ prim__updateViaCache (toJS a)
  
  %foreign "browser:lambda:x=>x.waiting"
  prim__waiting : AnyPtr -> PrimIO AnyPtr

  export
  waiting : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  waiting a =   primToJSIO "waiting" $ prim__waiting (toJS a)
  
  %foreign "browser:lambda:x=>x.onupdatefound"
  prim__onupdatefound : AnyPtr -> PrimIO AnyPtr

  export
  onupdatefound : (obj : ServiceWorkerRegistration) -> JSIO EventHandler
  onupdatefound a =   primToJSIO "onupdatefound" $ prim__onupdatefound (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.onupdatefound  = v}"
  prim__setOnupdatefound : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOnupdatefound :  (obj : ServiceWorkerRegistration)
                   -> (v : EventHandler)
                   -> JSIO ()
  setOnupdatefound a b =
    primToJSIO "setOnupdatefound" $ prim__setOnupdatefound (toJS a) (toJS b)

namespace WindowClient
  
  public export
  JSType WindowClient where
    parents =  [ Client , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr

  export
  ancestorOrigins : (obj : WindowClient) -> JSIO (JSArray String)
  ancestorOrigins a =
    primToJSIO "ancestorOrigins" $ prim__ancestorOrigins (toJS a)
  
  %foreign "browser:lambda:x=>x.focused"
  prim__focused : AnyPtr -> PrimIO AnyPtr

  export
  focused : (obj : WindowClient) -> JSIO Bool
  focused a =   primToJSIO "focused" $ prim__focused (toJS a)
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr

  export
  visibilityState : (obj : WindowClient) -> JSIO VisibilityState
  visibilityState a =
    primToJSIO "visibilityState" $ prim__visibilityState (toJS a)


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
  ignoreMethod : (obj : CacheQueryOptions) -> JSIO Bool
  ignoreMethod a =   primToJSIO "ignoreMethod" $ prim__ignoreMethod (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ignoreMethod  = v}"
  prim__setIgnoreMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreMethod : (obj : CacheQueryOptions) -> (v : Bool) -> JSIO ()
  setIgnoreMethod a b =
    primToJSIO "setIgnoreMethod" $ prim__setIgnoreMethod (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ignoreSearch"
  prim__ignoreSearch : AnyPtr -> PrimIO AnyPtr

  export
  ignoreSearch : (obj : CacheQueryOptions) -> JSIO Bool
  ignoreSearch a =   primToJSIO "ignoreSearch" $ prim__ignoreSearch (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ignoreSearch  = v}"
  prim__setIgnoreSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreSearch : (obj : CacheQueryOptions) -> (v : Bool) -> JSIO ()
  setIgnoreSearch a b =
    primToJSIO "setIgnoreSearch" $ prim__setIgnoreSearch (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ignoreVary"
  prim__ignoreVary : AnyPtr -> PrimIO AnyPtr

  export
  ignoreVary : (obj : CacheQueryOptions) -> JSIO Bool
  ignoreVary a =   primToJSIO "ignoreVary" $ prim__ignoreVary (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ignoreVary  = v}"
  prim__setIgnoreVary : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIgnoreVary : (obj : CacheQueryOptions) -> (v : Bool) -> JSIO ()
  setIgnoreVary a b =
    primToJSIO "setIgnoreVary" $ prim__setIgnoreVary (toJS a) (toJS b)

namespace ClientQueryOptions
  
  public export
  JSType ClientQueryOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.includeUncontrolled"
  prim__includeUncontrolled : AnyPtr -> PrimIO AnyPtr

  export
  includeUncontrolled : (obj : ClientQueryOptions) -> JSIO Bool
  includeUncontrolled a =
    primToJSIO "includeUncontrolled" $ prim__includeUncontrolled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.includeUncontrolled  = v}"
  prim__setIncludeUncontrolled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIncludeUncontrolled : (obj : ClientQueryOptions) -> (v : Bool) -> JSIO ()
  setIncludeUncontrolled a b =
    primToJSIO "setIncludeUncontrolled" $ prim__setIncludeUncontrolled (toJS a)
                                                                       (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : ClientQueryOptions) -> JSIO ClientType
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : ClientQueryOptions) -> (v : ClientType) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

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
  data_ : (obj : ExtendableMessageEventInit) -> JSIO Any
  data_ a =   primToJSIO "data_" $ prim__data_ (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : ExtendableMessageEventInit) -> (v : Any) -> JSIO ()
  setData a b =   primToJSIO "setData" $ prim__setData (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr

  export
  lastEventId : (obj : ExtendableMessageEventInit) -> JSIO String
  lastEventId a =   primToJSIO "lastEventId" $ prim__lastEventId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.lastEventId  = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLastEventId : (obj : ExtendableMessageEventInit) -> (v : String) -> JSIO ()
  setLastEventId a b =
    primToJSIO "setLastEventId" $ prim__setLastEventId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr

  export
  origin : (obj : ExtendableMessageEventInit) -> JSIO String
  origin a =   primToJSIO "origin" $ prim__origin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.origin  = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrigin : (obj : ExtendableMessageEventInit) -> (v : String) -> JSIO ()
  setOrigin a b =   primToJSIO "setOrigin" $ prim__setOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr

  export
  ports : (obj : ExtendableMessageEventInit) -> JSIO (JSArray MessagePort)
  ports a =   primToJSIO "ports" $ prim__ports (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ports  = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPorts :  (obj : ExtendableMessageEventInit)
           -> (v : JSArray MessagePort)
           -> JSIO ()
  setPorts a b =   primToJSIO "setPorts" $ prim__setPorts (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr

  export
  source :  (obj : ExtendableMessageEventInit)
         -> JSIO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
  source a =   primToJSIO "source" $ prim__source (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.source  = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setSource :  (obj : ExtendableMessageEventInit)
            -> (v : Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
            -> JSIO ()
  setSource a b =   primToJSIO "setSource" $ prim__setSource (toJS a) (toJS b)

namespace FetchEventInit
  
  public export
  JSType FetchEventInit where
    parents =  [ ExtendableEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr

  export
  request : (obj : FetchEventInit) -> JSIO Request
  request a =   primToJSIO "request" $ prim__request (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.request  = v}"
  prim__setRequest : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRequest : (obj : FetchEventInit) -> (v : Request) -> JSIO ()
  setRequest a b =
    primToJSIO "setRequest" $ prim__setRequest (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr

  export
  clientId : (obj : FetchEventInit) -> JSIO String
  clientId a =   primToJSIO "clientId" $ prim__clientId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.clientId  = v}"
  prim__setClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientId : (obj : FetchEventInit) -> (v : String) -> JSIO ()
  setClientId a b =
    primToJSIO "setClientId" $ prim__setClientId (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr

  export
  handled : (obj : FetchEventInit) -> JSIO (JSPromise Undefined)
  handled a =   primToJSIO "handled" $ prim__handled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.handled  = v}"
  prim__setHandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHandled : (obj : FetchEventInit) -> (v : JSPromise Undefined) -> JSIO ()
  setHandled a b =
    primToJSIO "setHandled" $ prim__setHandled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr

  export
  preloadResponse : (obj : FetchEventInit) -> JSIO (JSPromise Any)
  preloadResponse a =
    primToJSIO "preloadResponse" $ prim__preloadResponse (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.preloadResponse  = v}"
  prim__setPreloadResponse : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPreloadResponse : (obj : FetchEventInit) -> (v : JSPromise Any) -> JSIO ()
  setPreloadResponse a b =
    primToJSIO "setPreloadResponse" $ prim__setPreloadResponse (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr

  export
  replacesClientId : (obj : FetchEventInit) -> JSIO String
  replacesClientId a =
    primToJSIO "replacesClientId" $ prim__replacesClientId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.replacesClientId  = v}"
  prim__setReplacesClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReplacesClientId : (obj : FetchEventInit) -> (v : String) -> JSIO ()
  setReplacesClientId a b =
    primToJSIO "setReplacesClientId" $ prim__setReplacesClientId (toJS a)
                                                                 (toJS b)
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr

  export
  resultingClientId : (obj : FetchEventInit) -> JSIO String
  resultingClientId a =
    primToJSIO "resultingClientId" $ prim__resultingClientId (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.resultingClientId  = v}"
  prim__setResultingClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setResultingClientId : (obj : FetchEventInit) -> (v : String) -> JSIO ()
  setResultingClientId a b =
    primToJSIO "setResultingClientId" $ prim__setResultingClientId (toJS a)
                                                                   (toJS b)

namespace MultiCacheQueryOptions
  
  public export
  JSType MultiCacheQueryOptions where
    parents =  [ CacheQueryOptions , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.cacheName"
  prim__cacheName : AnyPtr -> PrimIO AnyPtr

  export
  cacheName : (obj : MultiCacheQueryOptions) -> JSIO String
  cacheName a =   primToJSIO "cacheName" $ prim__cacheName (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.cacheName  = v}"
  prim__setCacheName : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCacheName : (obj : MultiCacheQueryOptions) -> (v : String) -> JSIO ()
  setCacheName a b =
    primToJSIO "setCacheName" $ prim__setCacheName (toJS a) (toJS b)

namespace NavigationPreloadState
  
  public export
  JSType NavigationPreloadState where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr

  export
  enabled : (obj : NavigationPreloadState) -> JSIO Bool
  enabled a =   primToJSIO "enabled" $ prim__enabled (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.enabled  = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setEnabled : (obj : NavigationPreloadState) -> (v : Bool) -> JSIO ()
  setEnabled a b =
    primToJSIO "setEnabled" $ prim__setEnabled (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.headerValue"
  prim__headerValue : AnyPtr -> PrimIO AnyPtr

  export
  headerValue : (obj : NavigationPreloadState) -> JSIO String
  headerValue a =   primToJSIO "headerValue" $ prim__headerValue (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.headerValue  = v}"
  prim__setHeaderValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeaderValue : (obj : NavigationPreloadState) -> (v : String) -> JSIO ()
  setHeaderValue a b =
    primToJSIO "setHeaderValue" $ prim__setHeaderValue (toJS a) (toJS b)

namespace RegistrationOptions
  
  public export
  JSType RegistrationOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr

  export
  scope : (obj : RegistrationOptions) -> JSIO String
  scope a =   primToJSIO "scope" $ prim__scope (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.scope  = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScope : (obj : RegistrationOptions) -> (v : String) -> JSIO ()
  setScope a b =   primToJSIO "setScope" $ prim__setScope (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : RegistrationOptions) -> JSIO WorkerType
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : RegistrationOptions) -> (v : WorkerType) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr

  export
  updateViaCache :  (obj : RegistrationOptions)
                 -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a =
    primToJSIO "updateViaCache" $ prim__updateViaCache (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.updateViaCache  = v}"
  prim__setUpdateViaCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setUpdateViaCache :  (obj : RegistrationOptions)
                    -> (v : ServiceWorkerUpdateViaCache)
                    -> JSIO ()
  setUpdateViaCache a b =
    primToJSIO "setUpdateViaCache" $ prim__setUpdateViaCache (toJS a) (toJS b)

