module Web.ServiceworkerTypes
import JS.Util

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
    fromJS = fromMaybe Parsed . read . fromJS

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
    fromJS = fromMaybe Imports . read . fromJS

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
    fromJS = fromMaybe Auxiliary . read . fromJS

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
    fromJS = fromMaybe Window . read . fromJS

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export
data Cache  : Type where [external]

export
ToJS Cache where
  toJS = believe_me

export
FromJS Cache where
  fromJS = believe_me
export
data CacheStorage  : Type where [external]

export
ToJS CacheStorage where
  toJS = believe_me

export
FromJS CacheStorage where
  fromJS = believe_me
export
data Client  : Type where [external]

export
ToJS Client where
  toJS = believe_me

export
FromJS Client where
  fromJS = believe_me
export
data Clients  : Type where [external]

export
ToJS Clients where
  toJS = believe_me

export
FromJS Clients where
  fromJS = believe_me
export
data ExtendableEvent  : Type where [external]

export
ToJS ExtendableEvent where
  toJS = believe_me

export
FromJS ExtendableEvent where
  fromJS = believe_me
export
data ExtendableMessageEvent  : Type where [external]

export
ToJS ExtendableMessageEvent where
  toJS = believe_me

export
FromJS ExtendableMessageEvent where
  fromJS = believe_me
export
data FetchEvent  : Type where [external]

export
ToJS FetchEvent where
  toJS = believe_me

export
FromJS FetchEvent where
  fromJS = believe_me
export
data NavigationPreloadManager  : Type where [external]

export
ToJS NavigationPreloadManager where
  toJS = believe_me

export
FromJS NavigationPreloadManager where
  fromJS = believe_me
export
data ServiceWorker  : Type where [external]

export
ToJS ServiceWorker where
  toJS = believe_me

export
FromJS ServiceWorker where
  fromJS = believe_me
export
data ServiceWorkerContainer  : Type where [external]

export
ToJS ServiceWorkerContainer where
  toJS = believe_me

export
FromJS ServiceWorkerContainer where
  fromJS = believe_me
export
data ServiceWorkerGlobalScope  : Type where [external]

export
ToJS ServiceWorkerGlobalScope where
  toJS = believe_me

export
FromJS ServiceWorkerGlobalScope where
  fromJS = believe_me
export
data ServiceWorkerRegistration  : Type where [external]

export
ToJS ServiceWorkerRegistration where
  toJS = believe_me

export
FromJS ServiceWorkerRegistration where
  fromJS = believe_me
export
data WindowClient  : Type where [external]

export
ToJS WindowClient where
  toJS = believe_me

export
FromJS WindowClient where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export
data CacheQueryOptions  : Type where [external]

export
ToJS CacheQueryOptions where
  toJS = believe_me

export
FromJS CacheQueryOptions where
  fromJS = believe_me
export
data ClientQueryOptions  : Type where [external]

export
ToJS ClientQueryOptions where
  toJS = believe_me

export
FromJS ClientQueryOptions where
  fromJS = believe_me
export
data ExtendableEventInit  : Type where [external]

export
ToJS ExtendableEventInit where
  toJS = believe_me

export
FromJS ExtendableEventInit where
  fromJS = believe_me
export
data ExtendableMessageEventInit  : Type where [external]

export
ToJS ExtendableMessageEventInit where
  toJS = believe_me

export
FromJS ExtendableMessageEventInit where
  fromJS = believe_me
export
data FetchEventInit  : Type where [external]

export
ToJS FetchEventInit where
  toJS = believe_me

export
FromJS FetchEventInit where
  fromJS = believe_me
export
data MultiCacheQueryOptions  : Type where [external]

export
ToJS MultiCacheQueryOptions where
  toJS = believe_me

export
FromJS MultiCacheQueryOptions where
  fromJS = believe_me
export
data NavigationPreloadState  : Type where [external]

export
ToJS NavigationPreloadState where
  toJS = believe_me

export
FromJS NavigationPreloadState where
  fromJS = believe_me
export
data RegistrationOptions  : Type where [external]

export
ToJS RegistrationOptions where
  toJS = believe_me

export
FromJS RegistrationOptions where
  fromJS = believe_me