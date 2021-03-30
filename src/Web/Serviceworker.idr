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

namespace CacheStorage
  
  public export
  JSType CacheStorage where
    parents =  [ Object ]

    mixins =  []

namespace Client
  
  public export
  JSType Client where
    parents =  [ Object ]

    mixins =  []

namespace Clients
  
  public export
  JSType Clients where
    parents =  [ Object ]

    mixins =  []

namespace ExtendableEvent
  
  public export
  JSType ExtendableEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace ExtendableMessageEvent
  
  public export
  JSType ExtendableMessageEvent where
    parents =  [ ExtendableEvent , Event , Object ]

    mixins =  []

namespace FetchEvent
  
  public export
  JSType FetchEvent where
    parents =  [ ExtendableEvent , Event , Object ]

    mixins =  []

namespace NavigationPreloadManager
  
  public export
  JSType NavigationPreloadManager where
    parents =  [ Object ]

    mixins =  []

namespace ServiceWorker
  
  public export
  JSType ServiceWorker where
    parents =  [ EventTarget , Object ]

    mixins =  [ AbstractWorker ]

namespace ServiceWorkerContainer
  
  public export
  JSType ServiceWorkerContainer where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace ServiceWorkerGlobalScope
  
  public export
  JSType ServiceWorkerGlobalScope where
    parents =  [ WorkerGlobalScope , EventTarget , Object ]

    mixins =  []

namespace ServiceWorkerRegistration
  
  public export
  JSType ServiceWorkerRegistration where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace WindowClient
  
  public export
  JSType WindowClient where
    parents =  [ Client , Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CacheQueryOptions
  
  public export
  JSType CacheQueryOptions where
    parents =  [ Object ]

    mixins =  []

namespace ClientQueryOptions
  
  public export
  JSType ClientQueryOptions where
    parents =  [ Object ]

    mixins =  []

namespace ExtendableEventInit
  
  public export
  JSType ExtendableEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace ExtendableMessageEventInit
  
  public export
  JSType ExtendableMessageEventInit where
    parents =  [ ExtendableEventInit , EventInit , Object ]

    mixins =  []

namespace FetchEventInit
  
  public export
  JSType FetchEventInit where
    parents =  [ ExtendableEventInit , EventInit , Object ]

    mixins =  []

namespace MultiCacheQueryOptions
  
  public export
  JSType MultiCacheQueryOptions where
    parents =  [ CacheQueryOptions , Object ]

    mixins =  []

namespace NavigationPreloadState
  
  public export
  JSType NavigationPreloadState where
    parents =  [ Object ]

    mixins =  []

namespace RegistrationOptions
  
  public export
  JSType RegistrationOptions where
    parents =  [ Object ]

    mixins =  []
