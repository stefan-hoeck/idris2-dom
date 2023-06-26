module Web.Types.ServiceWorkerState

import JS

%default total

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
