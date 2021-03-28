module Web.ServiceworkerTypes
import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ServiceWorkerState
  
  public export
  data ServiceWorkerState = Parsed
                          | Installing
                          | Installed
                          | Activating
                          | Activated
                          | Redundant

  public export
  Show ServiceWorkerState where
    show Parsed = "parsed"
    show Installing = "installing"
    show Installed = "installed"
    show Activating = "activating"
    show Activated = "activated"
    show Redundant = "redundant"

  public export
  Eq ServiceWorkerState where
    (==) = (==) `on` show

  public export
  Ord ServiceWorkerState where
    compare = compare `on` show

  public export
  read : String -> Maybe ServiceWorkerState
  read "parsed" = Just Parsed
  read "installing" = Just Installing
  read "installed" = Just Installed
  read "activating" = Just Activating
  read "activated" = Just Activated
  read "redundant" = Just Redundant
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ServiceWorkerState.read s)}
             -> ServiceWorkerState
  fromString s = fromJust $ read s

  export
  ToJS ServiceWorkerState where
    toJS = toJS . show

  export
  FromJS ServiceWorkerState where
    fromJS ptr = fromJS ptr >>= read

namespace ServiceWorkerUpdateViaCache
  
  public export
  data ServiceWorkerUpdateViaCache = Imports | All | None

  public export
  Show ServiceWorkerUpdateViaCache where
    show Imports = "imports"
    show All = "all"
    show None = "none"

  public export
  Eq ServiceWorkerUpdateViaCache where
    (==) = (==) `on` show

  public export
  Ord ServiceWorkerUpdateViaCache where
    compare = compare `on` show

  public export
  read : String -> Maybe ServiceWorkerUpdateViaCache
  read "imports" = Just Imports
  read "all" = Just All
  read "none" = Just None
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ServiceWorkerUpdateViaCache.read s)}
             -> ServiceWorkerUpdateViaCache
  fromString s = fromJust $ read s

  export
  ToJS ServiceWorkerUpdateViaCache where
    toJS = toJS . show

  export
  FromJS ServiceWorkerUpdateViaCache where
    fromJS ptr = fromJS ptr >>= read

namespace FrameType
  
  public export
  data FrameType = Auxiliary | TopLevel | Nested | None

  public export
  Show FrameType where
    show Auxiliary = "auxiliary"
    show TopLevel = "top-level"
    show Nested = "nested"
    show None = "none"

  public export
  Eq FrameType where
    (==) = (==) `on` show

  public export
  Ord FrameType where
    compare = compare `on` show

  public export
  read : String -> Maybe FrameType
  read "auxiliary" = Just Auxiliary
  read "top-level" = Just TopLevel
  read "nested" = Just Nested
  read "none" = Just None
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (FrameType.read s)}
             -> FrameType
  fromString s = fromJust $ read s

  export
  ToJS FrameType where
    toJS = toJS . show

  export
  FromJS FrameType where
    fromJS ptr = fromJS ptr >>= read

namespace ClientType
  
  public export
  data ClientType = Window | Worker | Sharedworker | All

  public export
  Show ClientType where
    show Window = "window"
    show Worker = "worker"
    show Sharedworker = "sharedworker"
    show All = "all"

  public export
  Eq ClientType where
    (==) = (==) `on` show

  public export
  Ord ClientType where
    compare = compare `on` show

  public export
  read : String -> Maybe ClientType
  read "window" = Just Window
  read "worker" = Just Worker
  read "sharedworker" = Just Sharedworker
  read "all" = Just All
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ClientType.read s)}
             -> ClientType
  fromString s = fromJust $ read s

  export
  ToJS ClientType where
    toJS = toJS . show

  export
  FromJS ClientType where
    fromJS ptr = fromJS ptr >>= read

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Cache : Type where [external]

export
SafeCast Cache where
  safeCast = unsafeCastOnPrototypeName "Cache"

export ToJS Cache where toJS = believe_me
export FromJS Cache where fromJS = safeCast

export data CacheStorage : Type where [external]

export
SafeCast CacheStorage where
  safeCast = unsafeCastOnPrototypeName "CacheStorage"

export ToJS CacheStorage where toJS = believe_me
export FromJS CacheStorage where fromJS = safeCast

export data Client : Type where [external]

export
SafeCast Client where
  safeCast = unsafeCastOnPrototypeName "Client"

export ToJS Client where toJS = believe_me
export FromJS Client where fromJS = safeCast

export data Clients : Type where [external]

export
SafeCast Clients where
  safeCast = unsafeCastOnPrototypeName "Clients"

export ToJS Clients where toJS = believe_me
export FromJS Clients where fromJS = safeCast

export data ExtendableEvent : Type where [external]

export
SafeCast ExtendableEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableEvent"

export ToJS ExtendableEvent where toJS = believe_me
export FromJS ExtendableEvent where fromJS = safeCast

export data ExtendableMessageEvent : Type where [external]

export
SafeCast ExtendableMessageEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEvent"

export ToJS ExtendableMessageEvent where toJS = believe_me
export FromJS ExtendableMessageEvent where fromJS = safeCast

export data FetchEvent : Type where [external]

export
SafeCast FetchEvent where
  safeCast = unsafeCastOnPrototypeName "FetchEvent"

export ToJS FetchEvent where toJS = believe_me
export FromJS FetchEvent where fromJS = safeCast

export data NavigationPreloadManager : Type where [external]

export
SafeCast NavigationPreloadManager where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadManager"

export ToJS NavigationPreloadManager where toJS = believe_me
export FromJS NavigationPreloadManager where fromJS = safeCast

export data ServiceWorker : Type where [external]

export
SafeCast ServiceWorker where
  safeCast = unsafeCastOnPrototypeName "ServiceWorker"

export ToJS ServiceWorker where toJS = believe_me
export FromJS ServiceWorker where fromJS = safeCast

export data ServiceWorkerContainer : Type where [external]

export
SafeCast ServiceWorkerContainer where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerContainer"

export ToJS ServiceWorkerContainer where toJS = believe_me
export FromJS ServiceWorkerContainer where fromJS = safeCast

export data ServiceWorkerGlobalScope : Type where [external]

export
SafeCast ServiceWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerGlobalScope"

export ToJS ServiceWorkerGlobalScope where toJS = believe_me
export FromJS ServiceWorkerGlobalScope where fromJS = safeCast

export data ServiceWorkerRegistration : Type where [external]

export
SafeCast ServiceWorkerRegistration where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerRegistration"

export ToJS ServiceWorkerRegistration where toJS = believe_me
export FromJS ServiceWorkerRegistration where fromJS = safeCast

export data WindowClient : Type where [external]

export
SafeCast WindowClient where
  safeCast = unsafeCastOnPrototypeName "WindowClient"

export ToJS WindowClient where toJS = believe_me
export FromJS WindowClient where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CacheQueryOptions : Type where [external]

export
SafeCast CacheQueryOptions where
  safeCast = unsafeCastOnPrototypeName "CacheQueryOptions"

export ToJS CacheQueryOptions where toJS = believe_me
export FromJS CacheQueryOptions where fromJS = safeCast

export data ClientQueryOptions : Type where [external]

export
SafeCast ClientQueryOptions where
  safeCast = unsafeCastOnPrototypeName "ClientQueryOptions"

export ToJS ClientQueryOptions where toJS = believe_me
export FromJS ClientQueryOptions where fromJS = safeCast

export data ExtendableEventInit : Type where [external]

export
SafeCast ExtendableEventInit where
  safeCast = unsafeCastOnPrototypeName "ExtendableEventInit"

export ToJS ExtendableEventInit where toJS = believe_me
export FromJS ExtendableEventInit where fromJS = safeCast

export data ExtendableMessageEventInit : Type where [external]

export
SafeCast ExtendableMessageEventInit where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEventInit"

export ToJS ExtendableMessageEventInit where toJS = believe_me
export FromJS ExtendableMessageEventInit where fromJS = safeCast

export data FetchEventInit : Type where [external]

export
SafeCast FetchEventInit where
  safeCast = unsafeCastOnPrototypeName "FetchEventInit"

export ToJS FetchEventInit where toJS = believe_me
export FromJS FetchEventInit where fromJS = safeCast

export data MultiCacheQueryOptions : Type where [external]

export
SafeCast MultiCacheQueryOptions where
  safeCast = unsafeCastOnPrototypeName "MultiCacheQueryOptions"

export ToJS MultiCacheQueryOptions where toJS = believe_me
export FromJS MultiCacheQueryOptions where fromJS = safeCast

export data NavigationPreloadState : Type where [external]

export
SafeCast NavigationPreloadState where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadState"

export ToJS NavigationPreloadState where toJS = believe_me
export FromJS NavigationPreloadState where fromJS = safeCast

export data RegistrationOptions : Type where [external]

export
SafeCast RegistrationOptions where
  safeCast = unsafeCastOnPrototypeName "RegistrationOptions"

export ToJS RegistrationOptions where toJS = believe_me
export FromJS RegistrationOptions where fromJS = safeCast