module Web.Types.IDBTransactionMode

import JS

%default total

public export
data IDBTransactionMode = Readonly | Readwrite | Versionchange

export
Show IDBTransactionMode where
  show Readonly = "readonly"
  show Readwrite = "readwrite"
  show Versionchange = "versionchange"

export
Eq IDBTransactionMode where
  (==) = (==) `on` show

export
Ord IDBTransactionMode where
  compare = compare `on` show

export
read : String -> Maybe IDBTransactionMode
read "readonly" = Just Readonly
read "readwrite" = Just Readwrite
read "versionchange" = Just Versionchange
read _ = Nothing

export
ToFFI IDBTransactionMode String where
  toFFI = show

export
FromFFI IDBTransactionMode String where
  fromFFI = read
