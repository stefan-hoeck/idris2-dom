module Web.Internal.ServiceworkerTypes
 
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

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Cache : Type where [external]

export
SafeCast Cache where
  safeCast = unsafeCastOnPrototypeName "Cache"

export data CacheStorage : Type where [external]

export
SafeCast CacheStorage where
  safeCast = unsafeCastOnPrototypeName "CacheStorage"

export data Client : Type where [external]

export
SafeCast Client where
  safeCast = unsafeCastOnPrototypeName "Client"

export data Clients : Type where [external]

export
SafeCast Clients where
  safeCast = unsafeCastOnPrototypeName "Clients"

export data ExtendableEvent : Type where [external]

export
SafeCast ExtendableEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableEvent"

export data ExtendableMessageEvent : Type where [external]

export
SafeCast ExtendableMessageEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEvent"

export data FetchEvent : Type where [external]

export
SafeCast FetchEvent where
  safeCast = unsafeCastOnPrototypeName "FetchEvent"

export data NavigationPreloadManager : Type where [external]

export
SafeCast NavigationPreloadManager where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadManager"

export data ServiceWorker : Type where [external]

export
SafeCast ServiceWorker where
  safeCast = unsafeCastOnPrototypeName "ServiceWorker"

export data ServiceWorkerContainer : Type where [external]

export
SafeCast ServiceWorkerContainer where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerContainer"

export data ServiceWorkerGlobalScope : Type where [external]

export
SafeCast ServiceWorkerGlobalScope where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerGlobalScope"

export data ServiceWorkerRegistration : Type where [external]

export
SafeCast ServiceWorkerRegistration where
  safeCast = unsafeCastOnPrototypeName "ServiceWorkerRegistration"

export data WindowClient : Type where [external]

export
SafeCast WindowClient where
  safeCast = unsafeCastOnPrototypeName "WindowClient"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CacheQueryOptions : Type where [external]

export
SafeCast CacheQueryOptions where
  safeCast = unsafeCastOnPrototypeName "CacheQueryOptions"

export data ClientQueryOptions : Type where [external]

export
SafeCast ClientQueryOptions where
  safeCast = unsafeCastOnPrototypeName "ClientQueryOptions"

export data ExtendableEventInit : Type where [external]

export
SafeCast ExtendableEventInit where
  safeCast = unsafeCastOnPrototypeName "ExtendableEventInit"

export data ExtendableMessageEventInit : Type where [external]

export
SafeCast ExtendableMessageEventInit where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEventInit"

export data FetchEventInit : Type where [external]

export
SafeCast FetchEventInit where
  safeCast = unsafeCastOnPrototypeName "FetchEventInit"

export data MultiCacheQueryOptions : Type where [external]

export
SafeCast MultiCacheQueryOptions where
  safeCast = unsafeCastOnPrototypeName "MultiCacheQueryOptions"

export data NavigationPreloadState : Type where [external]

export
SafeCast NavigationPreloadState where
  safeCast = unsafeCastOnPrototypeName "NavigationPreloadState"

export data RegistrationOptions : Type where [external]

export
SafeCast RegistrationOptions where
  safeCast = unsafeCastOnPrototypeName "RegistrationOptions"

