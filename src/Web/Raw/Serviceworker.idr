module Web.Raw.Serviceworker
 
import JS
import Web.Internal.ServiceworkerPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Cache
  
  export
  addAll :  JSType t1
         => {auto 0 _ : Elem Cache (Types t1)}
         -> (obj : t1)
         -> (requests : Array (Union2 Request String))
         -> JSIO (Promise Undefined)
  addAll a b = primJS $ Cache.prim__addAll (up a) b
  
  export
  add :  JSType t1
      => {auto 0 _ : Elem Cache (Types t1)}
      -> (obj : t1)
      -> (request : NS I [ Request , String ])
      -> JSIO (Promise Undefined)
  add a b = primJS $ Cache.prim__add (up a) (toFFI b)
  
  export
  delete :  JSType t1
         => JSType t2
         => {auto 0 _ : Elem Cache (Types t1)}
         -> {auto 0 _ : Elem CacheQueryOptions (Types t2)}
         -> (obj : t1)
         -> (request : NS I [ Request , String ])
         -> (options : Optional t2)
         -> JSIO (Promise Boolean)
  delete a b c = primJS $ Cache.prim__delete (up a) (toFFI b) (optUp c)

  export
  delete' :  JSType t1
          => {auto 0 _ : Elem Cache (Types t1)}
          -> (obj : t1)
          -> (request : NS I [ Request , String ])
          -> JSIO (Promise Boolean)
  delete' a b = primJS $ Cache.prim__delete (up a) (toFFI b) undef
  
  export
  keys :  JSType t1
       => JSType t2
       => {auto 0 _ : Elem Cache (Types t1)}
       -> {auto 0 _ : Elem CacheQueryOptions (Types t2)}
       -> (obj : t1)
       -> (request : Optional (NS I [ Request , String ]))
       -> (options : Optional t2)
       -> JSIO (Promise (Array Request))
  keys a b c = primJS $ Cache.prim__keys (up a) (toFFI b) (optUp c)

  export
  keys' :  JSType t1
        => {auto 0 _ : Elem Cache (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise (Array Request))
  keys' a = primJS $ Cache.prim__keys (up a) undef undef
  
  export
  matchAll :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem Cache (Types t1)}
           -> {auto 0 _ : Elem CacheQueryOptions (Types t2)}
           -> (obj : t1)
           -> (request : Optional (NS I [ Request , String ]))
           -> (options : Optional t2)
           -> JSIO (Promise (Array Response))
  matchAll a b c = primJS $ Cache.prim__matchAll (up a) (toFFI b) (optUp c)

  export
  matchAll' :  JSType t1
            => {auto 0 _ : Elem Cache (Types t1)}
            -> (obj : t1)
            -> JSIO (Promise (Array Response))
  matchAll' a = primJS $ Cache.prim__matchAll (up a) undef undef
  
  export
  match :  JSType t1
        => JSType t2
        => {auto 0 _ : Elem Cache (Types t1)}
        -> {auto 0 _ : Elem CacheQueryOptions (Types t2)}
        -> (obj : t1)
        -> (request : NS I [ Request , String ])
        -> (options : Optional t2)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ Cache.prim__match (up a) (toFFI b) (optUp c)

  export
  match' :  JSType t1
         => {auto 0 _ : Elem Cache (Types t1)}
         -> (obj : t1)
         -> (request : NS I [ Request , String ])
         -> JSIO (Promise (Union2 Response Undefined))
  match' a b = primJS $ Cache.prim__match (up a) (toFFI b) undef
  
  export
  put :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem Cache (Types t1)}
      -> {auto 0 _ : Elem Response (Types t2)}
      -> (obj : t1)
      -> (request : NS I [ Request , String ])
      -> (response : t2)
      -> JSIO (Promise Undefined)
  put a b c = primJS $ Cache.prim__put (up a) (toFFI b) (up c)

namespace CacheStorage
  
  export
  delete :  JSType t1
         => {auto 0 _ : Elem CacheStorage (Types t1)}
         -> (obj : t1)
         -> (cacheName : String)
         -> JSIO (Promise Boolean)
  delete a b = primJS $ CacheStorage.prim__delete (up a) b
  
  export
  has :  JSType t1
      => {auto 0 _ : Elem CacheStorage (Types t1)}
      -> (obj : t1)
      -> (cacheName : String)
      -> JSIO (Promise Boolean)
  has a b = primJS $ CacheStorage.prim__has (up a) b
  
  export
  keys :  JSType t1
       => {auto 0 _ : Elem CacheStorage (Types t1)}
       -> (obj : t1)
       -> JSIO (Promise (Array String))
  keys a = primJS $ CacheStorage.prim__keys (up a)
  
  export
  match :  JSType t1
        => JSType t2
        => {auto 0 _ : Elem CacheStorage (Types t1)}
        -> {auto 0 _ : Elem MultiCacheQueryOptions (Types t2)}
        -> (obj : t1)
        -> (request : NS I [ Request , String ])
        -> (options : Optional t2)
        -> JSIO (Promise (Union2 Response Undefined))
  match a b c = primJS $ CacheStorage.prim__match (up a) (toFFI b) (optUp c)

  export
  match' :  JSType t1
         => {auto 0 _ : Elem CacheStorage (Types t1)}
         -> (obj : t1)
         -> (request : NS I [ Request , String ])
         -> JSIO (Promise (Union2 Response Undefined))
  match' a b = primJS $ CacheStorage.prim__match (up a) (toFFI b) undef
  
  export
  open_ :  JSType t1
        => {auto 0 _ : Elem CacheStorage (Types t1)}
        -> (obj : t1)
        -> (cacheName : String)
        -> JSIO (Promise Cache)
  open_ a b = primJS $ CacheStorage.prim__open (up a) b

namespace Client
  
  export
  frameType :  JSType t1
            => {auto 0 _ : Elem Client (Types t1)}
            -> (obj : t1)
            -> JSIO FrameType
  frameType a = tryJS "Client.frameType" $ Client.prim__frameType (up a)
  
  export
  id :  JSType t1
     => {auto 0 _ : Elem Client (Types t1)}
     -> (obj : t1)
     -> JSIO String
  id a = primJS $ Client.prim__id (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem Client (Types t1)}
       -> (obj : t1)
       -> JSIO ClientType
  type a = tryJS "Client.type" $ Client.prim__type (up a)
  
  export
  url :  JSType t1
      => {auto 0 _ : Elem Client (Types t1)}
      -> (obj : t1)
      -> JSIO String
  url a = primJS $ Client.prim__url (up a)
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem Client (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS $ Client.prim__postMessage (up a) (toFFI b) c
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem Client (Types t1)}
               -> {auto 0 _ : Elem PostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ Client.prim__postMessage1 (up a) (toFFI b) (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem Client (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS $ Client.prim__postMessage1 (up a) (toFFI b) undef

namespace Clients
  
  export
  claim :  JSType t1
        => {auto 0 _ : Elem Clients (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise Undefined)
  claim a = primJS $ Clients.prim__claim (up a)
  
  export
  get :  JSType t1
      => {auto 0 _ : Elem Clients (Types t1)}
      -> (obj : t1)
      -> (id : String)
      -> JSIO (Promise (Union2 Client Undefined))
  get a b = primJS $ Clients.prim__get (up a) b
  
  export
  matchAll :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem Clients (Types t1)}
           -> {auto 0 _ : Elem ClientQueryOptions (Types t2)}
           -> (obj : t1)
           -> (options : Optional t2)
           -> JSIO (Promise (Array Client))
  matchAll a b = primJS $ Clients.prim__matchAll (up a) (optUp b)

  export
  matchAll' :  JSType t1
            => {auto 0 _ : Elem Clients (Types t1)}
            -> (obj : t1)
            -> JSIO (Promise (Array Client))
  matchAll' a = primJS $ Clients.prim__matchAll (up a) undef
  
  export
  openWindow :  JSType t1
             => {auto 0 _ : Elem Clients (Types t1)}
             -> (obj : t1)
             -> (url : String)
             -> JSIO (Promise (Nullable WindowClient))
  openWindow a b = primJS $ Clients.prim__openWindow (up a) b

namespace ExtendableEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ExtendableEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ExtendableEvent
  new a b = primJS $ ExtendableEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ExtendableEvent
  new' a = primJS $ ExtendableEvent.prim__new a undef
  
  export
  waitUntil :  JSType t1
            => {auto 0 _ : Elem ExtendableEvent (Types t1)}
            -> (obj : t1)
            -> (f : Promise AnyPtr)
            -> JSIO ()
  waitUntil a b = primJS $ ExtendableEvent.prim__waitUntil (up a) b

namespace ExtendableMessageEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem ExtendableMessageEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : Optional t1)
      -> JSIO ExtendableMessageEvent
  new a b = primJS $ ExtendableMessageEvent.prim__new a (optUp b)

  export
  new' : (type : String) -> JSIO ExtendableMessageEvent
  new' a = primJS $ ExtendableMessageEvent.prim__new a undef
  
  export
  data_ :  JSType t1
        => {auto 0 _ : Elem ExtendableMessageEvent (Types t1)}
        -> (obj : t1)
        -> JSIO Any
  data_ a = tryJS "ExtendableMessageEvent.data_"
          $ ExtendableMessageEvent.prim__data (up a)
  
  export
  lastEventId :  JSType t1
              => {auto 0 _ : Elem ExtendableMessageEvent (Types t1)}
              -> (obj : t1)
              -> JSIO String
  lastEventId a = primJS $ ExtendableMessageEvent.prim__lastEventId (up a)
  
  export
  origin :  JSType t1
         => {auto 0 _ : Elem ExtendableMessageEvent (Types t1)}
         -> (obj : t1)
         -> JSIO String
  origin a = primJS $ ExtendableMessageEvent.prim__origin (up a)
  
  export
  ports :  JSType t1
        => {auto 0 _ : Elem ExtendableMessageEvent (Types t1)}
        -> (obj : t1)
        -> JSIO (Array MessagePort)
  ports a = primJS $ ExtendableMessageEvent.prim__ports (up a)
  
  export
  source :  JSType t1
         => {auto 0 _ : Elem ExtendableMessageEvent (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
  source a = tryJS "ExtendableMessageEvent.source"
           $ ExtendableMessageEvent.prim__source (up a)

namespace FetchEvent
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem FetchEventInit (Types t1)}
      -> (type : String)
      -> (eventInitDict : t1)
      -> JSIO FetchEvent
  new a b = primJS $ FetchEvent.prim__new a (up b)
  
  export
  clientId :  JSType t1
           => {auto 0 _ : Elem FetchEvent (Types t1)}
           -> (obj : t1)
           -> JSIO String
  clientId a = primJS $ FetchEvent.prim__clientId (up a)
  
  export
  handled :  JSType t1
          => {auto 0 _ : Elem FetchEvent (Types t1)}
          -> (obj : t1)
          -> JSIO (Promise Undefined)
  handled a = primJS $ FetchEvent.prim__handled (up a)
  
  export
  preloadResponse :  JSType t1
                  => {auto 0 _ : Elem FetchEvent (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Promise AnyPtr)
  preloadResponse a = primJS $ FetchEvent.prim__preloadResponse (up a)
  
  export
  replacesClientId :  JSType t1
                   => {auto 0 _ : Elem FetchEvent (Types t1)}
                   -> (obj : t1)
                   -> JSIO String
  replacesClientId a = primJS $ FetchEvent.prim__replacesClientId (up a)
  
  export
  request :  JSType t1
          => {auto 0 _ : Elem FetchEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Request
  request a = primJS $ FetchEvent.prim__request (up a)
  
  export
  resultingClientId :  JSType t1
                    => {auto 0 _ : Elem FetchEvent (Types t1)}
                    -> (obj : t1)
                    -> JSIO String
  resultingClientId a = primJS $ FetchEvent.prim__resultingClientId (up a)
  
  export
  respondWith :  JSType t1
              => {auto 0 _ : Elem FetchEvent (Types t1)}
              -> (obj : t1)
              -> (r : Promise Response)
              -> JSIO ()
  respondWith a b = primJS $ FetchEvent.prim__respondWith (up a) b

namespace NavigationPreloadManager
  
  export
  disable :  JSType t1
          => {auto 0 _ : Elem NavigationPreloadManager (Types t1)}
          -> (obj : t1)
          -> JSIO (Promise Undefined)
  disable a = primJS $ NavigationPreloadManager.prim__disable (up a)
  
  export
  enable :  JSType t1
         => {auto 0 _ : Elem NavigationPreloadManager (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  enable a = primJS $ NavigationPreloadManager.prim__enable (up a)
  
  export
  getState :  JSType t1
           => {auto 0 _ : Elem NavigationPreloadManager (Types t1)}
           -> (obj : t1)
           -> JSIO (Promise NavigationPreloadState)
  getState a = primJS $ NavigationPreloadManager.prim__getState (up a)
  
  export
  setHeaderValue :  JSType t1
                 => {auto 0 _ : Elem NavigationPreloadManager (Types t1)}
                 -> (obj : t1)
                 -> (value : ByteString)
                 -> JSIO (Promise Undefined)
  setHeaderValue a b = primJS
                     $ NavigationPreloadManager.prim__setHeaderValue (up a) b

namespace ServiceWorker
  
  export
  onstatechange : ServiceWorker -> Attribute False Maybe EventHandlerNonNull
  onstatechange = fromNullablePrim "ServiceWorker.getonstatechange"
                                   prim__onstatechange
                                   prim__setOnstatechange
  
  export
  scriptURL :  JSType t1
            => {auto 0 _ : Elem ServiceWorker (Types t1)}
            -> (obj : t1)
            -> JSIO String
  scriptURL a = primJS $ ServiceWorker.prim__scriptURL (up a)
  
  export
  state :  JSType t1
        => {auto 0 _ : Elem ServiceWorker (Types t1)}
        -> (obj : t1)
        -> JSIO ServiceWorkerState
  state a = tryJS "ServiceWorker.state" $ ServiceWorker.prim__state (up a)
  
  export
  postMessage :  JSType t1
              => {auto 0 _ : Elem ServiceWorker (Types t1)}
              -> (obj : t1)
              -> (message : Any)
              -> (transfer : Array Object)
              -> JSIO ()
  postMessage a b c = primJS
                    $ ServiceWorker.prim__postMessage (up a) (toFFI b) c
  
  export
  postMessage1 :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem ServiceWorker (Types t1)}
               -> {auto 0 _ : Elem PostMessageOptions (Types t2)}
               -> (obj : t1)
               -> (message : Any)
               -> (options : Optional t2)
               -> JSIO ()
  postMessage1 a b c = primJS
                     $ ServiceWorker.prim__postMessage1 (up a)
                                                        (toFFI b)
                                                        (optUp c)

  export
  postMessage1' :  JSType t1
                => {auto 0 _ : Elem ServiceWorker (Types t1)}
                -> (obj : t1)
                -> (message : Any)
                -> JSIO ()
  postMessage1' a b = primJS
                    $ ServiceWorker.prim__postMessage1 (up a) (toFFI b) undef

namespace ServiceWorkerContainer
  
  export
  controller :  JSType t1
             => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe ServiceWorker)
  controller a = tryJS "ServiceWorkerContainer.controller"
               $ ServiceWorkerContainer.prim__controller (up a)
  
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
  ready :  JSType t1
        => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise ServiceWorkerRegistration)
  ready a = primJS $ ServiceWorkerContainer.prim__ready (up a)
  
  export
  getRegistration :  JSType t1
                  => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
                  -> (obj : t1)
                  -> (clientURL : Optional String)
                  -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
  getRegistration a b = primJS
                      $ ServiceWorkerContainer.prim__getRegistration (up a)
                                                                     (toFFI b)

  export
  getRegistration' :  JSType t1
                   => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
                   -> (obj : t1)
                   -> JSIO (Promise (Union2 ServiceWorkerRegistration
                                            Undefined))
  getRegistration' a = primJS
                     $ ServiceWorkerContainer.prim__getRegistration (up a) undef
  
  export
  getRegistrations :  JSType t1
                   => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
                   -> (obj : t1)
                   -> JSIO (Promise (Array ServiceWorkerRegistration))
  getRegistrations a = primJS
                     $ ServiceWorkerContainer.prim__getRegistrations (up a)
  
  export
  register :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
           -> {auto 0 _ : Elem RegistrationOptions (Types t2)}
           -> (obj : t1)
           -> (scriptURL : String)
           -> (options : Optional t2)
           -> JSIO (Promise ServiceWorkerRegistration)
  register a b c = primJS
                 $ ServiceWorkerContainer.prim__register (up a) b (optUp c)

  export
  register' :  JSType t1
            => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
            -> (obj : t1)
            -> (scriptURL : String)
            -> JSIO (Promise ServiceWorkerRegistration)
  register' a b = primJS $ ServiceWorkerContainer.prim__register (up a) b undef
  
  export
  startMessages :  JSType t1
                => {auto 0 _ : Elem ServiceWorkerContainer (Types t1)}
                -> (obj : t1)
                -> JSIO ()
  startMessages a = primJS $ ServiceWorkerContainer.prim__startMessages (up a)

namespace ServiceWorkerGlobalScope
  
  export
  clients :  JSType t1
          => {auto 0 _ : Elem ServiceWorkerGlobalScope (Types t1)}
          -> (obj : t1)
          -> JSIO Clients
  clients a = primJS $ ServiceWorkerGlobalScope.prim__clients (up a)
  
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
  registration :  JSType t1
               => {auto 0 _ : Elem ServiceWorkerGlobalScope (Types t1)}
               -> (obj : t1)
               -> JSIO ServiceWorkerRegistration
  registration a = primJS $ ServiceWorkerGlobalScope.prim__registration (up a)
  
  export
  serviceWorker :  JSType t1
                => {auto 0 _ : Elem ServiceWorkerGlobalScope (Types t1)}
                -> (obj : t1)
                -> JSIO ServiceWorker
  serviceWorker a = primJS $ ServiceWorkerGlobalScope.prim__serviceWorker (up a)
  
  export
  skipWaiting :  JSType t1
              => {auto 0 _ : Elem ServiceWorkerGlobalScope (Types t1)}
              -> (obj : t1)
              -> JSIO (Promise Undefined)
  skipWaiting a = primJS $ ServiceWorkerGlobalScope.prim__skipWaiting (up a)

namespace ServiceWorkerRegistration
  
  export
  active :  JSType t1
         => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe ServiceWorker)
  active a = tryJS "ServiceWorkerRegistration.active"
           $ ServiceWorkerRegistration.prim__active (up a)
  
  export
  installing :  JSType t1
             => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
             -> (obj : t1)
             -> JSIO (Maybe ServiceWorker)
  installing a = tryJS "ServiceWorkerRegistration.installing"
               $ ServiceWorkerRegistration.prim__installing (up a)
  
  export
  navigationPreload :  JSType t1
                    => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
                    -> (obj : t1)
                    -> JSIO NavigationPreloadManager
  navigationPreload a = primJS
                      $ ServiceWorkerRegistration.prim__navigationPreload (up a)
  
  export
  onupdatefound : ServiceWorkerRegistration -> Attribute False Maybe EventHandlerNonNull
  onupdatefound = fromNullablePrim "ServiceWorkerRegistration.getonupdatefound"
                                   prim__onupdatefound
                                   prim__setOnupdatefound
  
  export
  scope :  JSType t1
        => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
        -> (obj : t1)
        -> JSIO String
  scope a = primJS $ ServiceWorkerRegistration.prim__scope (up a)
  
  export
  updateViaCache :  JSType t1
                 => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
                 -> (obj : t1)
                 -> JSIO ServiceWorkerUpdateViaCache
  updateViaCache a = tryJS "ServiceWorkerRegistration.updateViaCache"
                   $ ServiceWorkerRegistration.prim__updateViaCache (up a)
  
  export
  waiting :  JSType t1
          => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
          -> (obj : t1)
          -> JSIO (Maybe ServiceWorker)
  waiting a = tryJS "ServiceWorkerRegistration.waiting"
            $ ServiceWorkerRegistration.prim__waiting (up a)
  
  export
  unregister :  JSType t1
             => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
             -> (obj : t1)
             -> JSIO (Promise Boolean)
  unregister a = primJS $ ServiceWorkerRegistration.prim__unregister (up a)
  
  export
  update :  JSType t1
         => {auto 0 _ : Elem ServiceWorkerRegistration (Types t1)}
         -> (obj : t1)
         -> JSIO (Promise Undefined)
  update a = primJS $ ServiceWorkerRegistration.prim__update (up a)

namespace WindowClient
  
  export
  ancestorOrigins :  JSType t1
                  => {auto 0 _ : Elem WindowClient (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Array String)
  ancestorOrigins a = primJS $ WindowClient.prim__ancestorOrigins (up a)
  
  export
  focused :  JSType t1
          => {auto 0 _ : Elem WindowClient (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  focused a = tryJS "WindowClient.focused" $ WindowClient.prim__focused (up a)
  
  export
  visibilityState :  JSType t1
                  => {auto 0 _ : Elem WindowClient (Types t1)}
                  -> (obj : t1)
                  -> JSIO VisibilityState
  visibilityState a = tryJS "WindowClient.visibilityState"
                    $ WindowClient.prim__visibilityState (up a)
  
  export
  focus :  JSType t1
        => {auto 0 _ : Elem WindowClient (Types t1)}
        -> (obj : t1)
        -> JSIO (Promise WindowClient)
  focus a = primJS $ WindowClient.prim__focus (up a)
  
  export
  navigate :  JSType t1
           => {auto 0 _ : Elem WindowClient (Types t1)}
           -> (obj : t1)
           -> (url : String)
           -> JSIO (Promise (Nullable WindowClient))
  navigate a b = primJS $ WindowClient.prim__navigate (up a) b


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
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
  
  export
  new : JSIO ExtendableEventInit
  new = primJS $ ExtendableEventInit.prim__new 

namespace ExtendableMessageEventInit
  
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
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem Request (Types t1)}
      -> (request : t1)
      -> (preloadResponse : Optional (Promise AnyPtr))
      -> (clientId : Optional String)
      -> (resultingClientId : Optional String)
      -> (replacesClientId : Optional String)
      -> (handled : Optional (Promise Undefined))
      -> JSIO FetchEventInit
  new a b c d e f = primJS
                  $ FetchEventInit.prim__new (up a)
                                             (toFFI b)
                                             (toFFI c)
                                             (toFFI d)
                                             (toFFI e)
                                             (toFFI f)

  export
  new' :  JSType t1
       => {auto 0 _ : Elem Request (Types t1)}
       -> (request : t1)
       -> JSIO FetchEventInit
  new' a = primJS
         $ FetchEventInit.prim__new (up a) undef undef undef undef undef
  
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
