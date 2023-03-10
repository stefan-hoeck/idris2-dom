module Web.Internal.IndexedDBTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace IDBRequestReadyState

  public export
  data IDBRequestReadyState = Pending | Done

  public export
  Show IDBRequestReadyState where
    show Pending = "pending"
    show Done = "done"

  public export
  Eq IDBRequestReadyState where
    (==) = (==) `on` show

  public export
  Ord IDBRequestReadyState where
    compare = compare `on` show

  public export
  read : String -> Maybe IDBRequestReadyState
  read "pending" = Just Pending
  read "done" = Just Done
  read _ = Nothing

  public export
  fromString :
       (s : String)
    -> {auto 0 _ : IsJust (IDBRequestReadyState.read s)}
    -> IDBRequestReadyState
  fromString s = fromJust $ read s

  export
  ToFFI IDBRequestReadyState String where
    toFFI = show

  export
  FromFFI IDBRequestReadyState String where
    fromFFI = read


namespace IDBTransactionDurability

  public export
  data IDBTransactionDurability = Default | Strict | Relaxed

  public export
  Show IDBTransactionDurability where
    show Default = "default"
    show Strict = "strict"
    show Relaxed = "relaxed"

  public export
  Eq IDBTransactionDurability where
    (==) = (==) `on` show

  public export
  Ord IDBTransactionDurability where
    compare = compare `on` show

  public export
  read : String -> Maybe IDBTransactionDurability
  read "default" = Just Default
  read "strict" = Just Strict
  read "relaxed" = Just Relaxed
  read _ = Nothing

  public export
  fromString :
       (s : String)
    -> {auto 0 _ : IsJust (IDBTransactionDurability.read s)}
    -> IDBTransactionDurability
  fromString s = fromJust $ read s

  export
  ToFFI IDBTransactionDurability String where
    toFFI = show

  export
  FromFFI IDBTransactionDurability String where
    fromFFI = read


namespace IDBCursorDirection

  public export
  data IDBCursorDirection = Next | Nextunique | Prev | Prevunique

  public export
  Show IDBCursorDirection where
    show Next = "next"
    show Nextunique = "nextunique"
    show Prev = "prev"
    show Prevunique = "prevunique"

  public export
  Eq IDBCursorDirection where
    (==) = (==) `on` show

  public export
  Ord IDBCursorDirection where
    compare = compare `on` show

  public export
  read : String -> Maybe IDBCursorDirection
  read "next" = Just Next
  read "nextunique" = Just Nextunique
  read "prev" = Just Prev
  read "prevunique" = Just Prevunique
  read _ = Nothing

  public export
  fromString :
       (s : String)
    -> {auto 0 _ : IsJust (IDBCursorDirection.read s)}
    -> IDBCursorDirection
  fromString s = fromJust $ read s

  export
  ToFFI IDBCursorDirection String where
    toFFI = show

  export
  FromFFI IDBCursorDirection String where
    fromFFI = read


namespace IDBTransactionMode

  public export
  data IDBTransactionMode = Readonly | Readwrite | Versionchange

  public export
  Show IDBTransactionMode where
    show Readonly = "readonly"
    show Readwrite = "readwrite"
    show Versionchange = "versionchange"

  public export
  Eq IDBTransactionMode where
    (==) = (==) `on` show

  public export
  Ord IDBTransactionMode where
    compare = compare `on` show

  public export
  read : String -> Maybe IDBTransactionMode
  read "readonly" = Just Readonly
  read "readwrite" = Just Readwrite
  read "versionchange" = Just Versionchange
  read _ = Nothing

  public export
  fromString :
       (s : String)
    -> {auto 0 _ : IsJust (IDBTransactionMode.read s)}
    -> IDBTransactionMode
  fromString s = fromJust $ read s

  export
  ToFFI IDBTransactionMode String where
    toFFI = show

  export
  FromFFI IDBTransactionMode String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data IDBCursor : Type where [external]

export
ToFFI IDBCursor IDBCursor where toFFI = id

export
FromFFI IDBCursor IDBCursor where fromFFI = Just

export
SafeCast IDBCursor where
  safeCast = unsafeCastOnPrototypeName "IDBCursor"

export data IDBCursorWithValue : Type where [external]

export
ToFFI IDBCursorWithValue IDBCursorWithValue where toFFI = id

export
FromFFI IDBCursorWithValue IDBCursorWithValue where fromFFI = Just

export
SafeCast IDBCursorWithValue where
  safeCast = unsafeCastOnPrototypeName "IDBCursorWithValue"

export data IDBDatabase : Type where [external]

export
ToFFI IDBDatabase IDBDatabase where toFFI = id

export
FromFFI IDBDatabase IDBDatabase where fromFFI = Just

export
SafeCast IDBDatabase where
  safeCast = unsafeCastOnPrototypeName "IDBDatabase"

export data IDBFactory : Type where [external]

export
ToFFI IDBFactory IDBFactory where toFFI = id

export
FromFFI IDBFactory IDBFactory where fromFFI = Just

export
SafeCast IDBFactory where
  safeCast = unsafeCastOnPrototypeName "IDBFactory"

export data IDBIndex : Type where [external]

export
ToFFI IDBIndex IDBIndex where toFFI = id

export
FromFFI IDBIndex IDBIndex where fromFFI = Just

export
SafeCast IDBIndex where
  safeCast = unsafeCastOnPrototypeName "IDBIndex"

export data IDBKeyRange : Type where [external]

export
ToFFI IDBKeyRange IDBKeyRange where toFFI = id

export
FromFFI IDBKeyRange IDBKeyRange where fromFFI = Just

export
SafeCast IDBKeyRange where
  safeCast = unsafeCastOnPrototypeName "IDBKeyRange"

export data IDBObjectStore : Type where [external]

export
ToFFI IDBObjectStore IDBObjectStore where toFFI = id

export
FromFFI IDBObjectStore IDBObjectStore where fromFFI = Just

export
SafeCast IDBObjectStore where
  safeCast = unsafeCastOnPrototypeName "IDBObjectStore"

export data IDBOpenDBRequest : Type where [external]

export
ToFFI IDBOpenDBRequest IDBOpenDBRequest where toFFI = id

export
FromFFI IDBOpenDBRequest IDBOpenDBRequest where fromFFI = Just

export
SafeCast IDBOpenDBRequest where
  safeCast = unsafeCastOnPrototypeName "IDBOpenDBRequest"

export data IDBRequest : Type where [external]

export
ToFFI IDBRequest IDBRequest where toFFI = id

export
FromFFI IDBRequest IDBRequest where fromFFI = Just

export
SafeCast IDBRequest where
  safeCast = unsafeCastOnPrototypeName "IDBRequest"

export data IDBTransaction : Type where [external]

export
ToFFI IDBTransaction IDBTransaction where toFFI = id

export
FromFFI IDBTransaction IDBTransaction where fromFFI = Just

export
SafeCast IDBTransaction where
  safeCast = unsafeCastOnPrototypeName "IDBTransaction"

export data IDBVersionChangeEvent : Type where [external]

export
ToFFI IDBVersionChangeEvent IDBVersionChangeEvent where toFFI = id

export
FromFFI IDBVersionChangeEvent IDBVersionChangeEvent where fromFFI = Just

export
SafeCast IDBVersionChangeEvent where
  safeCast = unsafeCastOnPrototypeName "IDBVersionChangeEvent"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data IDBDatabaseInfo : Type where [external]

export
ToFFI IDBDatabaseInfo IDBDatabaseInfo where toFFI = id

export
FromFFI IDBDatabaseInfo IDBDatabaseInfo where fromFFI = Just

export data IDBIndexParameters : Type where [external]

export
ToFFI IDBIndexParameters IDBIndexParameters where toFFI = id

export
FromFFI IDBIndexParameters IDBIndexParameters where fromFFI = Just

export data IDBObjectStoreParameters : Type where [external]

export
ToFFI IDBObjectStoreParameters IDBObjectStoreParameters where toFFI = id

export
FromFFI IDBObjectStoreParameters IDBObjectStoreParameters where fromFFI = Just

export data IDBTransactionOptions : Type where [external]

export
ToFFI IDBTransactionOptions IDBTransactionOptions where toFFI = id

export
FromFFI IDBTransactionOptions IDBTransactionOptions where fromFFI = Just

export data IDBVersionChangeEventInit : Type where [external]

export
ToFFI IDBVersionChangeEventInit IDBVersionChangeEventInit where toFFI = id

export
FromFFI IDBVersionChangeEventInit IDBVersionChangeEventInit where fromFFI = Just
