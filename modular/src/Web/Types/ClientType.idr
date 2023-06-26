module Web.Types.ClientType

import JS

%default total

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
