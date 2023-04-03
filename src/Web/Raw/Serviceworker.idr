module Web.Raw.Serviceworker

import JS
import Web.Internal.ServiceworkerPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Cache

  export
  addAll :
       (obj : Cache)
    -> (requests : Array (Union2 Request String))
    -> JSIO (Promise Undefined)
  addAll a b = primJS $ Cache.prim__addAll a b


  export
  add :
       (obj : Cache)
    -> (request : NS I [Request, String])
    -> JSIO (Promise Undefined)
  add a b = primJS $ Cache.prim__add a (toFFI b)


  export
  delete' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t3)}
    -> (obj : Cache)
    -> (request : NS I [Request, String])
    -> (options : Optional t3)
    -> JSIO (Promise Boolean)
  delete' a b c = primJS $ Cache.prim__delete a (toFFI b) (optUp c)

  export
  delete :
       (obj : Cache)
    -> (request : NS I [Request, String])
    -> JSIO (Promise Boolean)
  delete a b = primJS $ Cache.prim__delete a (toFFI b) undef


  export
  keys' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t3)}
    -> (obj : Cache)
    -> (request : Optional (NS I [Request, String]))
    -> (options : Optional t3)
    -> JSIO (Promise (Array Request))
  keys' a b c = primJS $ Cache.prim__keys a (toFFI b) (optUp c)

  export
  keys : (obj : Cache) -> JSIO (Promise (Array Request))
  keys a = primJS $ Cache.prim__keys a undef undef


  export
  matchAll' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t3)}
    -> (obj : Cache)
    -> (request : Optional (NS I [Request, String]))
    -> (options : Optional t3)
    -> JSIO (Promise (Array Response))
  matchAll' a b c = primJS $ Cache.prim__matchAll a (toFFI b) (optUp c)

  export
  matchAll : (obj : Cache) -> JSIO (Promise (Array Response))
  matchAll a = primJS $ Cache.prim__matchAll a undef undef


  export
  match' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t3)}
    -> (obj : Cache)
    -> (request : NS I [Request, String])
    -> (options : Optional t3)
    -> JSIO (Promise (Union2 Response Undefined))
  match' a b c = primJS $ Cache.prim__match a (toFFI b) (optUp c)

  export
  match :
       (obj : Cache)
    -> (request : NS I [Request, String])
    -> JSIO (Promise (Union2 Response Undefined))
  match a b = primJS $ Cache.prim__match a (toFFI b) undef


  export
  put :
       (obj : Cache)
    -> (request : NS I [Request, String])
    -> (response : Response)
    -> JSIO (Promise Undefined)
  put a b c = primJS $ Cache.prim__put a (toFFI b) c



namespace CacheStorage

  export
  delete :
       (obj : CacheStorage)
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
  match' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem MultiCacheQueryOptions (Types t3)}
    -> (obj : CacheStorage)
    -> (request : NS I [Request, String])
    -> (options : Optional t3)
    -> JSIO (Promise (Union2 Response Undefined))
  match' a b c = primJS $ CacheStorage.prim__match a (toFFI b) (optUp c)

  export
  match :
       (obj : CacheStorage)
    -> (request : NS I [Request, String])
    -> JSIO (Promise (Union2 Response Undefined))
  match a b = primJS $ CacheStorage.prim__match a (toFFI b) undef


  export
  open_ : (obj : CacheStorage) -> (cacheName : String) -> JSIO (Promise Cache)
  open_ a b = primJS $ CacheStorage.prim__open a b



namespace Client

  export
  frameType :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> JSIO FrameType
  frameType a = tryJS "Client.frameType" $ Client.prim__frameType (up a)


  export
  id :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> JSIO String
  id a = primJS $ Client.prim__id (up a)


  export
  type :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> JSIO ClientType
  type a = tryJS "Client.type" $ Client.prim__type (up a)


  export
  url :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> JSIO String
  url a = primJS $ Client.prim__url (up a)


  export
  postMessage :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> (message : Any)
    -> (transfer : Array Object)
    -> JSIO ()
  postMessage a b c = primJS $ Client.prim__postMessage (up a) (toFFI b) c


  export
  postMessage1' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> {auto 0 _ : Elem PostMessageOptions (Types t3)}
    -> (obj : t1)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $
    Client.prim__postMessage1 (up a) (toFFI b) (optUp c)

  export
  postMessage1 :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem Client (Types t1)}
    -> (obj : t1)
    -> (message : Any)
    -> JSIO ()
  postMessage1 a b = primJS $ Client.prim__postMessage1 (up a) (toFFI b) undef



namespace Clients

  export
  claim : (obj : Clients) -> JSIO (Promise Undefined)
  claim a = primJS $ Clients.prim__claim a


  export
  get :
       (obj : Clients)
    -> (id : String)
    -> JSIO (Promise (Union2 Client Undefined))
  get a b = primJS $ Clients.prim__get a b


  export
  matchAll' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ClientQueryOptions (Types t2)}
    -> (obj : Clients)
    -> (options : Optional t2)
    -> JSIO (Promise (Array Client))
  matchAll' a b = primJS $ Clients.prim__matchAll a (optUp b)

  export
  matchAll : (obj : Clients) -> JSIO (Promise (Array Client))
  matchAll a = primJS $ Clients.prim__matchAll a undef


  export
  openWindow :
       (obj : Clients)
    -> (url : String)
    -> JSIO (Promise (Nullable WindowClient))
  openWindow a b = primJS $ Clients.prim__openWindow a b



namespace ExtendableEvent

  export
  new' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ExtendableEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO ExtendableEvent
  new' a b = primJS $ ExtendableEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO ExtendableEvent
  new a = primJS $ ExtendableEvent.prim__new a undef


  export
  waitUntil :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem ExtendableEvent (Types t1)}
    -> (obj : t1)
    -> (f : Promise AnyPtr)
    -> JSIO ()
  waitUntil a b = primJS $ ExtendableEvent.prim__waitUntil (up a) b



namespace ExtendableMessageEvent

  export
  new' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO ExtendableMessageEvent
  new' a b = primJS $ ExtendableMessageEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO ExtendableMessageEvent
  new a = primJS $ ExtendableMessageEvent.prim__new a undef


  export
  data_ : (obj : ExtendableMessageEvent) -> JSIO Any
  data_ a = tryJS "ExtendableMessageEvent.data_" $
    ExtendableMessageEvent.prim__data a


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
  source :
       (obj : ExtendableMessageEvent)
    -> JSIO (Maybe (NS I [Client, ServiceWorker, MessagePort]))
  source a = tryJS "ExtendableMessageEvent.source" $
    ExtendableMessageEvent.prim__source a



namespace FetchEvent

  export
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem FetchEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : t2)
    -> JSIO FetchEvent
  new a b = primJS $ FetchEvent.prim__new a (up b)


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

  export
  disable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
  disable a = primJS $ NavigationPreloadManager.prim__disable a


  export
  enable : (obj : NavigationPreloadManager) -> JSIO (Promise Undefined)
  enable a = primJS $ NavigationPreloadManager.prim__enable a


  export
  getState :
       (obj : NavigationPreloadManager)
    -> JSIO (Promise NavigationPreloadState)
  getState a = primJS $ NavigationPreloadManager.prim__getState a


  export
  setHeaderValue :
       (obj : NavigationPreloadManager)
    -> (value : ByteString)
    -> JSIO (Promise Undefined)
  setHeaderValue a b = primJS $
    NavigationPreloadManager.prim__setHeaderValue a b



namespace ServiceWorker

  export
  onstatechange : ServiceWorker -> Attribute False Maybe EventHandlerNonNull
  onstatechange v = fromNullablePrim
                      "ServiceWorker.getonstatechange"
                      prim__onstatechange
                      prim__setOnstatechange
                      v


  export
  scriptURL : (obj : ServiceWorker) -> JSIO String
  scriptURL a = primJS $ ServiceWorker.prim__scriptURL a


  export
  state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
  state a = tryJS "ServiceWorker.state" $ ServiceWorker.prim__state a


  export
  postMessage :
       (obj : ServiceWorker)
    -> (message : Any)
    -> (transfer : Array Object)
    -> JSIO ()
  postMessage a b c = primJS $ ServiceWorker.prim__postMessage a (toFFI b) c


  export
  postMessage1' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem PostMessageOptions (Types t3)}
    -> (obj : ServiceWorker)
    -> (message : Any)
    -> (options : Optional t3)
    -> JSIO ()
  postMessage1' a b c = primJS $
    ServiceWorker.prim__postMessage1 a (toFFI b) (optUp c)

  export
  postMessage1 : (obj : ServiceWorker) -> (message : Any) -> JSIO ()
  postMessage1 a b = primJS $ ServiceWorker.prim__postMessage1 a (toFFI b) undef



namespace ServiceWorkerContainer

  export
  controller : (obj : ServiceWorkerContainer) -> JSIO (Maybe ServiceWorker)
  controller a = tryJS "ServiceWorkerContainer.controller" $
    ServiceWorkerContainer.prim__controller a


  export
  oncontrollerchange :
       ServiceWorkerContainer
    -> Attribute False Maybe EventHandlerNonNull
  oncontrollerchange v = fromNullablePrim
                           "ServiceWorkerContainer.getoncontrollerchange"
                           prim__oncontrollerchange
                           prim__setOncontrollerchange
                           v


  export
  onmessage :
       ServiceWorkerContainer
    -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "ServiceWorkerContainer.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror :
       ServiceWorkerContainer
    -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "ServiceWorkerContainer.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  ready :
       (obj : ServiceWorkerContainer)
    -> JSIO (Promise ServiceWorkerRegistration)
  ready a = primJS $ ServiceWorkerContainer.prim__ready a


  export
  getRegistration' :
       (obj : ServiceWorkerContainer)
    -> (clientURL : Optional String)
    -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
  getRegistration' a b = primJS $
    ServiceWorkerContainer.prim__getRegistration a (toFFI b)

  export
  getRegistration :
       (obj : ServiceWorkerContainer)
    -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
  getRegistration a = primJS $
    ServiceWorkerContainer.prim__getRegistration a undef


  export
  getRegistrations :
       (obj : ServiceWorkerContainer)
    -> JSIO (Promise (Array ServiceWorkerRegistration))
  getRegistrations a = primJS $ ServiceWorkerContainer.prim__getRegistrations a


  export
  register' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem RegistrationOptions (Types t3)}
    -> (obj : ServiceWorkerContainer)
    -> (scriptURL : String)
    -> (options : Optional t3)
    -> JSIO (Promise ServiceWorkerRegistration)
  register' a b c = primJS $ ServiceWorkerContainer.prim__register a b (optUp c)

  export
  register :
       (obj : ServiceWorkerContainer)
    -> (scriptURL : String)
    -> JSIO (Promise ServiceWorkerRegistration)
  register a b = primJS $ ServiceWorkerContainer.prim__register a b undef


  export
  startMessages : (obj : ServiceWorkerContainer) -> JSIO ()
  startMessages a = primJS $ ServiceWorkerContainer.prim__startMessages a



namespace ServiceWorkerGlobalScope

  export
  clients : (obj : ServiceWorkerGlobalScope) -> JSIO Clients
  clients a = primJS $ ServiceWorkerGlobalScope.prim__clients a


  export
  onactivate :
       ServiceWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onactivate v = fromNullablePrim
                   "ServiceWorkerGlobalScope.getonactivate"
                   prim__onactivate
                   prim__setOnactivate
                   v


  export
  onfetch :
       ServiceWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onfetch v = fromNullablePrim
                "ServiceWorkerGlobalScope.getonfetch"
                prim__onfetch
                prim__setOnfetch
                v


  export
  oninstall :
       ServiceWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  oninstall v = fromNullablePrim
                  "ServiceWorkerGlobalScope.getoninstall"
                  prim__oninstall
                  prim__setOninstall
                  v


  export
  onmessage :
       ServiceWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onmessage v = fromNullablePrim
                  "ServiceWorkerGlobalScope.getonmessage"
                  prim__onmessage
                  prim__setOnmessage
                  v


  export
  onmessageerror :
       ServiceWorkerGlobalScope
    -> Attribute False Maybe EventHandlerNonNull
  onmessageerror v = fromNullablePrim
                       "ServiceWorkerGlobalScope.getonmessageerror"
                       prim__onmessageerror
                       prim__setOnmessageerror
                       v


  export
  registration :
       (obj : ServiceWorkerGlobalScope)
    -> JSIO ServiceWorkerRegistration
  registration a = primJS $ ServiceWorkerGlobalScope.prim__registration a


  export
  serviceWorker : (obj : ServiceWorkerGlobalScope) -> JSIO ServiceWorker
  serviceWorker a = primJS $ ServiceWorkerGlobalScope.prim__serviceWorker a


  export
  skipWaiting : (obj : ServiceWorkerGlobalScope) -> JSIO (Promise Undefined)
  skipWaiting a = primJS $ ServiceWorkerGlobalScope.prim__skipWaiting a



namespace ServiceWorkerRegistration

  export
  active : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  active a = tryJS "ServiceWorkerRegistration.active" $
    ServiceWorkerRegistration.prim__active a


  export
  installing : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  installing a = tryJS "ServiceWorkerRegistration.installing" $
    ServiceWorkerRegistration.prim__installing a


  export
  navigationPreload :
       (obj : ServiceWorkerRegistration)
    -> JSIO NavigationPreloadManager
  navigationPreload a = primJS $
    ServiceWorkerRegistration.prim__navigationPreload a


  export
  onupdatefound :
       ServiceWorkerRegistration
    -> Attribute False Maybe EventHandlerNonNull
  onupdatefound v = fromNullablePrim
                      "ServiceWorkerRegistration.getonupdatefound"
                      prim__onupdatefound
                      prim__setOnupdatefound
                      v


  export
  scope : (obj : ServiceWorkerRegistration) -> JSIO String
  scope a = primJS $ ServiceWorkerRegistration.prim__scope a


  export
  updateViaCache :
       (obj : ServiceWorkerRegistration)
    -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a = tryJS "ServiceWorkerRegistration.updateViaCache" $
    ServiceWorkerRegistration.prim__updateViaCache a


  export
  waiting : (obj : ServiceWorkerRegistration) -> JSIO (Maybe ServiceWorker)
  waiting a = tryJS "ServiceWorkerRegistration.waiting" $
    ServiceWorkerRegistration.prim__waiting a


  export
  unregister : (obj : ServiceWorkerRegistration) -> JSIO (Promise Boolean)
  unregister a = primJS $ ServiceWorkerRegistration.prim__unregister a


  export
  update : (obj : ServiceWorkerRegistration) -> JSIO (Promise Undefined)
  update a = primJS $ ServiceWorkerRegistration.prim__update a



namespace WindowClient

  export
  ancestorOrigins : (obj : WindowClient) -> JSIO (Array String)
  ancestorOrigins a = primJS $ WindowClient.prim__ancestorOrigins a


  export
  focused : (obj : WindowClient) -> JSIO Bool
  focused a = tryJS "WindowClient.focused" $ WindowClient.prim__focused a


  export
  visibilityState : (obj : WindowClient) -> JSIO VisibilityState
  visibilityState a = tryJS "WindowClient.visibilityState" $
    WindowClient.prim__visibilityState a


  export
  focus : (obj : WindowClient) -> JSIO (Promise WindowClient)
  focus a = primJS $ WindowClient.prim__focus a


  export
  navigate :
       (obj : WindowClient)
    -> (url : String)
    -> JSIO (Promise (Nullable WindowClient))
  navigate a b = primJS $ WindowClient.prim__navigate a b





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions

  export
  new' :
       (ignoreSearch : Optional Bool)
    -> (ignoreMethod : Optional Bool)
    -> (ignoreVary : Optional Bool)
    -> JSIO CacheQueryOptions
  new' a b c = primJS $
    CacheQueryOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO CacheQueryOptions
  new = primJS $ CacheQueryOptions.prim__new undef undef undef


  export
  ignoreMethod :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  ignoreMethod v = fromUndefOrPrim
                     "CacheQueryOptions.getignoreMethod"
                     prim__ignoreMethod
                     prim__setIgnoreMethod
                     False
                     (v :> CacheQueryOptions)


  export
  ignoreSearch :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  ignoreSearch v = fromUndefOrPrim
                     "CacheQueryOptions.getignoreSearch"
                     prim__ignoreSearch
                     prim__setIgnoreSearch
                     False
                     (v :> CacheQueryOptions)


  export
  ignoreVary :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CacheQueryOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  ignoreVary v = fromUndefOrPrim
                   "CacheQueryOptions.getignoreVary"
                   prim__ignoreVary
                   prim__setIgnoreVary
                   False
                   (v :> CacheQueryOptions)



namespace ClientQueryOptions

  export
  new' :
       (includeUncontrolled : Optional Bool)
    -> (type : Optional ClientType)
    -> JSIO ClientQueryOptions
  new' a b = primJS $ ClientQueryOptions.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO ClientQueryOptions
  new = primJS $ ClientQueryOptions.prim__new undef undef


  export
  includeUncontrolled :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ClientQueryOptions (Types t)}
    -> t
    -> Attribute True Optional Bool
  includeUncontrolled v = fromUndefOrPrim
                            "ClientQueryOptions.getincludeUncontrolled"
                            prim__includeUncontrolled
                            prim__setIncludeUncontrolled
                            False
                            (v :> ClientQueryOptions)


  export
  type :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ClientQueryOptions (Types t)}
    -> t
    -> Attribute False Optional ClientType
  type v = fromUndefOrPrimNoDefault
             "ClientQueryOptions.gettype"
             prim__type
             prim__setType
             (v :> ClientQueryOptions)



namespace ExtendableEventInit

  export
  new : JSIO ExtendableEventInit
  new = primJS $ ExtendableEventInit.prim__new



namespace ExtendableMessageEventInit

  export
  new' :
       (data_ : Optional Any)
    -> (origin : Optional String)
    -> (lastEventId : Optional String)
    -> (source : Optional (Maybe (NS I [Client, ServiceWorker, MessagePort])))
    -> (ports : Optional (Array MessagePort))
    -> JSIO ExtendableMessageEventInit
  new' a b c d e = primJS $
    ExtendableMessageEventInit.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  new : JSIO ExtendableMessageEventInit
  new = primJS $
    ExtendableMessageEventInit.prim__new undef undef undef undef undef


  export
  data_ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t)}
    -> t
    -> Attribute True Optional Any
  data_ v = fromUndefOrPrim
              "ExtendableMessageEventInit.getdata"
              prim__data
              prim__setData
              (MkAny $ null {a = ()})
              (v :> ExtendableMessageEventInit)


  export
  lastEventId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  lastEventId v = fromUndefOrPrim
                    "ExtendableMessageEventInit.getlastEventId"
                    prim__lastEventId
                    prim__setLastEventId
                    ""
                    (v :> ExtendableMessageEventInit)


  export
  origin :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  origin v = fromUndefOrPrim
               "ExtendableMessageEventInit.getorigin"
               prim__origin
               prim__setOrigin
               ""
               (v :> ExtendableMessageEventInit)


  export
  ports :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t)}
    -> t
    -> Attribute False Optional (Array MessagePort)
  ports v = fromUndefOrPrimNoDefault
              "ExtendableMessageEventInit.getports"
              prim__ports
              prim__setPorts
              (v :> ExtendableMessageEventInit)


  export
  source :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem ExtendableMessageEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe
                                  (NS I [Client, ServiceWorker, MessagePort]))
  source v = fromUndefOrPrim
               "ExtendableMessageEventInit.getsource"
               prim__source
               prim__setSource
               Nothing
               (v :> ExtendableMessageEventInit)



namespace FetchEventInit

  export
  new' :
       (request : Request)
    -> (preloadResponse : Optional (Promise AnyPtr))
    -> (clientId : Optional String)
    -> (resultingClientId : Optional String)
    -> (replacesClientId : Optional String)
    -> (handled : Optional (Promise Undefined))
    -> JSIO FetchEventInit
  new' a b c d e f = primJS $
    FetchEventInit.prim__new a (toFFI b) (toFFI c) (toFFI d) (toFFI e) (toFFI f)

  export
  new : (request : Request) -> JSIO FetchEventInit
  new a = primJS $ FetchEventInit.prim__new a undef undef undef undef undef


  export
  clientId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  clientId v = fromUndefOrPrim
                 "FetchEventInit.getclientId"
                 prim__clientId
                 prim__setClientId
                 ""
                 (v :> FetchEventInit)


  export
  handled :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute False Optional (Promise Undefined)
  handled v = fromUndefOrPrimNoDefault
                "FetchEventInit.gethandled"
                prim__handled
                prim__setHandled
                (v :> FetchEventInit)


  export
  preloadResponse :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute False Optional (Promise AnyPtr)
  preloadResponse v = fromUndefOrPrimNoDefault
                        "FetchEventInit.getpreloadResponse"
                        prim__preloadResponse
                        prim__setPreloadResponse
                        (v :> FetchEventInit)


  export
  replacesClientId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  replacesClientId v = fromUndefOrPrim
                         "FetchEventInit.getreplacesClientId"
                         prim__replacesClientId
                         prim__setReplacesClientId
                         ""
                         (v :> FetchEventInit)


  export
  request :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute True I Request
  request v = fromPrim
                "FetchEventInit.getrequest"
                prim__request
                prim__setRequest
                (v :> FetchEventInit)


  export
  resultingClientId :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FetchEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  resultingClientId v = fromUndefOrPrim
                          "FetchEventInit.getresultingClientId"
                          prim__resultingClientId
                          prim__setResultingClientId
                          ""
                          (v :> FetchEventInit)



namespace MultiCacheQueryOptions

  export
  new' : (cacheName : Optional String) -> JSIO MultiCacheQueryOptions
  new' a = primJS $ MultiCacheQueryOptions.prim__new (toFFI a)

  export
  new : JSIO MultiCacheQueryOptions
  new = primJS $ MultiCacheQueryOptions.prim__new undef


  export
  cacheName :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MultiCacheQueryOptions (Types t)}
    -> t
    -> Attribute False Optional String
  cacheName v = fromUndefOrPrimNoDefault
                  "MultiCacheQueryOptions.getcacheName"
                  prim__cacheName
                  prim__setCacheName
                  (v :> MultiCacheQueryOptions)



namespace NavigationPreloadState

  export
  new' :
       (enabled : Optional Bool)
    -> (headerValue : Optional ByteString)
    -> JSIO NavigationPreloadState
  new' a b = primJS $ NavigationPreloadState.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO NavigationPreloadState
  new = primJS $ NavigationPreloadState.prim__new undef undef


  export
  enabled :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem NavigationPreloadState (Types t)}
    -> t
    -> Attribute True Optional Bool
  enabled v = fromUndefOrPrim
                "NavigationPreloadState.getenabled"
                prim__enabled
                prim__setEnabled
                False
                (v :> NavigationPreloadState)


  export
  headerValue :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem NavigationPreloadState (Types t)}
    -> t
    -> Attribute False Optional ByteString
  headerValue v = fromUndefOrPrimNoDefault
                    "NavigationPreloadState.getheaderValue"
                    prim__headerValue
                    prim__setHeaderValue
                    (v :> NavigationPreloadState)



namespace RegistrationOptions

  export
  new' :
       (scope : Optional String)
    -> (type : Optional WorkerType)
    -> (updateViaCache : Optional ServiceWorkerUpdateViaCache)
    -> JSIO RegistrationOptions
  new' a b c = primJS $
    RegistrationOptions.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO RegistrationOptions
  new = primJS $ RegistrationOptions.prim__new undef undef undef


  export
  scope :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RegistrationOptions (Types t)}
    -> t
    -> Attribute False Optional String
  scope v = fromUndefOrPrimNoDefault
              "RegistrationOptions.getscope"
              prim__scope
              prim__setScope
              (v :> RegistrationOptions)


  export
  type :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RegistrationOptions (Types t)}
    -> t
    -> Attribute False Optional WorkerType
  type v = fromUndefOrPrimNoDefault
             "RegistrationOptions.gettype"
             prim__type
             prim__setType
             (v :> RegistrationOptions)


  export
  updateViaCache :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem RegistrationOptions (Types t)}
    -> t
    -> Attribute False Optional ServiceWorkerUpdateViaCache
  updateViaCache v = fromUndefOrPrimNoDefault
                       "RegistrationOptions.getupdateViaCache"
                       prim__updateViaCache
                       prim__setUpdateViaCache
                       (v :> RegistrationOptions)
