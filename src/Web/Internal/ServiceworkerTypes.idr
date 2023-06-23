module Web.Internal.ServiceworkerTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ServiceWorkerState
  
  public export
  data ServiceWorkerState =
      Parsed
    | Installing
    | Installed
    | Activating
    | Activated
    | Redundant
  
  export
  Show ServiceWorkerState where
    show Parsed = "parsed"
    show Installing = "installing"
    show Installed = "installed"
    show Activating = "activating"
    show Activated = "activated"
    show Redundant = "redundant"
  
  export
  Eq ServiceWorkerState where
    (==) = (==) `on` show
  
  export
  Ord ServiceWorkerState where
    compare = compare `on` show
  
  export
  read : String -> Maybe ServiceWorkerState
  read "parsed" = Just Parsed
  read "installing" = Just Installing
  read "installed" = Just Installed
  read "activating" = Just Activating
  read "activated" = Just Activated
  read "redundant" = Just Redundant
  read _ = Nothing
  
  export
  ToFFI ServiceWorkerState String where
    toFFI = show
  
  export
  FromFFI ServiceWorkerState String where
    fromFFI = read


namespace ServiceWorkerUpdateViaCache
  
  public export
  data ServiceWorkerUpdateViaCache = Imports | All | None
  
  export
  Show ServiceWorkerUpdateViaCache where
    show Imports = "imports"
    show All = "all"
    show None = "none"
  
  export
  Eq ServiceWorkerUpdateViaCache where
    (==) = (==) `on` show
  
  export
  Ord ServiceWorkerUpdateViaCache where
    compare = compare `on` show
  
  export
  read : String -> Maybe ServiceWorkerUpdateViaCache
  read "imports" = Just Imports
  read "all" = Just All
  read "none" = Just None
  read _ = Nothing
  
  export
  ToFFI ServiceWorkerUpdateViaCache String where
    toFFI = show
  
  export
  FromFFI ServiceWorkerUpdateViaCache String where
    fromFFI = read


namespace FrameType
  
  public export
  data FrameType = Auxiliary | TopLevel | Nested | None
  
  export
  Show FrameType where
    show Auxiliary = "auxiliary"
    show TopLevel = "top-level"
    show Nested = "nested"
    show None = "none"
  
  export
  Eq FrameType where
    (==) = (==) `on` show
  
  export
  Ord FrameType where
    compare = compare `on` show
  
  export
  read : String -> Maybe FrameType
  read "auxiliary" = Just Auxiliary
  read "top-level" = Just TopLevel
  read "nested" = Just Nested
  read "none" = Just None
  read _ = Nothing
  
  export
  ToFFI FrameType String where
    toFFI = show
  
  export
  FromFFI FrameType String where
    fromFFI = read


namespace ClientType
  
  public export
  data ClientType = Window | Worker | Sharedworker | All
  
  export
  Show ClientType where
    show Window = "window"
    show Worker = "worker"
    show Sharedworker = "sharedworker"
    show All = "all"
  
  export
  Eq ClientType where
    (==) = (==) `on` show
  
  export
  Ord ClientType where
    compare = compare `on` show
  
  export
  read : String -> Maybe ClientType
  read "window" = Just Window
  read "worker" = Just Worker
  read "sharedworker" = Just Sharedworker
  read "all" = Just All
  read _ = Nothing
  
  export
  ToFFI ClientType String where
    toFFI = show
  
  export
  FromFFI ClientType String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Cache : Type where [external]

export
ToFFI Cache Cache where toFFI = id

export
FromFFI Cache Cache where fromFFI = Just

export
SafeCast Cache where
  safeCast = unsafeCastOnPrototypeName "Cache"

export data CacheStorage : Type where [external]

export
ToFFI CacheStorage CacheStorage where toFFI = id

export
FromFFI CacheStorage CacheStorage where fromFFI = Just

export
SafeCast CacheStorage where
  safeCast = unsafeCastOnPrototypeName "CacheStorage"

export data Client : Type where [external]

export
ToFFI Client Client where toFFI = id

export
FromFFI Client Client where fromFFI = Just

export
SafeCast Client where
  safeCast = unsafeCastOnPrototypeName "Client"

export data Clients : Type where [external]

export
ToFFI Clients Clients where toFFI = id

export
FromFFI Clients Clients where fromFFI = Just

export
SafeCast Clients where
  safeCast = unsafeCastOnPrototypeName "Clients"

export data ExtendableEvent : Type where [external]

export
ToFFI ExtendableEvent ExtendableEvent where toFFI = id

export
FromFFI ExtendableEvent ExtendableEvent where fromFFI = Just

export
SafeCast ExtendableEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableEvent"

export data ExtendableMessageEvent : Type where [external]

export
ToFFI ExtendableMessageEvent ExtendableMessageEvent where toFFI = id

export
FromFFI ExtendableMessageEvent ExtendableMessageEvent where fromFFI = Just

export
SafeCast ExtendableMessageEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEvent"

export data FetchEvent : Type where [external]

export
ToFFI FetchEvent FetchEvent where toFFI = id

export
FromFFI FetchEvent FetchEvent where fromFFI = Just

export
SafeCast FetchEvent where
  safeCast = unsafeCastOnPrototypeName "FetchEvent"

export data NavigationPreloadManager : Type where [external]

export
ToFFI NavigationPreloadManager NavigationPreloadManager where toFFI = id

export
FromFFI NavigationPreloadManager NavigationPreloadManager where fromFFI = Just

export
SafeCast NavigationPreloadManager where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadManager"

export data ServiceWorker : Type where [external]

export
ToFFI ServiceWorker ServiceWorker where toFFI = id

export
FromFFI ServiceWorker ServiceWorker where fromFFI = Just

export
SafeCast ServiceWorker where
  safeCast = unsafeCastOnPrototypeName "ServiceWorker"

export data ServiceWorkerContainer : Type where [external]

export
ToFFI ServiceWorkerContainer ServiceWorkerContainer where toFFI = id

export
FromFFI ServiceWorkerContainer ServiceWorkerContainer where fromFFI = Just

export
SafeCast ServiceWorkerContainer where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerContainer"

export data ServiceWorkerGlobalScope : Type where [external]

export
ToFFI ServiceWorkerGlobalScope ServiceWorkerGlobalScope where toFFI = id

export
FromFFI ServiceWorkerGlobalScope ServiceWorkerGlobalScope where fromFFI = Just

export
SafeCast ServiceWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerGlobalScope"

export data ServiceWorkerRegistration : Type where [external]

export
ToFFI ServiceWorkerRegistration ServiceWorkerRegistration where toFFI = id

export
FromFFI ServiceWorkerRegistration ServiceWorkerRegistration where fromFFI = Just

export
SafeCast ServiceWorkerRegistration where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerRegistration"

export data WindowClient : Type where [external]

export
ToFFI WindowClient WindowClient where toFFI = id

export
FromFFI WindowClient WindowClient where fromFFI = Just

export
SafeCast WindowClient where
  safeCast = unsafeCastOnPrototypeName "WindowClient"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CacheQueryOptions : Type where [external]

export
ToFFI CacheQueryOptions CacheQueryOptions where toFFI = id

export
FromFFI CacheQueryOptions CacheQueryOptions where fromFFI = Just

export data ClientQueryOptions : Type where [external]

export
ToFFI ClientQueryOptions ClientQueryOptions where toFFI = id

export
FromFFI ClientQueryOptions ClientQueryOptions where fromFFI = Just

export data ExtendableEventInit : Type where [external]

export
ToFFI ExtendableEventInit ExtendableEventInit where toFFI = id

export
FromFFI ExtendableEventInit ExtendableEventInit where fromFFI = Just

export data ExtendableMessageEventInit : Type where [external]

export
ToFFI ExtendableMessageEventInit ExtendableMessageEventInit where toFFI = id

export
FromFFI ExtendableMessageEventInit ExtendableMessageEventInit where fromFFI = Just

export data FetchEventInit : Type where [external]

export
ToFFI FetchEventInit FetchEventInit where toFFI = id

export
FromFFI FetchEventInit FetchEventInit where fromFFI = Just

export data MultiCacheQueryOptions : Type where [external]

export
ToFFI MultiCacheQueryOptions MultiCacheQueryOptions where toFFI = id

export
FromFFI MultiCacheQueryOptions MultiCacheQueryOptions where fromFFI = Just

export data NavigationPreloadState : Type where [external]

export
ToFFI NavigationPreloadState NavigationPreloadState where toFFI = id

export
FromFFI NavigationPreloadState NavigationPreloadState where fromFFI = Just

export data RegistrationOptions : Type where [external]

export
ToFFI RegistrationOptions RegistrationOptions where toFFI = id

export
FromFFI RegistrationOptions RegistrationOptions where fromFFI = Just



