module Web.Types.WorkerType

import JS

%default total

public export
data WorkerType = Classic | Module

export
Show WorkerType where
  show Classic = "classic"
  show Module = "module"

export
Eq WorkerType where
  (==) = (==) `on` show

export
Ord WorkerType where
  compare = compare `on` show

export
read : String -> Maybe WorkerType
read "classic" = Just Classic
read "module" = Just Module
read _ = Nothing

export
ToFFI WorkerType String where
  toFFI = show

export
FromFFI WorkerType String where
  fromFFI = read
