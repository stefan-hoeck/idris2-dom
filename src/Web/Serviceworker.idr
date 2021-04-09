module Web.Serviceworker
 
import JS
import Web.Internal.ServiceworkerPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Cache
  
  public export
  JSType Cache where
    parents =  [ Object ]

    mixins =  []
  
  export
  addAll :  (obj : Cache)
         -> (requests : Array RequestInfo)
         -> JSIO (Promise Undefined)
  addAll a b = primJS $ Cache.prim__addAll a b
  
  export
  add : (obj : Cache) -> (request : RequestInfo) -> JSIO (Promise Undefined)
  add a b = primJS $ Cache.prim__add a b
  
  export
  delete :  (obj : Cache)
         -> (request : RequestInfo)
         -> (options : UndefOr CacheQueryOptions)
         -> JSIO (Promise Boolean)
  delete a b c = primJS $ Cache.prim__delete a b c
  
  export
  keys :  (obj : Cache)
       -> (request : UndefOr RequestInfo)
       -> (options : UndefOr CacheQueryOptions)
       -> JSIO (Promise (Array Request))
  keys a b c = primJS $ Cache.prim__keys a b c
  
  export
  matchAll :  (obj : Cache)
           -> (request : UndefOr RequestInfo)
           -> (options : UndefOr CacheQueryOptions)
           -> JSIO (Promise (Array Response))
  matchAll a b c = primJS $ Cache.prim__matchAll a b c
  
  export
  match :  (obj : Cache)
        -> (request : RequestInfo)
        -> (options : UndefOr CacheQueryOptions)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ Cache.prim__match a b c
  
  export
  put :  (obj : Cache)
      -> (request : RequestInfo)
      -> (response : Response)
      -> JSIO (Promise Undefined)
  put a b c = primJS $ Cache.prim__put a b c

namespace CacheStorage
  
  public export
  JSType CacheStorage where
    parents =  [ Object ]

    mixins =  []
  
  export
  delete :  (obj : CacheStorage)
         -> (cacheName : String)
         -> JSIO (Promise Boolean)
  delete a b = primJS $ CacheStorage.prim__delete a b
  
  export
  has : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Boolean)
  has a b = primJS $ CacheStorage.prim__has a b
  
  export
  keys : (obj : CacheStorage) -> JSIO (Promise (Array String))
  keys a = primJS $ CacheStorage.prim__keys a
  
  export
  match :  (obj : CacheStorage)
        -> (request : RequestInfo)
        -> (options : UndefOr MultiCacheQueryOptions)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ CacheStorage.prim__match a b c
  
  export
  open_ : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Cache)
  open_ a b = primJS $ CacheStorage.prim__open a b

namespace Client
  
  public export
  JSType Client where
    parents =  [ Object ]

    mixins =  []
  
  export
  frameType : (obj : Client) -> JSIO FrameType
  frameType a = primJS $ Client.prim__frameType a
  
  export
  id : (obj : Client) -> JSIO String
  id a = primJS $ Client.prim__id a
  
  export
  type : (obj : Client) -> JSIO ClientType
  type a = primJS $ Client.prim__type a
  
  export
  url : (obj : Client) -> JSIO String
  url a = primJS $ Client.prim__url a
  
  export
  postMessage :  (obj : Client)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Client.prim__postMessage a b c
  
  export
  postMessage1 :  (obj : Client)
               -> (message : AnyPtr)
               -> (options : UndefOr PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ Client.prim__postMessage1 a b c

namespace Clients
  
  public export
  JSType Clients where
    parents =  [ Object ]

    mixins =  []
  
  export
  claim : (obj : Clients) -> JSIO (Promise Undefined)
  claim a = primJS $ Clients.prim__claim a
  
  export
  get :  (obj : Clients)
      -> (id : String)
      -> JSIO (Promise (Union2 Client Undefined))
  get a b = primJS $ Clients.prim__get a b
  
  export
  matchAll :  (obj : Clients)
           -> (options : UndefOr ClientQueryOptions)
           -> JSIO (Promise (Array Client))
  matchAll a b = primJS $ Clients.prim__matchAll a b
  
  export
  openWindow :  (obj : Clients)
             -> (url : String)
             -> JSIO (Promise (Nullable WindowClient))
  openWindow a b = primJS $ Clients.prim__openWindow a b

namespace ExtendableEvent
  
  public export
  JSType ExtendableEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr ExtendableEventInit)
      -> JSIO ExtendableEvent
  new a b = primJS $ ExtendableEvent.prim__new a b
  
  export
  waitUntil : (obj : ExtendableEvent) -> (f : Promise AnyPtr) -> JSIO ()
  waitUntil a b = primJS $ ExtendableEvent.prim__waitUntil a b

namespace ExtendableMessageEvent
  
  public export
  JSType ExtendableMessageEvent where
    parents =  [ ExtendableEvent , Event , Object ]

    mixins =  []
  
  export
  new :  (type : String)
      -> (eventInitDict : UndefOr ExtendableMessageEventInit)
      -> JSIO ExtendableMessageEvent
  new a b = primJS $ ExtendableMessageEvent.prim__new a b
  
  export
  data_ : (obj : ExtendableMessageEvent) -> JSIO AnyPtr
  data_ a = primJS $ ExtendableMessageEvent.prim__data a
  
  export
  lastEventId : (obj : ExtendableMessageEvent) -> JSIO String
  lastEventId a = primJS $ ExtendableMessageEvent.prim__lastEventId a
  
  export
  origin : (obj : ExtendableMessageEvent) -> JSIO String
  origin a = primJS $ ExtendableMessageEvent.prim__origin a
  
  export
  ports : (obj : ExtendableMessageEvent) -> JSIO (Array MessagePort)
  ports a = primJS $ ExtendableMessageEvent.prim__ports a
  
  export
  source :  (obj : ExtendableMessageEvent)
         -> JSIO (Nullable (Union3 Client ServiceWorker MessagePort))
  source a = primJS $ ExtendableMessageEvent.prim__source a

namespace FetchEvent
  
  public export
  JSType FetchEvent where
    parents =  [ ExtendableEvent , Event , Object ]

    mixins =  []
  
  export
  new : (type : String) -> (eventInitDict : FetchEventInit) -> JSIO FetchEvent
  new a b = primJS $ FetchEvent.prim__new a b
  
  export
  clientId : (obj : FetchEvent) -> JSIO String
  clientId a = primJS $ FetchEvent.prim__clientId a
  
  export
  handled : (obj : FetchEvent) -> JSIO (Promise Undefined)
  handled a = primJS $ FetchEvent.prim__handled a
  
  export
  preloadResponse : (obj : FetchEvent) -> JSIO (Promise AnyPtr)
  preloadResponse a = primJS $ FetchEvent.prim__preloadResponse a
  
  export
  replacesClientId : (obj : FetchEvent) -> JSIO String
  replacesClientId a = primJS $ FetchEvent.prim__replacesClientId a
  
  export
  request : (obj : FetchEvent) -> JSIO Request
  request a = primJS $ FetchEvent.prim__request a
  
  export
  resultingClientId : (obj : FetchEvent) -> JSIO String
  resultingClientId a = primJS $ FetchEvent.prim__resultingClientId a
  
  export
  respondWith : (obj : FetchEvent) -> (r : Promise Response) -> JSIO ()
  respondWith a b = primJS $ FetchEvent.prim__respondWith a b

namespace NavigationPreloadManager
  
  public export
  JSType NavigationPreloadManager where
    parents =  [ Object ]

    mixins =  []
  
  export
  disable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
  disable a = primJS $ NavigationPreloadManager.prim__disable a
  
  export
  enable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
  enable a = primJS $ NavigationPreloadManager.prim__enable a
  
  export
  getState :  (obj : NavigationPreloadManager)
           -> JSIO (Promise NavigationPreloadState)
  getState a = primJS $ NavigationPreloadManager.prim__getState a
  
  export
  setHeaderValue :  (obj : NavigationPreloadManager)
                 -> (value : ByteString)
                 -> JSIO (Promise Undefined)
  setHeaderValue a b = primJS $ NavigationPreloadManager.prim__setHeaderValue a
                                                                              b

namespace ServiceWorker
  
  public export
  JSType ServiceWorker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]
  
  export
  onstatechange : (obj : ServiceWorker) -> JSIO EventHandler
  onstatechange a = primJS $ ServiceWorker.prim__onstatechange a
  
  export
  setOnstatechange : (obj : ServiceWorker) -> (value : EventHandler) -> JSIO ()
  setOnstatechange a b = primJS $ ServiceWorker.prim__setOnstatechange a b
  
  export
  scriptURL : (obj : ServiceWorker) -> JSIO String
  scriptURL a = primJS $ ServiceWorker.prim__scriptURL a
  
  export
  state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
  state a = primJS $ ServiceWorker.prim__state a
  
  export
  postMessage :  (obj : ServiceWorker)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ ServiceWorker.prim__postMessage a b c
  
  export
  postMessage1 :  (obj : ServiceWorker)
               -> (message : AnyPtr)
               -> (options : UndefOr PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ ServiceWorker.prim__postMessage1 a b c

namespace ServiceWorkerContainer
  
  public export
  JSType ServiceWorkerContainer where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  controller : (obj : ServiceWorkerContainer) -> JSIO (Nullable ServiceWorker)
  controller a = primJS $ ServiceWorkerContainer.prim__controller a
  
  export
  oncontrollerchange : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  oncontrollerchange a = primJS $ ServiceWorkerContainer.prim__oncontrollerchange a
  
  export
  setOncontrollerchange :  (obj : ServiceWorkerContainer)
                        -> (value : EventHandler)
                        -> JSIO ()
  setOncontrollerchange a b = primJS $ ServiceWorkerContainer.prim__setOncontrollerchange a
                                                                                          b
  
  export
  onmessage : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  onmessage a = primJS $ ServiceWorkerContainer.prim__onmessage a
  
  export
  setOnmessage :  (obj : ServiceWorkerContainer)
               -> (value : EventHandler)
               -> JSIO ()
  setOnmessage a b = primJS $ ServiceWorkerContainer.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : ServiceWorkerContainer) -> JSIO EventHandler
  onmessageerror a = primJS $ ServiceWorkerContainer.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : ServiceWorkerContainer)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b = primJS $ ServiceWorkerContainer.prim__setOnmessageerror a
                                                                                  b
  
  export
  ready :  (obj : ServiceWorkerContainer)
        -> JSIO (Promise ServiceWorkerRegistration)
  ready a = primJS $ ServiceWorkerContainer.prim__ready a
  
  export
  getRegistration :  (obj : ServiceWorkerContainer)
                  -> (clientURL : UndefOr String)
                  -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
  getRegistration a b = primJS $ ServiceWorkerContainer.prim__getRegistration a
                                                                              b
  
  export
  getRegistrations :  (obj : ServiceWorkerContainer)
                   -> JSIO (Promise (Array ServiceWorkerRegistration))
  getRegistrations a = primJS $ ServiceWorkerContainer.prim__getRegistrations a
  
  export
  register :  (obj : ServiceWorkerContainer)
           -> (scriptURL : String)
           -> (options : UndefOr RegistrationOptions)
           -> JSIO (Promise ServiceWorkerRegistration)
  register a b c = primJS $ ServiceWorkerContainer.prim__register a b c
  
  export
  startMessages : (obj : ServiceWorkerContainer) -> JSIO ()
  startMessages a = primJS $ ServiceWorkerContainer.prim__startMessages a

namespace ServiceWorkerGlobalScope
  
  public export
  JSType ServiceWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []
  
  export
  clients : (obj : ServiceWorkerGlobalScope) -> JSIO Clients
  clients a = primJS $ ServiceWorkerGlobalScope.prim__clients a
  
  export
  onactivate : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onactivate a = primJS $ ServiceWorkerGlobalScope.prim__onactivate a
  
  export
  setOnactivate :  (obj : ServiceWorkerGlobalScope)
                -> (value : EventHandler)
                -> JSIO ()
  setOnactivate a b = primJS $ ServiceWorkerGlobalScope.prim__setOnactivate a b
  
  export
  onfetch : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onfetch a = primJS $ ServiceWorkerGlobalScope.prim__onfetch a
  
  export
  setOnfetch :  (obj : ServiceWorkerGlobalScope)
             -> (value : EventHandler)
             -> JSIO ()
  setOnfetch a b = primJS $ ServiceWorkerGlobalScope.prim__setOnfetch a b
  
  export
  oninstall : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  oninstall a = primJS $ ServiceWorkerGlobalScope.prim__oninstall a
  
  export
  setOninstall :  (obj : ServiceWorkerGlobalScope)
               -> (value : EventHandler)
               -> JSIO ()
  setOninstall a b = primJS $ ServiceWorkerGlobalScope.prim__setOninstall a b
  
  export
  onmessage : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onmessage a = primJS $ ServiceWorkerGlobalScope.prim__onmessage a
  
  export
  setOnmessage :  (obj : ServiceWorkerGlobalScope)
               -> (value : EventHandler)
               -> JSIO ()
  setOnmessage a b = primJS $ ServiceWorkerGlobalScope.prim__setOnmessage a b
  
  export
  onmessageerror : (obj : ServiceWorkerGlobalScope) -> JSIO EventHandler
  onmessageerror a = primJS $ ServiceWorkerGlobalScope.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : ServiceWorkerGlobalScope)
                    -> (value : EventHandler)
                    -> JSIO ()
  setOnmessageerror a b = primJS $ ServiceWorkerGlobalScope.prim__setOnmessageerror a
                                                                                    b
  
  export
  registration :  (obj : ServiceWorkerGlobalScope)
               -> JSIO ServiceWorkerRegistration
  registration a = primJS $ ServiceWorkerGlobalScope.prim__registration a
  
  export
  serviceWorker : (obj : ServiceWorkerGlobalScope) -> JSIO ServiceWorker
  serviceWorker a = primJS $ ServiceWorkerGlobalScope.prim__serviceWorker a
  
  export
  skipWaiting : (obj : ServiceWorkerGlobalScope) -> JSIO (Promise Undefined)
  skipWaiting a = primJS $ ServiceWorkerGlobalScope.prim__skipWaiting a

namespace ServiceWorkerRegistration
  
  public export
  JSType ServiceWorkerRegistration where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  active : (obj : ServiceWorkerRegistration) -> JSIO (Nullable ServiceWorker)
  active a = primJS $ ServiceWorkerRegistration.prim__active a
  
  export
  installing :  (obj : ServiceWorkerRegistration)
             -> JSIO (Nullable ServiceWorker)
  installing a = primJS $ ServiceWorkerRegistration.prim__installing a
  
  export
  navigationPreload :  (obj : ServiceWorkerRegistration)
                    -> JSIO NavigationPreloadManager
  navigationPreload a = primJS $ ServiceWorkerRegistration.prim__navigationPreload a
  
  export
  onupdatefound : (obj : ServiceWorkerRegistration) -> JSIO EventHandler
  onupdatefound a = primJS $ ServiceWorkerRegistration.prim__onupdatefound a
  
  export
  setOnupdatefound :  (obj : ServiceWorkerRegistration)
                   -> (value : EventHandler)
                   -> JSIO ()
  setOnupdatefound a b = primJS $ ServiceWorkerRegistration.prim__setOnupdatefound a
                                                                                   b
  
  export
  scope : (obj : ServiceWorkerRegistration) -> JSIO String
  scope a = primJS $ ServiceWorkerRegistration.prim__scope a
  
  export
  updateViaCache :  (obj : ServiceWorkerRegistration)
                 -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a = primJS $ ServiceWorkerRegistration.prim__updateViaCache a
  
  export
  waiting : (obj : ServiceWorkerRegistration) -> JSIO (Nullable ServiceWorker)
  waiting a = primJS $ ServiceWorkerRegistration.prim__waiting a
  
  export
  unregister : (obj : ServiceWorkerRegistration) -> JSIO (Promise Boolean)
  unregister a = primJS $ ServiceWorkerRegistration.prim__unregister a
  
  export
  update : (obj : ServiceWorkerRegistration) -> JSIO (Promise Undefined)
  update a = primJS $ ServiceWorkerRegistration.prim__update a

namespace WindowClient
  
  public export
  JSType WindowClient where
    parents =  [ Client , Object ]

    mixins =  []
  
  export
  ancestorOrigins : (obj : WindowClient) -> JSIO (Array String)
  ancestorOrigins a = primJS $ WindowClient.prim__ancestorOrigins a
  
  export
  focused : (obj : WindowClient) -> JSIO Boolean
  focused a = primJS $ WindowClient.prim__focused a
  
  export
  visibilityState : (obj : WindowClient) -> JSIO VisibilityState
  visibilityState a = primJS $ WindowClient.prim__visibilityState a
  
  export
  focus : (obj : WindowClient) -> JSIO (Promise WindowClient)
  focus a = primJS $ WindowClient.prim__focus a
  
  export
  navigate :  (obj : WindowClient)
           -> (url : String)
           -> JSIO (Promise (Nullable WindowClient))
  navigate a b = primJS $ WindowClient.prim__navigate a b


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  public export
  JSType CacheQueryOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (ignoreSearch : UndefOr Boolean)
      -> (ignoreMethod : UndefOr Boolean)
      -> (ignoreVary : UndefOr Boolean)
      -> JSIO CacheQueryOptions
  new a b c = primJS $ CacheQueryOptions.prim__new a b c
  
  export
  ignoreMethod : (obj : CacheQueryOptions) -> JSIO (UndefOr Boolean)
  ignoreMethod a = primJS $ CacheQueryOptions.prim__ignoreMethod a
  
  export
  setIgnoreMethod :  (obj : CacheQueryOptions)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setIgnoreMethod a b = primJS $ CacheQueryOptions.prim__setIgnoreMethod a b
  
  export
  ignoreSearch : (obj : CacheQueryOptions) -> JSIO (UndefOr Boolean)
  ignoreSearch a = primJS $ CacheQueryOptions.prim__ignoreSearch a
  
  export
  setIgnoreSearch :  (obj : CacheQueryOptions)
                  -> (value : UndefOr Boolean)
                  -> JSIO ()
  setIgnoreSearch a b = primJS $ CacheQueryOptions.prim__setIgnoreSearch a b
  
  export
  ignoreVary : (obj : CacheQueryOptions) -> JSIO (UndefOr Boolean)
  ignoreVary a = primJS $ CacheQueryOptions.prim__ignoreVary a
  
  export
  setIgnoreVary :  (obj : CacheQueryOptions)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setIgnoreVary a b = primJS $ CacheQueryOptions.prim__setIgnoreVary a b

namespace ClientQueryOptions
  
  public export
  JSType ClientQueryOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (includeUncontrolled : UndefOr Boolean)
      -> (type : UndefOr ClientType)
      -> JSIO ClientQueryOptions
  new a b = primJS $ ClientQueryOptions.prim__new a b
  
  export
  includeUncontrolled : (obj : ClientQueryOptions) -> JSIO (UndefOr Boolean)
  includeUncontrolled a = primJS $ ClientQueryOptions.prim__includeUncontrolled a
  
  export
  setIncludeUncontrolled :  (obj : ClientQueryOptions)
                         -> (value : UndefOr Boolean)
                         -> JSIO ()
  setIncludeUncontrolled a b = primJS $ ClientQueryOptions.prim__setIncludeUncontrolled a
                                                                                        b
  
  export
  type : (obj : ClientQueryOptions) -> JSIO (UndefOr ClientType)
  type a = primJS $ ClientQueryOptions.prim__type a
  
  export
  setType :  (obj : ClientQueryOptions)
          -> (value : UndefOr ClientType)
          -> JSIO ()
  setType a b = primJS $ ClientQueryOptions.prim__setType a b

namespace ExtendableEventInit
  
  public export
  JSType ExtendableEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new : JSIO ExtendableEventInit
  new = primJS $ ExtendableEventInit.prim__new 

namespace ExtendableMessageEventInit
  
  public export
  JSType ExtendableMessageEventInit where
    parents =  [ ExtendableEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (data_ : UndefOr AnyPtr)
      -> (origin : UndefOr String)
      -> (lastEventId : UndefOr String)
      -> (source : UndefOr (Nullable (Union3 Client ServiceWorker MessagePort)))
      -> (ports : UndefOr (Array MessagePort))
      -> JSIO ExtendableMessageEventInit
  new a b c d e = primJS $ ExtendableMessageEventInit.prim__new a b c d e
  
  export
  data_ : (obj : ExtendableMessageEventInit) -> JSIO (UndefOr AnyPtr)
  data_ a = primJS $ ExtendableMessageEventInit.prim__data a
  
  export
  setData :  (obj : ExtendableMessageEventInit)
          -> (value : UndefOr AnyPtr)
          -> JSIO ()
  setData a b = primJS $ ExtendableMessageEventInit.prim__setData a b
  
  export
  lastEventId : (obj : ExtendableMessageEventInit) -> JSIO (UndefOr String)
  lastEventId a = primJS $ ExtendableMessageEventInit.prim__lastEventId a
  
  export
  setLastEventId :  (obj : ExtendableMessageEventInit)
                 -> (value : UndefOr String)
                 -> JSIO ()
  setLastEventId a b = primJS $ ExtendableMessageEventInit.prim__setLastEventId a
                                                                                b
  
  export
  origin : (obj : ExtendableMessageEventInit) -> JSIO (UndefOr String)
  origin a = primJS $ ExtendableMessageEventInit.prim__origin a
  
  export
  setOrigin :  (obj : ExtendableMessageEventInit)
            -> (value : UndefOr String)
            -> JSIO ()
  setOrigin a b = primJS $ ExtendableMessageEventInit.prim__setOrigin a b
  
  export
  ports :  (obj : ExtendableMessageEventInit)
        -> JSIO (UndefOr (Array MessagePort))
  ports a = primJS $ ExtendableMessageEventInit.prim__ports a
  
  export
  setPorts :  (obj : ExtendableMessageEventInit)
           -> (value : UndefOr (Array MessagePort))
           -> JSIO ()
  setPorts a b = primJS $ ExtendableMessageEventInit.prim__setPorts a b
  
  export
  source :  (obj : ExtendableMessageEventInit)
         -> JSIO (UndefOr (Nullable (Union3 Client ServiceWorker MessagePort)))
  source a = primJS $ ExtendableMessageEventInit.prim__source a
  
  export
  setSource :  (obj : ExtendableMessageEventInit)
            -> (value : UndefOr (Nullable (Union3 Client
                                                  ServiceWorker
                                                  MessagePort)))
            -> JSIO ()
  setSource a b = primJS $ ExtendableMessageEventInit.prim__setSource a b

namespace FetchEventInit
  
  public export
  JSType FetchEventInit where
    parents =  [ ExtendableEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (request : Request)
      -> (preloadResponse : UndefOr (Promise AnyPtr))
      -> (clientId : UndefOr String)
      -> (resultingClientId : UndefOr String)
      -> (replacesClientId : UndefOr String)
      -> (handled : UndefOr (Promise Undefined))
      -> JSIO FetchEventInit
  new a b c d e f = primJS $ FetchEventInit.prim__new a b c d e f
  
  export
  clientId : (obj : FetchEventInit) -> JSIO (UndefOr String)
  clientId a = primJS $ FetchEventInit.prim__clientId a
  
  export
  setClientId : (obj : FetchEventInit) -> (value : UndefOr String) -> JSIO ()
  setClientId a b = primJS $ FetchEventInit.prim__setClientId a b
  
  export
  handled : (obj : FetchEventInit) -> JSIO (UndefOr (Promise Undefined))
  handled a = primJS $ FetchEventInit.prim__handled a
  
  export
  setHandled :  (obj : FetchEventInit)
             -> (value : UndefOr (Promise Undefined))
             -> JSIO ()
  setHandled a b = primJS $ FetchEventInit.prim__setHandled a b
  
  export
  preloadResponse : (obj : FetchEventInit) -> JSIO (UndefOr (Promise AnyPtr))
  preloadResponse a = primJS $ FetchEventInit.prim__preloadResponse a
  
  export
  setPreloadResponse :  (obj : FetchEventInit)
                     -> (value : UndefOr (Promise AnyPtr))
                     -> JSIO ()
  setPreloadResponse a b = primJS $ FetchEventInit.prim__setPreloadResponse a b
  
  export
  replacesClientId : (obj : FetchEventInit) -> JSIO (UndefOr String)
  replacesClientId a = primJS $ FetchEventInit.prim__replacesClientId a
  
  export
  setReplacesClientId :  (obj : FetchEventInit)
                      -> (value : UndefOr String)
                      -> JSIO ()
  setReplacesClientId a b = primJS $ FetchEventInit.prim__setReplacesClientId a
                                                                              b
  
  export
  request : (obj : FetchEventInit) -> JSIO Request
  request a = primJS $ FetchEventInit.prim__request a
  
  export
  setRequest : (obj : FetchEventInit) -> (value : Request) -> JSIO ()
  setRequest a b = primJS $ FetchEventInit.prim__setRequest a b
  
  export
  resultingClientId : (obj : FetchEventInit) -> JSIO (UndefOr String)
  resultingClientId a = primJS $ FetchEventInit.prim__resultingClientId a
  
  export
  setResultingClientId :  (obj : FetchEventInit)
                       -> (value : UndefOr String)
                       -> JSIO ()
  setResultingClientId a b = primJS $ FetchEventInit.prim__setResultingClientId a
                                                                                b

namespace MultiCacheQueryOptions
  
  public export
  JSType MultiCacheQueryOptions where
    parents =  [ CacheQueryOptions , Object ]

    mixins =  []
  
  export
  new : (cacheName : UndefOr String) -> JSIO MultiCacheQueryOptions
  new a = primJS $ MultiCacheQueryOptions.prim__new a
  
  export
  cacheName : (obj : MultiCacheQueryOptions) -> JSIO (UndefOr String)
  cacheName a = primJS $ MultiCacheQueryOptions.prim__cacheName a
  
  export
  setCacheName :  (obj : MultiCacheQueryOptions)
               -> (value : UndefOr String)
               -> JSIO ()
  setCacheName a b = primJS $ MultiCacheQueryOptions.prim__setCacheName a b

namespace NavigationPreloadState
  
  public export
  JSType NavigationPreloadState where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (enabled : UndefOr Boolean)
      -> (headerValue : UndefOr ByteString)
      -> JSIO NavigationPreloadState
  new a b = primJS $ NavigationPreloadState.prim__new a b
  
  export
  enabled : (obj : NavigationPreloadState) -> JSIO (UndefOr Boolean)
  enabled a = primJS $ NavigationPreloadState.prim__enabled a
  
  export
  setEnabled :  (obj : NavigationPreloadState)
             -> (value : UndefOr Boolean)
             -> JSIO ()
  setEnabled a b = primJS $ NavigationPreloadState.prim__setEnabled a b
  
  export
  headerValue : (obj : NavigationPreloadState) -> JSIO (UndefOr ByteString)
  headerValue a = primJS $ NavigationPreloadState.prim__headerValue a
  
  export
  setHeaderValue :  (obj : NavigationPreloadState)
                 -> (value : UndefOr ByteString)
                 -> JSIO ()
  setHeaderValue a b = primJS $ NavigationPreloadState.prim__setHeaderValue a b

namespace RegistrationOptions
  
  public export
  JSType RegistrationOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (scope : UndefOr String)
      -> (type : UndefOr WorkerType)
      -> (updateViaCache : UndefOr ServiceWorkerUpdateViaCache)
      -> JSIO RegistrationOptions
  new a b c = primJS $ RegistrationOptions.prim__new a b c
  
  export
  scope : (obj : RegistrationOptions) -> JSIO (UndefOr String)
  scope a = primJS $ RegistrationOptions.prim__scope a
  
  export
  setScope : (obj : RegistrationOptions) -> (value : UndefOr String) -> JSIO ()
  setScope a b = primJS $ RegistrationOptions.prim__setScope a b
  
  export
  type : (obj : RegistrationOptions) -> JSIO (UndefOr WorkerType)
  type a = primJS $ RegistrationOptions.prim__type a
  
  export
  setType :  (obj : RegistrationOptions)
          -> (value : UndefOr WorkerType)
          -> JSIO ()
  setType a b = primJS $ RegistrationOptions.prim__setType a b
  
  export
  updateViaCache :  (obj : RegistrationOptions)
                 -> JSIO (UndefOr ServiceWorkerUpdateViaCache)
  updateViaCache a = primJS $ RegistrationOptions.prim__updateViaCache a
  
  export
  setUpdateViaCache :  (obj : RegistrationOptions)
                    -> (value : UndefOr ServiceWorkerUpdateViaCache)
                    -> JSIO ()
  setUpdateViaCache a b = primJS $ RegistrationOptions.prim__setUpdateViaCache a
                                                                               b
