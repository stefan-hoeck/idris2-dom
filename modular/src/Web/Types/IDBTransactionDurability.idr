module Web.Types.IDBTransactionDurability

import JS

%default total

public export
data IDBTransactionDurability = Default | Strict | Relaxed

export
Show IDBTransactionDurability where
  show Default = "default"
  show Strict = "strict"
  show Relaxed = "relaxed"

export
Eq IDBTransactionDurability where
  (==) = (==) `on` show

export
Ord IDBTransactionDurability where
  compare = compare `on` show

export
read : String -> Maybe IDBTransactionDurability
read "default" = Just Default
read "strict" = Just Strict
read "relaxed" = Just Relaxed
read _ = Nothing

export
ToFFI IDBTransactionDurability String where
  toFFI = show

export
FromFFI IDBTransactionDurability String where
  fromFFI = read
