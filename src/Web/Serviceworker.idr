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
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Client.prim__postMessage a (toFFI b) c
  
  export
  postMessage1 :  (obj : Client)
               -> (message : Any)
               -> (options : Optional PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS $ Client.prim__postMessage1 a (toFFI b) (toFFI c)

  export
  postMessage1' : (obj : Client) -> (message : Any) -> JSIO ()
  postMessage1' a b = primJS $ Client.prim__postMessage1 a (toFFI b) undef

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
  data_ : (obj : ExtendableMessageEvent) -> JSIO Any
  data_ a = tryJS "ExtendableMessageEvent.data_"
          $ ExtendableMessageEvent.prim__data a
  
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
  onstatechange : ServiceWorker -> Attribute False Maybe EventHandlerNonNull
  onstatechange = fromNullablePrim "ServiceWorker.getonstatechange"
                                   prim__onstatechange
                                   prim__setOnstatechange
  
  export
  scriptURL : (obj : ServiceWorker) -> JSIO String
  scriptURL a = primJS $ ServiceWorker.prim__scriptURL a
  
  export
  state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
  state a = tryJS "ServiceWorker.state" $ ServiceWorker.prim__state a
  
  export
  postMessage :  (obj : ServiceWorker)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ ServiceWorker.prim__postMessage a (toFFI b) c
  
  export
  postMessage1 :  (obj : ServiceWorker)
               -> (message : Any)
               -> (options : Optional PostMessageOptions)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ ServiceWorker.prim__postMessage1 a (toFFI b) (toFFI c)

  export
  postMessage1' : (obj : ServiceWorker) -> (message : Any) -> JSIO ()
  postMessage1' a b = primJS
                    $ ServiceWorker.prim__postMessage1 a (toFFI b) undef

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
  oncontrollerchange : ServiceWorkerContainer -> Attribute False Maybe EventHandlerNonNull
  oncontrollerchange = fromNullablePrim "ServiceWorkerContainer.getoncontrollerchange"
                                        prim__oncontrollerchange
                                        prim__setOncontrollerchange
  
  export
  onmessage : ServiceWorkerContainer -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "ServiceWorkerContainer.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : ServiceWorkerContainer -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "ServiceWorkerContainer.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
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
  onactivate : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onactivate = fromNullablePrim "ServiceWorkerGlobalScope.getonactivate"
                                prim__onactivate
                                prim__setOnactivate
  
  export
  onfetch : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onfetch = fromNullablePrim "ServiceWorkerGlobalScope.getonfetch"
                             prim__onfetch
                             prim__setOnfetch
  
  export
  oninstall : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  oninstall = fromNullablePrim "ServiceWorkerGlobalScope.getoninstall"
                               prim__oninstall
                               prim__setOninstall
  
  export
  onmessage : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onmessage = fromNullablePrim "ServiceWorkerGlobalScope.getonmessage"
                               prim__onmessage
                               prim__setOnmessage
  
  export
  onmessageerror : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
  onmessageerror = fromNullablePrim "ServiceWorkerGlobalScope.getonmessageerror"
                                    prim__onmessageerror
                                    prim__setOnmessageerror
  
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
  onupdatefound : ServiceWorkerRegistration -> Attribute False Maybe EventHandlerNonNull
  onupdatefound = fromNullablePrim "ServiceWorkerRegistration.getonupdatefound"
                                   prim__onupdatefound
                                   prim__setOnupdatefound
  
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
  ignoreMethod : CacheQueryOptions -> Attribute True Optional Bool
  ignoreMethod = fromUndefOrPrim "CacheQueryOptions.getignoreMethod"
                                 prim__ignoreMethod
                                 prim__setIgnoreMethod
                                 False
  
  export
  ignoreSearch : CacheQueryOptions -> Attribute True Optional Bool
  ignoreSearch = fromUndefOrPrim "CacheQueryOptions.getignoreSearch"
                                 prim__ignoreSearch
                                 prim__setIgnoreSearch
                                 False
  
  export
  ignoreVary : CacheQueryOptions -> Attribute True Optional Bool
  ignoreVary = fromUndefOrPrim "CacheQueryOptions.getignoreVary"
                               prim__ignoreVary
                               prim__setIgnoreVary
                               False

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
  includeUncontrolled : ClientQueryOptions -> Attribute True Optional Bool
  includeUncontrolled = fromUndefOrPrim "ClientQueryOptions.getincludeUncontrolled"
                                        prim__includeUncontrolled
                                        prim__setIncludeUncontrolled
                                        False
  
  export
  type : ClientQueryOptions -> Attribute False Optional ClientType
  type = fromUndefOrPrimNoDefault "ClientQueryOptions.gettype"
                                  prim__type
                                  prim__setType

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
  new :  (data_ : Optional Any)
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
  data_ : ExtendableMessageEventInit -> Attribute True Optional Any
  data_ = fromUndefOrPrim "ExtendableMessageEventInit.getdata"
                          prim__data
                          prim__setData
                          (MkAny $ null {a = ()})
  
  export
  lastEventId : ExtendableMessageEventInit -> Attribute True Optional String
  lastEventId = fromUndefOrPrim "ExtendableMessageEventInit.getlastEventId"
                                prim__lastEventId
                                prim__setLastEventId
                                ""
  
  export
  origin : ExtendableMessageEventInit -> Attribute True Optional String
  origin = fromUndefOrPrim "ExtendableMessageEventInit.getorigin"
                           prim__origin
                           prim__setOrigin
                           ""
  
  export
  ports : ExtendableMessageEventInit -> Attribute False Optional (Array MessagePort)
  ports = fromUndefOrPrimNoDefault "ExtendableMessageEventInit.getports"
                                   prim__ports
                                   prim__setPorts
  
  export
  source : ExtendableMessageEventInit -> Attribute True Optional (Maybe (NS I [ Client
                                                                              , ServiceWorker
                                                                              , MessagePort
                                                                              ]))
  source = fromUndefOrPrim "ExtendableMessageEventInit.getsource"
                           prim__source
                           prim__setSource
                           Nothing

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
  clientId : FetchEventInit -> Attribute True Optional String
  clientId = fromUndefOrPrim "FetchEventInit.getclientId"
                             prim__clientId
                             prim__setClientId
                             ""
  
  export
  handled : FetchEventInit -> Attribute False Optional (Promise Undefined)
  handled = fromUndefOrPrimNoDefault "FetchEventInit.gethandled"
                                     prim__handled
                                     prim__setHandled
  
  export
  preloadResponse : FetchEventInit -> Attribute False Optional (Promise AnyPtr)
  preloadResponse = fromUndefOrPrimNoDefault "FetchEventInit.getpreloadResponse"
                                             prim__preloadResponse
                                             prim__setPreloadResponse
  
  export
  replacesClientId : FetchEventInit -> Attribute True Optional String
  replacesClientId = fromUndefOrPrim "FetchEventInit.getreplacesClientId"
                                     prim__replacesClientId
                                     prim__setReplacesClientId
                                     ""
  
  export
  request : FetchEventInit -> Attribute True I Request
  request = fromPrim "FetchEventInit.getrequest" prim__request prim__setRequest
  
  export
  resultingClientId : FetchEventInit -> Attribute True Optional String
  resultingClientId = fromUndefOrPrim "FetchEventInit.getresultingClientId"
                                      prim__resultingClientId
                                      prim__setResultingClientId
                                      ""

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
  cacheName : MultiCacheQueryOptions -> Attribute False Optional String
  cacheName = fromUndefOrPrimNoDefault "MultiCacheQueryOptions.getcacheName"
                                       prim__cacheName
                                       prim__setCacheName

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
  enabled : NavigationPreloadState -> Attribute True Optional Bool
  enabled = fromUndefOrPrim "NavigationPreloadState.getenabled"
                            prim__enabled
                            prim__setEnabled
                            False
  
  export
  headerValue : NavigationPreloadState -> Attribute False Optional ByteString
  headerValue = fromUndefOrPrimNoDefault "NavigationPreloadState.getheaderValue"
                                         prim__headerValue
                                         prim__setHeaderValue

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
  scope : RegistrationOptions -> Attribute False Optional String
  scope = fromUndefOrPrimNoDefault "RegistrationOptions.getscope"
                                   prim__scope
                                   prim__setScope
  
  export
  type : RegistrationOptions -> Attribute False Optional WorkerType
  type = fromUndefOrPrimNoDefault "RegistrationOptions.gettype"
                                  prim__type
                                  prim__setType
  
  export
  updateViaCache : RegistrationOptions -> Attribute False Optional ServiceWorkerUpdateViaCache
  updateViaCache = fromUndefOrPrimNoDefault "RegistrationOptions.getupdateViaCache"
                                            prim__updateViaCache
                                            prim__setUpdateViaCache
