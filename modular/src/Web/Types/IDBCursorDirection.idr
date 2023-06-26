module Web.Types.IDBCursorDirection

import JS

%default total

public export
data IDBCursorDirection = Next | Nextunique | Prev | Prevunique

export
Show IDBCursorDirection where
  show Next = "next"
  show Nextunique = "nextunique"
  show Prev = "prev"
  show Prevunique = "prevunique"

export
Eq IDBCursorDirection where
  (==) = (==) `on` show

export
Ord IDBCursorDirection where
  compare = compare `on` show

export
read : String -> Maybe IDBCursorDirection
read "next" = Just Next
read "nextunique" = Just Nextunique
read "prev" = Just Prev
read "prevunique" = Just Prevunique
read _ = Nothing

export
ToFFI IDBCursorDirection String where
  toFFI = show

export
FromFFI IDBCursorDirection String where
  fromFFI = read
