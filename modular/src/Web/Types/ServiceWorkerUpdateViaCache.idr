module Web.Types.ServiceWorkerUpdateViaCache

import JS

%default total

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
