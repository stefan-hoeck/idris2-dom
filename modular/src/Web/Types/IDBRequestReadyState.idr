module Web.Types.IDBRequestReadyState

import JS

%default total

public export
data IDBRequestReadyState = Pending | Done

export
Show IDBRequestReadyState where
  show Pending = "pending"
  show Done = "done"

export
Eq IDBRequestReadyState where
  (==) = (==) `on` show

export
Ord IDBRequestReadyState where
  compare = compare `on` show

export
read : String -> Maybe IDBRequestReadyState
read "pending" = Just Pending
read "done" = Just Done
read _ = Nothing

export
ToFFI IDBRequestReadyState String where
  toFFI = show

export
FromFFI IDBRequestReadyState String where
  fromFFI = read
