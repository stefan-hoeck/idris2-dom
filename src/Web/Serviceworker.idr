module Web.Serviceworker

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Client
  
  %foreign "browser:lambda:x=>x.frameType"
  prim__frameType : AnyPtr -> PrimIO AnyPtr
  
  export
  frameType :  Cast client Client
            => ToJS Client
            => (obj : client)
            -> IO FrameType
  
  %foreign "browser:lambda:x=>x.id"
  prim__id : AnyPtr -> PrimIO AnyPtr
  
  export
  id : Cast client Client => ToJS Client => (obj : client) -> IO String
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type : Cast client Client => ToJS Client => (obj : client) -> IO ClientType
  
  %foreign "browser:lambda:x=>x.url"
  prim__url : AnyPtr -> PrimIO AnyPtr
  
  export
  url : Cast client Client => ToJS Client => (obj : client) -> IO String

namespace ExtendableMessageEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast extendableMessageEvent ExtendableMessageEvent
        => ToJS ExtendableMessageEvent
        => (obj : extendableMessageEvent)
        -> IO JSAny
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  export
  lastEventId :  Cast extendableMessageEvent ExtendableMessageEvent
              => ToJS ExtendableMessageEvent
              => (obj : extendableMessageEvent)
              -> IO String
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast extendableMessageEvent ExtendableMessageEvent
         => ToJS ExtendableMessageEvent
         => (obj : extendableMessageEvent)
         -> IO String
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  export
  ports :  Cast extendableMessageEvent ExtendableMessageEvent
        => ToJS ExtendableMessageEvent
        => (obj : extendableMessageEvent)
        -> IO (JSArray MessagePort)
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr
  
  export
  source :  Cast extendableMessageEvent ExtendableMessageEvent
         => ToJS ExtendableMessageEvent
         => (obj : extendableMessageEvent)
         -> IO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))

namespace FetchEvent
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr
  
  export
  clientId :  Cast fetchEvent FetchEvent
           => ToJS FetchEvent
           => (obj : fetchEvent)
           -> IO String
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr
  
  export
  handled :  Cast fetchEvent FetchEvent
          => ToJS FetchEvent
          => (obj : fetchEvent)
          -> IO (JSPromise Undefined)
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr
  
  export
  preloadResponse :  Cast fetchEvent FetchEvent
                  => ToJS FetchEvent
                  => (obj : fetchEvent)
                  -> IO (JSPromise JSAny)
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr
  
  export
  replacesClientId :  Cast fetchEvent FetchEvent
                   => ToJS FetchEvent
                   => (obj : fetchEvent)
                   -> IO String
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr
  
  export
  request :  Cast fetchEvent FetchEvent
          => ToJS FetchEvent
          => (obj : fetchEvent)
          -> IO Request
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr
  
  export
  resultingClientId :  Cast fetchEvent FetchEvent
                    => ToJS FetchEvent
                    => (obj : fetchEvent)
                    -> IO String

namespace ServiceWorker
  
  %foreign "browser:lambda:x=>x.scriptURL"
  prim__scriptURL : AnyPtr -> PrimIO AnyPtr
  
  export
  scriptURL :  Cast serviceWorker ServiceWorker
            => ToJS ServiceWorker
            => (obj : serviceWorker)
            -> IO String
  
  %foreign "browser:lambda:x=>x.state"
  prim__state : AnyPtr -> PrimIO AnyPtr
  
  export
  state :  Cast serviceWorker ServiceWorker
        => ToJS ServiceWorker
        => (obj : serviceWorker)
        -> IO ServiceWorkerState
  
  %foreign "browser:lambda:x=>x.onstatechange"
  prim__onstatechange : AnyPtr -> PrimIO AnyPtr
  
  export
  onstatechange :  Cast serviceWorker ServiceWorker
                => ToJS ServiceWorker
                => (obj : serviceWorker)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onstatechange = v}"
  prim__setOnstatechange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnstatechange :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast serviceWorker ServiceWorker
                   => ToJS ServiceWorker
                   => (obj : serviceWorker)
                   -> (v : eventHandler)
                   -> IO ()

namespace ServiceWorkerContainer
  
  %foreign "browser:lambda:x=>x.controller"
  prim__controller : AnyPtr -> PrimIO AnyPtr
  
  export
  controller :  Cast serviceWorkerContainer ServiceWorkerContainer
             => ToJS ServiceWorkerContainer
             => (obj : serviceWorkerContainer)
             -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.ready"
  prim__ready : AnyPtr -> PrimIO AnyPtr
  
  export
  ready :  Cast serviceWorkerContainer ServiceWorkerContainer
        => ToJS ServiceWorkerContainer
        => (obj : serviceWorkerContainer)
        -> IO (JSPromise ServiceWorkerRegistration)
  
  %foreign "browser:lambda:x=>x.oncontrollerchange"
  prim__oncontrollerchange : AnyPtr -> PrimIO AnyPtr
  
  export
  oncontrollerchange :  Cast serviceWorkerContainer ServiceWorkerContainer
                     => ToJS ServiceWorkerContainer
                     => (obj : serviceWorkerContainer)
                     -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oncontrollerchange = v}"
  prim__setOncontrollerchange : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOncontrollerchange :  Cast eventHandler EventHandler
                        => ToJS EventHandler
                        => Cast serviceWorkerContainer ServiceWorkerContainer
                        => ToJS ServiceWorkerContainer
                        => (obj : serviceWorkerContainer)
                        -> (v : eventHandler)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast serviceWorkerContainer ServiceWorkerContainer
            => ToJS ServiceWorkerContainer
            => (obj : serviceWorkerContainer)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast serviceWorkerContainer ServiceWorkerContainer
               => ToJS ServiceWorkerContainer
               => (obj : serviceWorkerContainer)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast serviceWorkerContainer ServiceWorkerContainer
                 => ToJS ServiceWorkerContainer
                 => (obj : serviceWorkerContainer)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast serviceWorkerContainer ServiceWorkerContainer
                    => ToJS ServiceWorkerContainer
                    => (obj : serviceWorkerContainer)
                    -> (v : eventHandler)
                    -> IO ()

namespace ServiceWorkerGlobalScope
  
  %foreign "browser:lambda:x=>x.clients"
  prim__clients : AnyPtr -> PrimIO AnyPtr
  
  export
  clients :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
          => ToJS ServiceWorkerGlobalScope
          => (obj : serviceWorkerGlobalScope)
          -> IO Clients
  
  %foreign "browser:lambda:x=>x.registration"
  prim__registration : AnyPtr -> PrimIO AnyPtr
  
  export
  registration :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
               => ToJS ServiceWorkerGlobalScope
               => (obj : serviceWorkerGlobalScope)
               -> IO ServiceWorkerRegistration
  
  %foreign "browser:lambda:x=>x.serviceWorker"
  prim__serviceWorker : AnyPtr -> PrimIO AnyPtr
  
  export
  serviceWorker :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
                => ToJS ServiceWorkerGlobalScope
                => (obj : serviceWorkerGlobalScope)
                -> IO ServiceWorker
  
  %foreign "browser:lambda:x=>x.onactivate"
  prim__onactivate : AnyPtr -> PrimIO AnyPtr
  
  export
  onactivate :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
             => ToJS ServiceWorkerGlobalScope
             => (obj : serviceWorkerGlobalScope)
             -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onactivate = v}"
  prim__setOnactivate : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnactivate :  Cast eventHandler EventHandler
                => ToJS EventHandler
                => Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
                => ToJS ServiceWorkerGlobalScope
                => (obj : serviceWorkerGlobalScope)
                -> (v : eventHandler)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.onfetch"
  prim__onfetch : AnyPtr -> PrimIO AnyPtr
  
  export
  onfetch :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
          => ToJS ServiceWorkerGlobalScope
          => (obj : serviceWorkerGlobalScope)
          -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onfetch = v}"
  prim__setOnfetch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnfetch :  Cast eventHandler EventHandler
             => ToJS EventHandler
             => Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
             => ToJS ServiceWorkerGlobalScope
             => (obj : serviceWorkerGlobalScope)
             -> (v : eventHandler)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.oninstall"
  prim__oninstall : AnyPtr -> PrimIO AnyPtr
  
  export
  oninstall :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
            => ToJS ServiceWorkerGlobalScope
            => (obj : serviceWorkerGlobalScope)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.oninstall = v}"
  prim__setOninstall : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOninstall :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
               => ToJS ServiceWorkerGlobalScope
               => (obj : serviceWorkerGlobalScope)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessage"
  prim__onmessage : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessage :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
            => ToJS ServiceWorkerGlobalScope
            => (obj : serviceWorkerGlobalScope)
            -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
  prim__setOnmessage : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessage :  Cast eventHandler EventHandler
               => ToJS EventHandler
               => Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
               => ToJS ServiceWorkerGlobalScope
               => (obj : serviceWorkerGlobalScope)
               -> (v : eventHandler)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.onmessageerror"
  prim__onmessageerror : AnyPtr -> PrimIO AnyPtr
  
  export
  onmessageerror :  Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
                 => ToJS ServiceWorkerGlobalScope
                 => (obj : serviceWorkerGlobalScope)
                 -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
  prim__setOnmessageerror : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnmessageerror :  Cast eventHandler EventHandler
                    => ToJS EventHandler
                    => Cast serviceWorkerGlobalScope ServiceWorkerGlobalScope
                    => ToJS ServiceWorkerGlobalScope
                    => (obj : serviceWorkerGlobalScope)
                    -> (v : eventHandler)
                    -> IO ()

namespace ServiceWorkerRegistration
  
  %foreign "browser:lambda:x=>x.active"
  prim__active : AnyPtr -> PrimIO AnyPtr
  
  export
  active :  Cast serviceWorkerRegistration ServiceWorkerRegistration
         => ToJS ServiceWorkerRegistration
         => (obj : serviceWorkerRegistration)
         -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.installing"
  prim__installing : AnyPtr -> PrimIO AnyPtr
  
  export
  installing :  Cast serviceWorkerRegistration ServiceWorkerRegistration
             => ToJS ServiceWorkerRegistration
             => (obj : serviceWorkerRegistration)
             -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.navigationPreload"
  prim__navigationPreload : AnyPtr -> PrimIO AnyPtr
  
  export
  navigationPreload :  Cast serviceWorkerRegistration ServiceWorkerRegistration
                    => ToJS ServiceWorkerRegistration
                    => (obj : serviceWorkerRegistration)
                    -> IO NavigationPreloadManager
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr
  
  export
  scope :  Cast serviceWorkerRegistration ServiceWorkerRegistration
        => ToJS ServiceWorkerRegistration
        => (obj : serviceWorkerRegistration)
        -> IO String
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr
  
  export
  updateViaCache :  Cast serviceWorkerRegistration ServiceWorkerRegistration
                 => ToJS ServiceWorkerRegistration
                 => (obj : serviceWorkerRegistration)
                 -> IO ServiceWorkerUpdateViaCache
  
  %foreign "browser:lambda:x=>x.waiting"
  prim__waiting : AnyPtr -> PrimIO AnyPtr
  
  export
  waiting :  Cast serviceWorkerRegistration ServiceWorkerRegistration
          => ToJS ServiceWorkerRegistration
          => (obj : serviceWorkerRegistration)
          -> IO (Maybe ServiceWorker)
  
  %foreign "browser:lambda:x=>x.onupdatefound"
  prim__onupdatefound : AnyPtr -> PrimIO AnyPtr
  
  export
  onupdatefound :  Cast serviceWorkerRegistration ServiceWorkerRegistration
                => ToJS ServiceWorkerRegistration
                => (obj : serviceWorkerRegistration)
                -> IO EventHandler
  
  %foreign "browser:lambda:(x,v)=>{x.onupdatefound = v}"
  prim__setOnupdatefound : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOnupdatefound :  Cast eventHandler EventHandler
                   => ToJS EventHandler
                   => Cast serviceWorkerRegistration ServiceWorkerRegistration
                   => ToJS ServiceWorkerRegistration
                   => (obj : serviceWorkerRegistration)
                   -> (v : eventHandler)
                   -> IO ()

namespace WindowClient
  
  %foreign "browser:lambda:x=>x.ancestorOrigins"
  prim__ancestorOrigins : AnyPtr -> PrimIO AnyPtr
  
  export
  ancestorOrigins :  Cast windowClient WindowClient
                  => ToJS WindowClient
                  => (obj : windowClient)
                  -> IO (JSArray String)
  
  %foreign "browser:lambda:x=>x.focused"
  prim__focused : AnyPtr -> PrimIO AnyPtr
  
  export
  focused :  Cast windowClient WindowClient
          => ToJS WindowClient
          => (obj : windowClient)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.visibilityState"
  prim__visibilityState : AnyPtr -> PrimIO AnyPtr
  
  export
  visibilityState :  Cast windowClient WindowClient
                  => ToJS WindowClient
                  => (obj : windowClient)
                  -> IO VisibilityState


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  %foreign "browser:lambda:x=>x.ignoreMethod"
  prim__ignoreMethod : AnyPtr -> PrimIO AnyPtr
  
  export
  ignoreMethod :  Cast cacheQueryOptions CacheQueryOptions
               => ToJS CacheQueryOptions
               => (obj : cacheQueryOptions)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.ignoreMethod = v}"
  prim__setIgnoreMethod : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIgnoreMethod :  Cast cacheQueryOptions CacheQueryOptions
                  => ToJS CacheQueryOptions
                  => (obj : cacheQueryOptions)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ignoreSearch"
  prim__ignoreSearch : AnyPtr -> PrimIO AnyPtr
  
  export
  ignoreSearch :  Cast cacheQueryOptions CacheQueryOptions
               => ToJS CacheQueryOptions
               => (obj : cacheQueryOptions)
               -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.ignoreSearch = v}"
  prim__setIgnoreSearch : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIgnoreSearch :  Cast cacheQueryOptions CacheQueryOptions
                  => ToJS CacheQueryOptions
                  => (obj : cacheQueryOptions)
                  -> (v : Bool)
                  -> IO ()
  
  %foreign "browser:lambda:x=>x.ignoreVary"
  prim__ignoreVary : AnyPtr -> PrimIO AnyPtr
  
  export
  ignoreVary :  Cast cacheQueryOptions CacheQueryOptions
             => ToJS CacheQueryOptions
             => (obj : cacheQueryOptions)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.ignoreVary = v}"
  prim__setIgnoreVary : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIgnoreVary :  Cast cacheQueryOptions CacheQueryOptions
                => ToJS CacheQueryOptions
                => (obj : cacheQueryOptions)
                -> (v : Bool)
                -> IO ()

namespace ClientQueryOptions
  
  %foreign "browser:lambda:x=>x.includeUncontrolled"
  prim__includeUncontrolled : AnyPtr -> PrimIO AnyPtr
  
  export
  includeUncontrolled :  Cast clientQueryOptions ClientQueryOptions
                      => ToJS ClientQueryOptions
                      => (obj : clientQueryOptions)
                      -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.includeUncontrolled = v}"
  prim__setIncludeUncontrolled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIncludeUncontrolled :  Cast clientQueryOptions ClientQueryOptions
                         => ToJS ClientQueryOptions
                         => (obj : clientQueryOptions)
                         -> (v : Bool)
                         -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast clientQueryOptions ClientQueryOptions
       => ToJS ClientQueryOptions
       => (obj : clientQueryOptions)
       -> IO ClientType
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast clientQueryOptions ClientQueryOptions
          => ToJS ClientQueryOptions
          => Cast clientType ClientType
          => ToJS ClientType
          => (obj : clientQueryOptions)
          -> (v : clientType)
          -> IO ()

namespace ExtendableMessageEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast extendableMessageEventInit ExtendableMessageEventInit
        => ToJS ExtendableMessageEventInit
        => (obj : extendableMessageEventInit)
        -> IO JSAny
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast extendableMessageEventInit ExtendableMessageEventInit
          => ToJS ExtendableMessageEventInit
          => (obj : extendableMessageEventInit)
          -> (v : JSAny)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.lastEventId"
  prim__lastEventId : AnyPtr -> PrimIO AnyPtr
  
  export
  lastEventId :  Cast extendableMessageEventInit ExtendableMessageEventInit
              => ToJS ExtendableMessageEventInit
              => (obj : extendableMessageEventInit)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.lastEventId = v}"
  prim__setLastEventId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLastEventId :  Cast extendableMessageEventInit ExtendableMessageEventInit
                 => ToJS ExtendableMessageEventInit
                 => (obj : extendableMessageEventInit)
                 -> (v : String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.origin"
  prim__origin : AnyPtr -> PrimIO AnyPtr
  
  export
  origin :  Cast extendableMessageEventInit ExtendableMessageEventInit
         => ToJS ExtendableMessageEventInit
         => (obj : extendableMessageEventInit)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.origin = v}"
  prim__setOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOrigin :  Cast extendableMessageEventInit ExtendableMessageEventInit
            => ToJS ExtendableMessageEventInit
            => (obj : extendableMessageEventInit)
            -> (v : String)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ports"
  prim__ports : AnyPtr -> PrimIO AnyPtr
  
  export
  ports :  Cast extendableMessageEventInit ExtendableMessageEventInit
        => ToJS ExtendableMessageEventInit
        => (obj : extendableMessageEventInit)
        -> IO (JSArray MessagePort)
  
  %foreign "browser:lambda:(x,v)=>{x.ports = v}"
  prim__setPorts : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPorts :  Cast extendableMessageEventInit ExtendableMessageEventInit
           => ToJS ExtendableMessageEventInit
           => (obj : extendableMessageEventInit)
           -> (v : JSArray MessagePort)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.source"
  prim__source : AnyPtr -> PrimIO AnyPtr
  
  export
  source :  Cast extendableMessageEventInit ExtendableMessageEventInit
         => ToJS ExtendableMessageEventInit
         => (obj : extendableMessageEventInit)
         -> IO (Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
  
  %foreign "browser:lambda:(x,v)=>{x.source = v}"
  prim__setSource : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setSource :  Cast extendableMessageEventInit ExtendableMessageEventInit
            => ToJS ExtendableMessageEventInit
            => (obj : extendableMessageEventInit)
            -> (v : Maybe (NS I [ Client , ServiceWorker , MessagePort ]))
            -> IO ()

namespace FetchEventInit
  
  %foreign "browser:lambda:x=>x.request"
  prim__request : AnyPtr -> PrimIO AnyPtr
  
  export
  request :  Cast fetchEventInit FetchEventInit
          => ToJS FetchEventInit
          => (obj : fetchEventInit)
          -> IO Request
  
  %foreign "browser:lambda:(x,v)=>{x.request = v}"
  prim__setRequest : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRequest :  Cast fetchEventInit FetchEventInit
             => ToJS FetchEventInit
             => Cast request Request
             => ToJS Request
             => (obj : fetchEventInit)
             -> (v : request)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.clientId"
  prim__clientId : AnyPtr -> PrimIO AnyPtr
  
  export
  clientId :  Cast fetchEventInit FetchEventInit
           => ToJS FetchEventInit
           => (obj : fetchEventInit)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.clientId = v}"
  prim__setClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClientId :  Cast fetchEventInit FetchEventInit
              => ToJS FetchEventInit
              => (obj : fetchEventInit)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.handled"
  prim__handled : AnyPtr -> PrimIO AnyPtr
  
  export
  handled :  Cast fetchEventInit FetchEventInit
          => ToJS FetchEventInit
          => (obj : fetchEventInit)
          -> IO (JSPromise Undefined)
  
  %foreign "browser:lambda:(x,v)=>{x.handled = v}"
  prim__setHandled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHandled :  Cast fetchEventInit FetchEventInit
             => ToJS FetchEventInit
             => (obj : fetchEventInit)
             -> (v : JSPromise Undefined)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.preloadResponse"
  prim__preloadResponse : AnyPtr -> PrimIO AnyPtr
  
  export
  preloadResponse :  Cast fetchEventInit FetchEventInit
                  => ToJS FetchEventInit
                  => (obj : fetchEventInit)
                  -> IO (JSPromise JSAny)
  
  %foreign "browser:lambda:(x,v)=>{x.preloadResponse = v}"
  prim__setPreloadResponse : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPreloadResponse :  Cast fetchEventInit FetchEventInit
                     => ToJS FetchEventInit
                     => (obj : fetchEventInit)
                     -> (v : JSPromise JSAny)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.replacesClientId"
  prim__replacesClientId : AnyPtr -> PrimIO AnyPtr
  
  export
  replacesClientId :  Cast fetchEventInit FetchEventInit
                   => ToJS FetchEventInit
                   => (obj : fetchEventInit)
                   -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.replacesClientId = v}"
  prim__setReplacesClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReplacesClientId :  Cast fetchEventInit FetchEventInit
                      => ToJS FetchEventInit
                      => (obj : fetchEventInit)
                      -> (v : String)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.resultingClientId"
  prim__resultingClientId : AnyPtr -> PrimIO AnyPtr
  
  export
  resultingClientId :  Cast fetchEventInit FetchEventInit
                    => ToJS FetchEventInit
                    => (obj : fetchEventInit)
                    -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.resultingClientId = v}"
  prim__setResultingClientId : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setResultingClientId :  Cast fetchEventInit FetchEventInit
                       => ToJS FetchEventInit
                       => (obj : fetchEventInit)
                       -> (v : String)
                       -> IO ()

namespace MultiCacheQueryOptions
  
  %foreign "browser:lambda:x=>x.cacheName"
  prim__cacheName : AnyPtr -> PrimIO AnyPtr
  
  export
  cacheName :  Cast multiCacheQueryOptions MultiCacheQueryOptions
            => ToJS MultiCacheQueryOptions
            => (obj : multiCacheQueryOptions)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.cacheName = v}"
  prim__setCacheName : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCacheName :  Cast multiCacheQueryOptions MultiCacheQueryOptions
               => ToJS MultiCacheQueryOptions
               => (obj : multiCacheQueryOptions)
               -> (v : String)
               -> IO ()

namespace NavigationPreloadState
  
  %foreign "browser:lambda:x=>x.enabled"
  prim__enabled : AnyPtr -> PrimIO AnyPtr
  
  export
  enabled :  Cast navigationPreloadState NavigationPreloadState
          => ToJS NavigationPreloadState
          => (obj : navigationPreloadState)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.enabled = v}"
  prim__setEnabled : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setEnabled :  Cast navigationPreloadState NavigationPreloadState
             => ToJS NavigationPreloadState
             => (obj : navigationPreloadState)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.headerValue"
  prim__headerValue : AnyPtr -> PrimIO AnyPtr
  
  export
  headerValue :  Cast navigationPreloadState NavigationPreloadState
              => ToJS NavigationPreloadState
              => (obj : navigationPreloadState)
              -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.headerValue = v}"
  prim__setHeaderValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeaderValue :  Cast navigationPreloadState NavigationPreloadState
                 => ToJS NavigationPreloadState
                 => (obj : navigationPreloadState)
                 -> (v : String)
                 -> IO ()

namespace RegistrationOptions
  
  %foreign "browser:lambda:x=>x.scope"
  prim__scope : AnyPtr -> PrimIO AnyPtr
  
  export
  scope :  Cast registrationOptions RegistrationOptions
        => ToJS RegistrationOptions
        => (obj : registrationOptions)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.scope = v}"
  prim__setScope : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScope :  Cast registrationOptions RegistrationOptions
           => ToJS RegistrationOptions
           => (obj : registrationOptions)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast registrationOptions RegistrationOptions
       => ToJS RegistrationOptions
       => (obj : registrationOptions)
       -> IO WorkerType
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast registrationOptions RegistrationOptions
          => ToJS RegistrationOptions
          => Cast workerType WorkerType
          => ToJS WorkerType
          => (obj : registrationOptions)
          -> (v : workerType)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.updateViaCache"
  prim__updateViaCache : AnyPtr -> PrimIO AnyPtr
  
  export
  updateViaCache :  Cast registrationOptions RegistrationOptions
                 => ToJS RegistrationOptions
                 => (obj : registrationOptions)
                 -> IO ServiceWorkerUpdateViaCache
  
  %foreign "browser:lambda:(x,v)=>{x.updateViaCache = v}"
  prim__setUpdateViaCache : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setUpdateViaCache :  Cast registrationOptions RegistrationOptions
                    => ToJS RegistrationOptions
                    => Cast serviceWorkerUpdateViaCache ServiceWorkerUpdateViaCache
                    => ToJS ServiceWorkerUpdateViaCache
                    => (obj : registrationOptions)
                    -> (v : serviceWorkerUpdateViaCache)
                    -> IO ()



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