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
         -> (requests : Array (Union2 Request String))
         -> JSIO (Promise Undefined)
  addAll a b = primJS $ Cache.prim__addAll a b
  
  export
  add :  (obj : Cache)
      -> (request : NS I [ Request , String ])
      -> JSIO (Promise Undefined)
  add a b = primJS $ Cache.prim__add a (toFFI b)
  
  export
  delete :  (obj : Cache)
         -> (request : NS I [ Request , String ])
         -> (options : Optional CacheQueryOptions)
         -> JSIO (Promise Boolean)
  delete a b c = primJS $ Cache.prim__delete a (toFFI b) (toFFI c)

  export
  delete' :  (obj : Cache)
          -> (request : NS I [ Request , String ])
          -> JSIO (Promise Boolean)
  delete' a b = primJS $ Cache.prim__delete a (toFFI b) undef
  
  export
  keys :  (obj : Cache)
       -> (request : Optional (NS I [ Request , String ]))
       -> (options : Optional CacheQueryOptions)
       -> JSIO (Promise (Array Request))
  keys a b c = primJS $ Cache.prim__keys a (toFFI b) (toFFI c)

  export
  keys' : (obj : Cache) -> JSIO (Promise (Array Request))
  keys' a = primJS $ Cache.prim__keys a undef undef
  
  export
  matchAll :  (obj : Cache)
           -> (request : Optional (NS I [ Request , String ]))
           -> (options : Optional CacheQueryOptions)
           -> JSIO (Promise (Array Response))
  matchAll a b c = primJS $ Cache.prim__matchAll a (toFFI b) (toFFI c)

  export
  matchAll' : (obj : Cache) -> JSIO (Promise (Array Response))
  matchAll' a = primJS $ Cache.prim__matchAll a undef undef
  
  export
  match :  (obj : Cache)
        -> (request : NS I [ Request , String ])
        -> (options : Optional CacheQueryOptions)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ Cache.prim__match a (toFFI b) (toFFI c)

  export
  match' :  (obj : Cache)
         -> (request : NS I [ Request , String ])
         -> JSIO (Promise (Union2 Response Undefined))
  match' a b = primJS $ Cache.prim__match a (toFFI b) undef
  
  export
  put :  (obj : Cache)
      -> (request : NS I [ Request , String ])
      -> (response : Response)
      -> JSIO (Promise Undefined)
  put a b c = primJS $ Cache.prim__put a (toFFI b) c

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
        -> (request : NS I [ Request , String ])
        -> (options : Optional MultiCacheQueryOptions)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ CacheStorage.prim__match a (toFFI b) (toFFI c)

  export
  match' :  (obj : CacheStorage)
         -> (request : NS I [ Request , String ])
         -> JSIO (Promise (Union2 Response Undefined))
  match' a b = primJS $ CacheStorage.prim__match a (toFFI b) undef
  
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
  frameType a = tryJS "Client.frameType" $ Client.prim__frameType a
  
  export
  id : (obj : Client) -> JSIO String
  id a = primJS $ Client.prim__id a
  
  export
  type : (obj : Client) -> JSIO ClientType
  type a = tryJS "Client.type" $ Client.prim__type a
  
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
               -> (options : Optional PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ Client.prim__postMessage1 a b (toFFI c)

  export
  postMessage1' : (obj : Client) -> (message : AnyPtr) -> JSIO ()
  postMessage1' a b = primJS $ Client.prim__postMessage1 a b undef

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
           -> (options : Optional ClientQueryOptions)
           -> JSIO (Promise (Array Client))
  matchAll a b = primJS $ Clients.prim__matchAll a (toFFI b)

  export
  matchAll' : (obj : Clients) -> JSIO (Promise (Array Client))
  matchAll' a = primJS $ Clients.prim__matchAll a undef
  
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
      -> (eventInitDict : Optional ExtendableEventInit)
      -> JSIO ExtendableEvent
  new a b = primJS $ ExtendableEvent.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO ExtendableEvent
  new' a = primJS $ ExtendableEvent.prim__new a undef
  
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
      -> (eventInitDict : Optional ExtendableMessageEventInit)
      -> JSIO ExtendableMessageEvent
  new a b = primJS $ ExtendableMessageEvent.prim__new a (toFFI b)

  export
  new' : (type : String) -> JSIO ExtendableMessageEvent
  new' a = primJS $ ExtendableMessageEvent.prim__new a undef
  
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
         -> JSIO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
  source a = tryJS "ExtendableMessageEvent.source"
           $ ExtendableMessageEvent.prim__source a

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
  setHeaderValue a b = primJS
                     $ NavigationPreloadManager.prim__setHeaderValue a b

namespace ServiceWorker
  
  public export
  JSType ServiceWorker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]
  
  export
  onstatechange : (obj : ServiceWorker) -> JSIO (Maybe EventHandlerNonNull)
  onstatechange a = tryJS "ServiceWorker.onstatechange"
                  $ ServiceWorker.prim__onstatechange a
  
  export
  setOnstatechange :  (obj : ServiceWorker)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnstatechange a b = primJS
                       $ ServiceWorker.prim__setOnstatechange a (toFFI b)
  
  export
  scriptURL : (obj : ServiceWorker) -> JSIO String
  scriptURL a = primJS $ ServiceWorker.prim__scriptURL a
  
  export
  state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
  state a = tryJS "ServiceWorker.state" $ ServiceWorker.prim__state a
  
  export
  postMessage :  (obj : ServiceWorker)
              -> (message : AnyPtr)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ ServiceWorker.prim__postMessage a b c
  
  export
  postMessage1 :  (obj : ServiceWorker)
               -> (message : AnyPtr)
               -> (options : Optional PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ ServiceWorker.prim__postMessage1 a b (toFFI c)

  export
  postMessage1' : (obj : ServiceWorker) -> (message : AnyPtr) -> JSIO ()
  postMessage1' a b = primJS $ ServiceWorker.prim__postMessage1 a b undef

namespace ServiceWorkerContainer
  
  public export
  JSType ServiceWorkerContainer where
    parents =  [ EventTarget , Object ]

    mixins =  []
  
  export
  controller : (obj : ServiceWorkerContainer) -> JSIO (Maybe ServiceWorker)
  controller a = tryJS "ServiceWorkerContainer.controller"
               $ ServiceWorkerContainer.prim__controller a
  
  export
  oncontrollerchange :  (obj : ServiceWorkerContainer)
                     -> JSIO (Maybe EventHandlerNonNull)
  oncontrollerchange a = tryJS "ServiceWorkerContainer.oncontrollerchange"
                       $ ServiceWorkerContainer.prim__oncontrollerchange a
  
  export
  setOncontrollerchange :  (obj : ServiceWorkerContainer)
                        -> (value : Maybe EventHandlerNonNull)
                        -> JSIO ()
  setOncontrollerchange a b = primJS
                            $ ServiceWorkerContainer.prim__setOncontrollerchange a
                                                                                 (toFFI b)
  
  export
  onmessage : (obj : ServiceWorkerContainer) -> JSIO (Maybe EventHandlerNonNull)
  onmessage a = tryJS "ServiceWorkerContainer.onmessage"
              $ ServiceWorkerContainer.prim__onmessage a
  
  export
  setOnmessage :  (obj : ServiceWorkerContainer)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOnmessage a b = primJS
                   $ ServiceWorkerContainer.prim__setOnmessage a (toFFI b)
  
  export
  onmessageerror :  (obj : ServiceWorkerContainer)
                 -> JSIO (Maybe EventHandlerNonNull)
  onmessageerror a = tryJS "ServiceWorkerContainer.onmessageerror"
                   $ ServiceWorkerContainer.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : ServiceWorkerContainer)
                    -> (value : Maybe EventHandlerNonNull)
                    -> JSIO ()
  setOnmessageerror a b = primJS
                        $ ServiceWorkerContainer.prim__setOnmessageerror a
                                                                         (toFFI b)
  
  export
  ready :  (obj : ServiceWorkerContainer)
        -> JSIO (Promise ServiceWorkerRegistration)
  ready a = primJS $ ServiceWorkerContainer.prim__ready a
  
  export
  getRegistration :  (obj : ServiceWorkerContainer)
                  -> (clientURL : Optional String)
                  -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
  getRegistration a b = primJS
                      $ ServiceWorkerContainer.prim__getRegistration a (toFFI b)

  export
  getRegistration' :  (obj : ServiceWorkerContainer)
                   -> JSIO (Promise (Union2 ServiceWorkerRegistration
                                            Undefined))
  getRegistration' a = primJS
                     $ ServiceWorkerContainer.prim__getRegistration a undef
  
  export
  getRegistrations :  (obj : ServiceWorkerContainer)
                   -> JSIO (Promise (Array ServiceWorkerRegistration))
  getRegistrations a = primJS $ ServiceWorkerContainer.prim__getRegistrations a
  
  export
  register :  (obj : ServiceWorkerContainer)
           -> (scriptURL : String)
           -> (options : Optional RegistrationOptions)
           -> JSIO (Promise ServiceWorkerRegistration)
  register a b c = primJS $ ServiceWorkerContainer.prim__register a b (toFFI c)

  export
  register' :  (obj : ServiceWorkerContainer)
            -> (scriptURL : String)
            -> JSIO (Promise ServiceWorkerRegistration)
  register' a b = primJS $ ServiceWorkerContainer.prim__register a b undef
  
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
  onactivate :  (obj : ServiceWorkerGlobalScope)
             -> JSIO (Maybe EventHandlerNonNull)
  onactivate a = tryJS "ServiceWorkerGlobalScope.onactivate"
               $ ServiceWorkerGlobalScope.prim__onactivate a
  
  export
  setOnactivate :  (obj : ServiceWorkerGlobalScope)
                -> (value : Maybe EventHandlerNonNull)
                -> JSIO ()
  setOnactivate a b = primJS
                    $ ServiceWorkerGlobalScope.prim__setOnactivate a (toFFI b)
  
  export
  onfetch : (obj : ServiceWorkerGlobalScope) -> JSIO (Maybe EventHandlerNonNull)
  onfetch a = tryJS "ServiceWorkerGlobalScope.onfetch"
            $ ServiceWorkerGlobalScope.prim__onfetch a
  
  export
  setOnfetch :  (obj : ServiceWorkerGlobalScope)
             -> (value : Maybe EventHandlerNonNull)
             -> JSIO ()
  setOnfetch a b = primJS
                 $ ServiceWorkerGlobalScope.prim__setOnfetch a (toFFI b)
  
  export
  oninstall :  (obj : ServiceWorkerGlobalScope)
            -> JSIO (Maybe EventHandlerNonNull)
  oninstall a = tryJS "ServiceWorkerGlobalScope.oninstall"
              $ ServiceWorkerGlobalScope.prim__oninstall a
  
  export
  setOninstall :  (obj : ServiceWorkerGlobalScope)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOninstall a b = primJS
                   $ ServiceWorkerGlobalScope.prim__setOninstall a (toFFI b)
  
  export
  onmessage :  (obj : ServiceWorkerGlobalScope)
            -> JSIO (Maybe EventHandlerNonNull)
  onmessage a = tryJS "ServiceWorkerGlobalScope.onmessage"
              $ ServiceWorkerGlobalScope.prim__onmessage a
  
  export
  setOnmessage :  (obj : ServiceWorkerGlobalScope)
               -> (value : Maybe EventHandlerNonNull)
               -> JSIO ()
  setOnmessage a b = primJS
                   $ ServiceWorkerGlobalScope.prim__setOnmessage a (toFFI b)
  
  export
  onmessageerror :  (obj : ServiceWorkerGlobalScope)
                 -> JSIO (Maybe EventHandlerNonNull)
  onmessageerror a = tryJS "ServiceWorkerGlobalScope.onmessageerror"
                   $ ServiceWorkerGlobalScope.prim__onmessageerror a
  
  export
  setOnmessageerror :  (obj : ServiceWorkerGlobalScope)
                    -> (value : Maybe EventHandlerNonNull)
                    -> JSIO ()
  setOnmessageerror a b = primJS
                        $ ServiceWorkerGlobalScope.prim__setOnmessageerror a
                                                                           (toFFI b)
  
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
  active : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  active a = tryJS "ServiceWorkerRegistration.active"
           $ ServiceWorkerRegistration.prim__active a
  
  export
  installing : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  installing a = tryJS "ServiceWorkerRegistration.installing"
               $ ServiceWorkerRegistration.prim__installing a
  
  export
  navigationPreload :  (obj : ServiceWorkerRegistration)
                    -> JSIO NavigationPreloadManager
  navigationPreload a = primJS
                      $ ServiceWorkerRegistration.prim__navigationPreload a
  
  export
  onupdatefound :  (obj : ServiceWorkerRegistration)
                -> JSIO (Maybe EventHandlerNonNull)
  onupdatefound a = tryJS "ServiceWorkerRegistration.onupdatefound"
                  $ ServiceWorkerRegistration.prim__onupdatefound a
  
  export
  setOnupdatefound :  (obj : ServiceWorkerRegistration)
                   -> (value : Maybe EventHandlerNonNull)
                   -> JSIO ()
  setOnupdatefound a b = primJS
                       $ ServiceWorkerRegistration.prim__setOnupdatefound a
                                                                          (toFFI b)
  
  export
  scope : (obj : ServiceWorkerRegistration) -> JSIO String
  scope a = primJS $ ServiceWorkerRegistration.prim__scope a
  
  export
  updateViaCache :  (obj : ServiceWorkerRegistration)
                 -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a = tryJS "ServiceWorkerRegistration.updateViaCache"
                   $ ServiceWorkerRegistration.prim__updateViaCache a
  
  export
  waiting : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  waiting a = tryJS "ServiceWorkerRegistration.waiting"
            $ ServiceWorkerRegistration.prim__waiting a
  
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
  focused : (obj : WindowClient) -> JSIO Bool
  focused a = tryJS "WindowClient.focused" $ WindowClient.prim__focused a
  
  export
  visibilityState : (obj : WindowClient) -> JSIO VisibilityState
  visibilityState a = tryJS "WindowClient.visibilityState"
                    $ WindowClient.prim__visibilityState a
  
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
  new :  (ignoreSearch : Optional Bool)
      -> (ignoreMethod : Optional Bool)
      -> (ignoreVary : Optional Bool)
      -> JSIO CacheQueryOptions
  new a b c = primJS $ CacheQueryOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO CacheQueryOptions
  new' = primJS $ CacheQueryOptions.prim__new undef undef undef
  
  export
  ignoreMethod : (obj : CacheQueryOptions) -> JSIO $ Optional Bool
  ignoreMethod a = tryJS "CacheQueryOptions.ignoreMethod"
                 $ CacheQueryOptions.prim__ignoreMethod a
  
  export
  setIgnoreMethod :  (obj : CacheQueryOptions)
                  -> (value : Optional Bool)
                  -> JSIO ()
  setIgnoreMethod a b = primJS
                      $ CacheQueryOptions.prim__setIgnoreMethod a (toFFI b)

  export
  setIgnoreMethod' : (obj : CacheQueryOptions) -> JSIO ()
  setIgnoreMethod' a = primJS $ CacheQueryOptions.prim__setIgnoreMethod a undef
  
  export
  ignoreSearch : (obj : CacheQueryOptions) -> JSIO $ Optional Bool
  ignoreSearch a = tryJS "CacheQueryOptions.ignoreSearch"
                 $ CacheQueryOptions.prim__ignoreSearch a
  
  export
  setIgnoreSearch :  (obj : CacheQueryOptions)
                  -> (value : Optional Bool)
                  -> JSIO ()
  setIgnoreSearch a b = primJS
                      $ CacheQueryOptions.prim__setIgnoreSearch a (toFFI b)

  export
  setIgnoreSearch' : (obj : CacheQueryOptions) -> JSIO ()
  setIgnoreSearch' a = primJS $ CacheQueryOptions.prim__setIgnoreSearch a undef
  
  export
  ignoreVary : (obj : CacheQueryOptions) -> JSIO $ Optional Bool
  ignoreVary a = tryJS "CacheQueryOptions.ignoreVary"
               $ CacheQueryOptions.prim__ignoreVary a
  
  export
  setIgnoreVary :  (obj : CacheQueryOptions)
                -> (value : Optional Bool)
                -> JSIO ()
  setIgnoreVary a b = primJS $ CacheQueryOptions.prim__setIgnoreVary a (toFFI b)

  export
  setIgnoreVary' : (obj : CacheQueryOptions) -> JSIO ()
  setIgnoreVary' a = primJS $ CacheQueryOptions.prim__setIgnoreVary a undef

namespace ClientQueryOptions
  
  public export
  JSType ClientQueryOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (includeUncontrolled : Optional Bool)
      -> (type : Optional ClientType)
      -> JSIO ClientQueryOptions
  new a b = primJS $ ClientQueryOptions.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO ClientQueryOptions
  new' = primJS $ ClientQueryOptions.prim__new undef undef
  
  export
  includeUncontrolled : (obj : ClientQueryOptions) -> JSIO $ Optional Bool
  includeUncontrolled a = tryJS "ClientQueryOptions.includeUncontrolled"
                        $ ClientQueryOptions.prim__includeUncontrolled a
  
  export
  setIncludeUncontrolled :  (obj : ClientQueryOptions)
                         -> (value : Optional Bool)
                         -> JSIO ()
  setIncludeUncontrolled a b = primJS
                             $ ClientQueryOptions.prim__setIncludeUncontrolled a
                                                                               (toFFI b)

  export
  setIncludeUncontrolled' : (obj : ClientQueryOptions) -> JSIO ()
  setIncludeUncontrolled' a = primJS
                            $ ClientQueryOptions.prim__setIncludeUncontrolled a
                                                                              undef
  
  export
  type : (obj : ClientQueryOptions) -> JSIO $ Optional ClientType
  type a = tryJS "ClientQueryOptions.type" $ ClientQueryOptions.prim__type a
  
  export
  setType :  (obj : ClientQueryOptions)
          -> (value : Optional ClientType)
          -> JSIO ()
  setType a b = primJS $ ClientQueryOptions.prim__setType a (toFFI b)

  export
  setType' : (obj : ClientQueryOptions) -> JSIO ()
  setType' a = primJS $ ClientQueryOptions.prim__setType a undef

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
  new :  (data_ : Optional AnyPtr)
      -> (origin : Optional String)
      -> (lastEventId : Optional String)
      -> (source : Optional (Maybe (NS I [ Client
                                         , ServiceWorker
                                         , MessagePort
                                         ])))
      -> (ports : Optional (Array MessagePort))
      -> JSIO ExtendableMessageEventInit
  new a b c d e = primJS
                $ ExtendableMessageEventInit.prim__new (toFFI a)
                                                       (toFFI b)
                                                       (toFFI c)
                                                       (toFFI d)
                                                       (toFFI e)

  export
  new' : JSIO ExtendableMessageEventInit
  new' = primJS
       $ ExtendableMessageEventInit.prim__new undef undef undef undef undef
  
  export
  data_ : (obj : ExtendableMessageEventInit) -> JSIO $ Optional AnyPtr
  data_ a = tryJS "ExtendableMessageEventInit.data_"
          $ ExtendableMessageEventInit.prim__data a
  
  export
  setData :  (obj : ExtendableMessageEventInit)
          -> (value : Optional AnyPtr)
          -> JSIO ()
  setData a b = primJS $ ExtendableMessageEventInit.prim__setData a (toFFI b)

  export
  setData' : (obj : ExtendableMessageEventInit) -> JSIO ()
  setData' a = primJS $ ExtendableMessageEventInit.prim__setData a undef
  
  export
  lastEventId : (obj : ExtendableMessageEventInit) -> JSIO $ Optional String
  lastEventId a = tryJS "ExtendableMessageEventInit.lastEventId"
                $ ExtendableMessageEventInit.prim__lastEventId a
  
  export
  setLastEventId :  (obj : ExtendableMessageEventInit)
                 -> (value : Optional String)
                 -> JSIO ()
  setLastEventId a b = primJS
                     $ ExtendableMessageEventInit.prim__setLastEventId a
                                                                       (toFFI b)

  export
  setLastEventId' : (obj : ExtendableMessageEventInit) -> JSIO ()
  setLastEventId' a = primJS
                    $ ExtendableMessageEventInit.prim__setLastEventId a undef
  
  export
  origin : (obj : ExtendableMessageEventInit) -> JSIO $ Optional String
  origin a = tryJS "ExtendableMessageEventInit.origin"
           $ ExtendableMessageEventInit.prim__origin a
  
  export
  setOrigin :  (obj : ExtendableMessageEventInit)
            -> (value : Optional String)
            -> JSIO ()
  setOrigin a b = primJS
                $ ExtendableMessageEventInit.prim__setOrigin a (toFFI b)

  export
  setOrigin' : (obj : ExtendableMessageEventInit) -> JSIO ()
  setOrigin' a = primJS $ ExtendableMessageEventInit.prim__setOrigin a undef
  
  export
  ports :  (obj : ExtendableMessageEventInit)
        -> JSIO $ Optional (Array MessagePort)
  ports a = tryJS "ExtendableMessageEventInit.ports"
          $ ExtendableMessageEventInit.prim__ports a
  
  export
  setPorts :  (obj : ExtendableMessageEventInit)
           -> (value : Optional (Array MessagePort))
           -> JSIO ()
  setPorts a b = primJS $ ExtendableMessageEventInit.prim__setPorts a (toFFI b)

  export
  setPorts' : (obj : ExtendableMessageEventInit) -> JSIO ()
  setPorts' a = primJS $ ExtendableMessageEventInit.prim__setPorts a undef
  
  export
  source :  (obj : ExtendableMessageEventInit)
         -> JSIO $ Optional (Maybe (NS I [ Client
                                         , ServiceWorker
                                         , MessagePort
                                         ]))
  source a = tryJS "ExtendableMessageEventInit.source"
           $ ExtendableMessageEventInit.prim__source a
  
  export
  setSource :  (obj : ExtendableMessageEventInit)
            -> (value : Optional (Maybe (NS I [ Client
                                              , ServiceWorker
                                              , MessagePort
                                              ])))
            -> JSIO ()
  setSource a b = primJS
                $ ExtendableMessageEventInit.prim__setSource a (toFFI b)

  export
  setSource' : (obj : ExtendableMessageEventInit) -> JSIO ()
  setSource' a = primJS $ ExtendableMessageEventInit.prim__setSource a undef

namespace FetchEventInit
  
  public export
  JSType FetchEventInit where
    parents =  [ ExtendableEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (request : Request)
      -> (preloadResponse : Optional (Promise AnyPtr))
      -> (clientId : Optional String)
      -> (resultingClientId : Optional String)
      -> (replacesClientId : Optional String)
      -> (handled : Optional (Promise Undefined))
      -> JSIO FetchEventInit
  new a b c d e f = primJS
                  $ FetchEventInit.prim__new a
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (toFFI e)
                                             (toFFI f)

  export
  new' : (request : Request) -> JSIO FetchEventInit
  new' a = primJS $ FetchEventInit.prim__new a undef undef undef undef undef
  
  export
  clientId : (obj : FetchEventInit) -> JSIO $ Optional String
  clientId a = tryJS "FetchEventInit.clientId" $ FetchEventInit.prim__clientId a
  
  export
  setClientId : (obj : FetchEventInit) -> (value : Optional String) -> JSIO ()
  setClientId a b = primJS $ FetchEventInit.prim__setClientId a (toFFI b)

  export
  setClientId' : (obj : FetchEventInit) -> JSIO ()
  setClientId' a = primJS $ FetchEventInit.prim__setClientId a undef
  
  export
  handled : (obj : FetchEventInit) -> JSIO $ Optional (Promise Undefined)
  handled a = tryJS "FetchEventInit.handled" $ FetchEventInit.prim__handled a
  
  export
  setHandled :  (obj : FetchEventInit)
             -> (value : Optional (Promise Undefined))
             -> JSIO ()
  setHandled a b = primJS $ FetchEventInit.prim__setHandled a (toFFI b)

  export
  setHandled' : (obj : FetchEventInit) -> JSIO ()
  setHandled' a = primJS $ FetchEventInit.prim__setHandled a undef
  
  export
  preloadResponse : (obj : FetchEventInit) -> JSIO $ Optional (Promise AnyPtr)
  preloadResponse a = tryJS "FetchEventInit.preloadResponse"
                    $ FetchEventInit.prim__preloadResponse a
  
  export
  setPreloadResponse :  (obj : FetchEventInit)
                     -> (value : Optional (Promise AnyPtr))
                     -> JSIO ()
  setPreloadResponse a b = primJS
                         $ FetchEventInit.prim__setPreloadResponse a (toFFI b)

  export
  setPreloadResponse' : (obj : FetchEventInit) -> JSIO ()
  setPreloadResponse' a = primJS
                        $ FetchEventInit.prim__setPreloadResponse a undef
  
  export
  replacesClientId : (obj : FetchEventInit) -> JSIO $ Optional String
  replacesClientId a = tryJS "FetchEventInit.replacesClientId"
                     $ FetchEventInit.prim__replacesClientId a
  
  export
  setReplacesClientId :  (obj : FetchEventInit)
                      -> (value : Optional String)
                      -> JSIO ()
  setReplacesClientId a b = primJS
                          $ FetchEventInit.prim__setReplacesClientId a (toFFI b)

  export
  setReplacesClientId' : (obj : FetchEventInit) -> JSIO ()
  setReplacesClientId' a = primJS
                         $ FetchEventInit.prim__setReplacesClientId a undef
  
  export
  request : (obj : FetchEventInit) -> JSIO Request
  request a = primJS $ FetchEventInit.prim__request a
  
  export
  setRequest : (obj : FetchEventInit) -> (value : Request) -> JSIO ()
  setRequest a b = primJS $ FetchEventInit.prim__setRequest a b
  
  export
  resultingClientId : (obj : FetchEventInit) -> JSIO $ Optional String
  resultingClientId a = tryJS "FetchEventInit.resultingClientId"
                      $ FetchEventInit.prim__resultingClientId a
  
  export
  setResultingClientId :  (obj : FetchEventInit)
                       -> (value : Optional String)
                       -> JSIO ()
  setResultingClientId a b = primJS
                           $ FetchEventInit.prim__setResultingClientId a
                                                                       (toFFI b)

  export
  setResultingClientId' : (obj : FetchEventInit) -> JSIO ()
  setResultingClientId' a = primJS
                          $ FetchEventInit.prim__setResultingClientId a undef

namespace MultiCacheQueryOptions
  
  public export
  JSType MultiCacheQueryOptions where
    parents =  [ CacheQueryOptions , Object ]

    mixins =  []
  
  export
  new : (cacheName : Optional String) -> JSIO MultiCacheQueryOptions
  new a = primJS $ MultiCacheQueryOptions.prim__new (toFFI a)

  export
  new' : JSIO MultiCacheQueryOptions
  new' = primJS $ MultiCacheQueryOptions.prim__new undef
  
  export
  cacheName : (obj : MultiCacheQueryOptions) -> JSIO $ Optional String
  cacheName a = tryJS "MultiCacheQueryOptions.cacheName"
              $ MultiCacheQueryOptions.prim__cacheName a
  
  export
  setCacheName :  (obj : MultiCacheQueryOptions)
               -> (value : Optional String)
               -> JSIO ()
  setCacheName a b = primJS
                   $ MultiCacheQueryOptions.prim__setCacheName a (toFFI b)

  export
  setCacheName' : (obj : MultiCacheQueryOptions) -> JSIO ()
  setCacheName' a = primJS $ MultiCacheQueryOptions.prim__setCacheName a undef

namespace NavigationPreloadState
  
  public export
  JSType NavigationPreloadState where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (enabled : Optional Bool)
      -> (headerValue : Optional ByteString)
      -> JSIO NavigationPreloadState
  new a b = primJS $ NavigationPreloadState.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO NavigationPreloadState
  new' = primJS $ NavigationPreloadState.prim__new undef undef
  
  export
  enabled : (obj : NavigationPreloadState) -> JSIO $ Optional Bool
  enabled a = tryJS "NavigationPreloadState.enabled"
            $ NavigationPreloadState.prim__enabled a
  
  export
  setEnabled :  (obj : NavigationPreloadState)
             -> (value : Optional Bool)
             -> JSIO ()
  setEnabled a b = primJS $ NavigationPreloadState.prim__setEnabled a (toFFI b)

  export
  setEnabled' : (obj : NavigationPreloadState) -> JSIO ()
  setEnabled' a = primJS $ NavigationPreloadState.prim__setEnabled a undef
  
  export
  headerValue : (obj : NavigationPreloadState) -> JSIO $ Optional ByteString
  headerValue a = tryJS "NavigationPreloadState.headerValue"
                $ NavigationPreloadState.prim__headerValue a
  
  export
  setHeaderValue :  (obj : NavigationPreloadState)
                 -> (value : Optional ByteString)
                 -> JSIO ()
  setHeaderValue a b = primJS
                     $ NavigationPreloadState.prim__setHeaderValue a (toFFI b)

  export
  setHeaderValue' : (obj : NavigationPreloadState) -> JSIO ()
  setHeaderValue' a = primJS
                    $ NavigationPreloadState.prim__setHeaderValue a undef

namespace RegistrationOptions
  
  public export
  JSType RegistrationOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (scope : Optional String)
      -> (type : Optional WorkerType)
      -> (updateViaCache : Optional ServiceWorkerUpdateViaCache)
      -> JSIO RegistrationOptions
  new a b c = primJS
            $ RegistrationOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO RegistrationOptions
  new' = primJS $ RegistrationOptions.prim__new undef undef undef
  
  export
  scope : (obj : RegistrationOptions) -> JSIO $ Optional String
  scope a = tryJS "RegistrationOptions.scope"
          $ RegistrationOptions.prim__scope a
  
  export
  setScope : (obj : RegistrationOptions) -> (value : Optional String) -> JSIO ()
  setScope a b = primJS $ RegistrationOptions.prim__setScope a (toFFI b)

  export
  setScope' : (obj : RegistrationOptions) -> JSIO ()
  setScope' a = primJS $ RegistrationOptions.prim__setScope a undef
  
  export
  type : (obj : RegistrationOptions) -> JSIO $ Optional WorkerType
  type a = tryJS "RegistrationOptions.type" $ RegistrationOptions.prim__type a
  
  export
  setType :  (obj : RegistrationOptions)
          -> (value : Optional WorkerType)
          -> JSIO ()
  setType a b = primJS $ RegistrationOptions.prim__setType a (toFFI b)

  export
  setType' : (obj : RegistrationOptions) -> JSIO ()
  setType' a = primJS $ RegistrationOptions.prim__setType a undef
  
  export
  updateViaCache :  (obj : RegistrationOptions)
                 -> JSIO $ Optional ServiceWorkerUpdateViaCache
  updateViaCache a = tryJS "RegistrationOptions.updateViaCache"
                   $ RegistrationOptions.prim__updateViaCache a
  
  export
  setUpdateViaCache :  (obj : RegistrationOptions)
                    -> (value : Optional ServiceWorkerUpdateViaCache)
                    -> JSIO ()
  setUpdateViaCache a b = primJS
                        $ RegistrationOptions.prim__setUpdateViaCache a
                                                                      (toFFI b)

  export
  setUpdateViaCache' : (obj : RegistrationOptions) -> JSIO ()
  setUpdateViaCache' a = primJS
                       $ RegistrationOptions.prim__setUpdateViaCache a undef
