module Web.Types.RequestCache

import JS

%default total

public export
data RequestCache =
    Default
  | NoStore
  | Reload
  | NoCache
  | ForceCache
  | OnlyIfCached

export
Show RequestCache where
  show Default = "default"
  show NoStore = "no-store"
  show Reload = "reload"
  show NoCache = "no-cache"
  show ForceCache = "force-cache"
  show OnlyIfCached = "only-if-cached"

export
Eq RequestCache where
  (==) = (==) `on` show

export
Ord RequestCache where
  compare = compare `on` show

export
read : String -> Maybe RequestCache
read "default" = Just Default
read "no-store" = Just NoStore
read "reload" = Just Reload
read "no-cache" = Just NoCache
read "force-cache" = Just ForceCache
read "only-if-cached" = Just OnlyIfCached
read _ = Nothing

export
ToFFI RequestCache String where
  toFFI = show

export
FromFFI RequestCache String where
  fromFFI = read
