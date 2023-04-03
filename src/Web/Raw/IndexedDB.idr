module Web.Raw.IndexedDB

import JS
import Web.Internal.IndexedDBPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace IDBCursor

  export
  direction :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO IDBCursorDirection
  direction a = tryJS "IDBCursor.direction" $ IDBCursor.prim__direction (up a)


  export
  key :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO Any
  key a = tryJS "IDBCursor.key" $ IDBCursor.prim__key (up a)


  export
  primaryKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO Any
  primaryKey a = tryJS "IDBCursor.primaryKey" $
    IDBCursor.prim__primaryKey (up a)


  export
  request :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO IDBRequest
  request a = primJS $ IDBCursor.prim__request (up a)


  export
  source :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO (HSum [IDBObjectStore, IDBIndex])
  source a = tryJS "IDBCursor.source" $ IDBCursor.prim__source (up a)


  export
  advance :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> (count : Bits32)
    -> JSIO ()
  advance a b = primJS $ IDBCursor.prim__advance (up a) b


  export
  continue' :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> (key : Optional Any)
    -> JSIO ()
  continue' a b = primJS $ IDBCursor.prim__continue (up a) (toFFI b)

  export
  continue :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO ()
  continue a = primJS $ IDBCursor.prim__continue (up a) undef


  export
  continuePrimaryKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> (key : Any)
    -> (primaryKey : Any)
    -> JSIO ()
  continuePrimaryKey a b c = primJS $
    IDBCursor.prim__continuePrimaryKey (up a) (toFFI b) (toFFI c)


  export
  delete :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> JSIO IDBRequest
  delete a = primJS $ IDBCursor.prim__delete (up a)


  export
  update :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> (value : Any)
    -> JSIO IDBRequest
  update a b = primJS $ IDBCursor.prim__update (up a) (toFFI b)



namespace IDBCursorWithValue

  export
  value : (obj : IDBCursorWithValue) -> JSIO Any
  value a = tryJS "IDBCursorWithValue.value" $ IDBCursorWithValue.prim__value a



namespace IDBDatabase

  export
  name : (obj : IDBDatabase) -> JSIO String
  name a = primJS $ IDBDatabase.prim__name a


  export
  objectStoreNames : (obj : IDBDatabase) -> JSIO DOMStringList
  objectStoreNames a = primJS $ IDBDatabase.prim__objectStoreNames a


  export
  onabort : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim
                "IDBDatabase.getonabort"
                prim__onabort
                prim__setOnabort
                v


  export
  onclose : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
  onclose v = fromNullablePrim
                "IDBDatabase.getonclose"
                prim__onclose
                prim__setOnclose
                v


  export
  onerror : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "IDBDatabase.getonerror"
                prim__onerror
                prim__setOnerror
                v


  export
  onversionchange : IDBDatabase -> Attribute False Maybe EventHandlerNonNull
  onversionchange v = fromNullablePrim
                        "IDBDatabase.getonversionchange"
                        prim__onversionchange
                        prim__setOnversionchange
                        v


  export
  version : (obj : IDBDatabase) -> JSIO JSBits64
  version a = primJS $ IDBDatabase.prim__version a


  export
  close : (obj : IDBDatabase) -> JSIO ()
  close a = primJS $ IDBDatabase.prim__close a


  export
  createObjectStore' :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem IDBObjectStoreParameters (Types t3)}
    -> (obj : IDBDatabase)
    -> (name : String)
    -> (options : Optional t3)
    -> JSIO IDBObjectStore
  createObjectStore' a b c = primJS $
    IDBDatabase.prim__createObjectStore a b (optUp c)

  export
  createObjectStore :
       (obj : IDBDatabase)
    -> (name : String)
    -> JSIO IDBObjectStore
  createObjectStore a b = primJS $ IDBDatabase.prim__createObjectStore a b undef


  export
  deleteObjectStore : (obj : IDBDatabase) -> (name : String) -> JSIO ()
  deleteObjectStore a b = primJS $ IDBDatabase.prim__deleteObjectStore a b


  export
  transaction' :
       {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem IDBTransactionOptions (Types t4)}
    -> (obj : IDBDatabase)
    -> (storeNames : HSum [String, Array String])
    -> (mode : Optional IDBTransactionMode)
    -> (options : Optional t4)
    -> JSIO IDBTransaction
  transaction' a b c d = primJS $
    IDBDatabase.prim__transaction a (toFFI b) (toFFI c) (optUp d)

  export
  transaction :
       (obj : IDBDatabase)
    -> (storeNames : HSum [String, Array String])
    -> JSIO IDBTransaction
  transaction a b = primJS $
    IDBDatabase.prim__transaction a (toFFI b) undef undef



namespace IDBFactory

  export
  cmp : (obj : IDBFactory) -> (first : Any) -> (second : Any) -> JSIO Int16
  cmp a b c = primJS $ IDBFactory.prim__cmp a (toFFI b) (toFFI c)


  export
  databases : (obj : IDBFactory) -> JSIO (Promise (Array IDBDatabaseInfo))
  databases a = primJS $ IDBFactory.prim__databases a


  export
  deleteDatabase :
       (obj : IDBFactory)
    -> (name : String)
    -> JSIO IDBOpenDBRequest
  deleteDatabase a b = primJS $ IDBFactory.prim__deleteDatabase a b


  export
  open' :
       (obj : IDBFactory)
    -> (name : String)
    -> (version : Optional JSBits64)
    -> JSIO IDBOpenDBRequest
  open' a b c = primJS $ IDBFactory.prim__open a b (toFFI c)

  export
  open_ : (obj : IDBFactory) -> (name : String) -> JSIO IDBOpenDBRequest
  open_ a b = primJS $ IDBFactory.prim__open a b undef



namespace IDBIndex

  export
  keyPath : (obj : IDBIndex) -> JSIO Any
  keyPath a = tryJS "IDBIndex.keyPath" $ IDBIndex.prim__keyPath a


  export
  multiEntry : (obj : IDBIndex) -> JSIO Bool
  multiEntry a = tryJS "IDBIndex.multiEntry" $ IDBIndex.prim__multiEntry a


  export
  name : IDBIndex -> Attribute True Prelude.id String
  name v = fromPrim "IDBIndex.getname" prim__name prim__setName v


  export
  objectStore : (obj : IDBIndex) -> JSIO IDBObjectStore
  objectStore a = primJS $ IDBIndex.prim__objectStore a


  export
  unique : (obj : IDBIndex) -> JSIO Bool
  unique a = tryJS "IDBIndex.unique" $ IDBIndex.prim__unique a


  export
  count' : (obj : IDBIndex) -> (query : Optional Any) -> JSIO IDBRequest
  count' a b = primJS $ IDBIndex.prim__count a (toFFI b)

  export
  count : (obj : IDBIndex) -> JSIO IDBRequest
  count a = primJS $ IDBIndex.prim__count a undef


  export
  getAll' :
       (obj : IDBIndex)
    -> (query : Optional Any)
    -> (count : Optional Bits32)
    -> JSIO IDBRequest
  getAll' a b c = primJS $ IDBIndex.prim__getAll a (toFFI b) (toFFI c)

  export
  getAll : (obj : IDBIndex) -> JSIO IDBRequest
  getAll a = primJS $ IDBIndex.prim__getAll a undef undef


  export
  getAllKeys' :
       (obj : IDBIndex)
    -> (query : Optional Any)
    -> (count : Optional Bits32)
    -> JSIO IDBRequest
  getAllKeys' a b c = primJS $ IDBIndex.prim__getAllKeys a (toFFI b) (toFFI c)

  export
  getAllKeys : (obj : IDBIndex) -> JSIO IDBRequest
  getAllKeys a = primJS $ IDBIndex.prim__getAllKeys a undef undef


  export
  get : (obj : IDBIndex) -> (query : Any) -> JSIO IDBRequest
  get a b = primJS $ IDBIndex.prim__get a (toFFI b)


  export
  getKey : (obj : IDBIndex) -> (query : Any) -> JSIO IDBRequest
  getKey a b = primJS $ IDBIndex.prim__getKey a (toFFI b)


  export
  openCursor' :
       (obj : IDBIndex)
    -> (query : Optional Any)
    -> (direction : Optional IDBCursorDirection)
    -> JSIO IDBRequest
  openCursor' a b c = primJS $ IDBIndex.prim__openCursor a (toFFI b) (toFFI c)

  export
  openCursor : (obj : IDBIndex) -> JSIO IDBRequest
  openCursor a = primJS $ IDBIndex.prim__openCursor a undef undef


  export
  openKeyCursor' :
       (obj : IDBIndex)
    -> (query : Optional Any)
    -> (direction : Optional IDBCursorDirection)
    -> JSIO IDBRequest
  openKeyCursor' a b c = primJS $
    IDBIndex.prim__openKeyCursor a (toFFI b) (toFFI c)

  export
  openKeyCursor : (obj : IDBIndex) -> JSIO IDBRequest
  openKeyCursor a = primJS $ IDBIndex.prim__openKeyCursor a undef undef



namespace IDBKeyRange

  export
  bound' :
       (lower : Any)
    -> (upper : Any)
    -> (lowerOpen : Optional Bool)
    -> (upperOpen : Optional Bool)
    -> JSIO IDBKeyRange
  bound' a b c d = primJS $
    IDBKeyRange.prim__bound (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  bound : (lower : Any) -> (upper : Any) -> JSIO IDBKeyRange
  bound a b = primJS $ IDBKeyRange.prim__bound (toFFI a) (toFFI b) undef undef


  export
  lowerBound' : (lower : Any) -> (open_ : Optional Bool) -> JSIO IDBKeyRange
  lowerBound' a b = primJS $ IDBKeyRange.prim__lowerBound (toFFI a) (toFFI b)

  export
  lowerBound : (lower : Any) -> JSIO IDBKeyRange
  lowerBound a = primJS $ IDBKeyRange.prim__lowerBound (toFFI a) undef


  export
  only : (value : Any) -> JSIO IDBKeyRange
  only a = primJS $ IDBKeyRange.prim__only (toFFI a)


  export
  upperBound' : (upper : Any) -> (open_ : Optional Bool) -> JSIO IDBKeyRange
  upperBound' a b = primJS $ IDBKeyRange.prim__upperBound (toFFI a) (toFFI b)

  export
  upperBound : (upper : Any) -> JSIO IDBKeyRange
  upperBound a = primJS $ IDBKeyRange.prim__upperBound (toFFI a) undef


  export
  lower : (obj : IDBKeyRange) -> JSIO Any
  lower a = tryJS "IDBKeyRange.lower" $ IDBKeyRange.prim__lower a


  export
  lowerOpen : (obj : IDBKeyRange) -> JSIO Bool
  lowerOpen a = tryJS "IDBKeyRange.lowerOpen" $ IDBKeyRange.prim__lowerOpen a


  export
  upper : (obj : IDBKeyRange) -> JSIO Any
  upper a = tryJS "IDBKeyRange.upper" $ IDBKeyRange.prim__upper a


  export
  upperOpen : (obj : IDBKeyRange) -> JSIO Bool
  upperOpen a = tryJS "IDBKeyRange.upperOpen" $ IDBKeyRange.prim__upperOpen a


  export
  includes : (obj : IDBKeyRange) -> (key : Any) -> JSIO Bool
  includes a b = tryJS "IDBKeyRange.includes" $
    IDBKeyRange.prim__includes a (toFFI b)



namespace IDBObjectStore

  export
  autoIncrement : (obj : IDBObjectStore) -> JSIO Bool
  autoIncrement a = tryJS "IDBObjectStore.autoIncrement" $
    IDBObjectStore.prim__autoIncrement a


  export
  indexNames : (obj : IDBObjectStore) -> JSIO DOMStringList
  indexNames a = primJS $ IDBObjectStore.prim__indexNames a


  export
  keyPath : (obj : IDBObjectStore) -> JSIO Any
  keyPath a = tryJS "IDBObjectStore.keyPath" $ IDBObjectStore.prim__keyPath a


  export
  name : IDBObjectStore -> Attribute True Prelude.id String
  name v = fromPrim "IDBObjectStore.getname" prim__name prim__setName v


  export
  transaction : (obj : IDBObjectStore) -> JSIO IDBTransaction
  transaction a = primJS $ IDBObjectStore.prim__transaction a


  export
  add' :
       (obj : IDBObjectStore)
    -> (value : Any)
    -> (key : Optional Any)
    -> JSIO IDBRequest
  add' a b c = primJS $ IDBObjectStore.prim__add a (toFFI b) (toFFI c)

  export
  add : (obj : IDBObjectStore) -> (value : Any) -> JSIO IDBRequest
  add a b = primJS $ IDBObjectStore.prim__add a (toFFI b) undef


  export
  clear : (obj : IDBObjectStore) -> JSIO IDBRequest
  clear a = primJS $ IDBObjectStore.prim__clear a


  export
  count' : (obj : IDBObjectStore) -> (query : Optional Any) -> JSIO IDBRequest
  count' a b = primJS $ IDBObjectStore.prim__count a (toFFI b)

  export
  count : (obj : IDBObjectStore) -> JSIO IDBRequest
  count a = primJS $ IDBObjectStore.prim__count a undef


  export
  createIndex' :
       {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem IDBIndexParameters (Types t4)}
    -> (obj : IDBObjectStore)
    -> (name : String)
    -> (keyPath : HSum [String, Array String])
    -> (options : Optional t4)
    -> JSIO IDBIndex
  createIndex' a b c d = primJS $
    IDBObjectStore.prim__createIndex a b (toFFI c) (optUp d)

  export
  createIndex :
       (obj : IDBObjectStore)
    -> (name : String)
    -> (keyPath : HSum [String, Array String])
    -> JSIO IDBIndex
  createIndex a b c = primJS $
    IDBObjectStore.prim__createIndex a b (toFFI c) undef


  export
  delete : (obj : IDBObjectStore) -> (query : Any) -> JSIO IDBRequest
  delete a b = primJS $ IDBObjectStore.prim__delete a (toFFI b)


  export
  deleteIndex : (obj : IDBObjectStore) -> (name : String) -> JSIO ()
  deleteIndex a b = primJS $ IDBObjectStore.prim__deleteIndex a b


  export
  getAll' :
       (obj : IDBObjectStore)
    -> (query : Optional Any)
    -> (count : Optional Bits32)
    -> JSIO IDBRequest
  getAll' a b c = primJS $ IDBObjectStore.prim__getAll a (toFFI b) (toFFI c)

  export
  getAll : (obj : IDBObjectStore) -> JSIO IDBRequest
  getAll a = primJS $ IDBObjectStore.prim__getAll a undef undef


  export
  getAllKeys' :
       (obj : IDBObjectStore)
    -> (query : Optional Any)
    -> (count : Optional Bits32)
    -> JSIO IDBRequest
  getAllKeys' a b c = primJS $
    IDBObjectStore.prim__getAllKeys a (toFFI b) (toFFI c)

  export
  getAllKeys : (obj : IDBObjectStore) -> JSIO IDBRequest
  getAllKeys a = primJS $ IDBObjectStore.prim__getAllKeys a undef undef


  export
  get : (obj : IDBObjectStore) -> (query : Any) -> JSIO IDBRequest
  get a b = primJS $ IDBObjectStore.prim__get a (toFFI b)


  export
  getKey : (obj : IDBObjectStore) -> (query : Any) -> JSIO IDBRequest
  getKey a b = primJS $ IDBObjectStore.prim__getKey a (toFFI b)


  export
  index : (obj : IDBObjectStore) -> (name : String) -> JSIO IDBIndex
  index a b = primJS $ IDBObjectStore.prim__index a b


  export
  openCursor' :
       (obj : IDBObjectStore)
    -> (query : Optional Any)
    -> (direction : Optional IDBCursorDirection)
    -> JSIO IDBRequest
  openCursor' a b c = primJS $
    IDBObjectStore.prim__openCursor a (toFFI b) (toFFI c)

  export
  openCursor : (obj : IDBObjectStore) -> JSIO IDBRequest
  openCursor a = primJS $ IDBObjectStore.prim__openCursor a undef undef


  export
  openKeyCursor' :
       (obj : IDBObjectStore)
    -> (query : Optional Any)
    -> (direction : Optional IDBCursorDirection)
    -> JSIO IDBRequest
  openKeyCursor' a b c = primJS $
    IDBObjectStore.prim__openKeyCursor a (toFFI b) (toFFI c)

  export
  openKeyCursor : (obj : IDBObjectStore) -> JSIO IDBRequest
  openKeyCursor a = primJS $ IDBObjectStore.prim__openKeyCursor a undef undef


  export
  put' :
       (obj : IDBObjectStore)
    -> (value : Any)
    -> (key : Optional Any)
    -> JSIO IDBRequest
  put' a b c = primJS $ IDBObjectStore.prim__put a (toFFI b) (toFFI c)

  export
  put : (obj : IDBObjectStore) -> (value : Any) -> JSIO IDBRequest
  put a b = primJS $ IDBObjectStore.prim__put a (toFFI b) undef



namespace IDBOpenDBRequest

  export
  onblocked : IDBOpenDBRequest -> Attribute False Maybe EventHandlerNonNull
  onblocked v = fromNullablePrim
                  "IDBOpenDBRequest.getonblocked"
                  prim__onblocked
                  prim__setOnblocked
                  v


  export
  onupgradeneeded :
       IDBOpenDBRequest
    -> Attribute False Maybe EventHandlerNonNull
  onupgradeneeded v = fromNullablePrim
                        "IDBOpenDBRequest.getonupgradeneeded"
                        prim__onupgradeneeded
                        prim__setOnupgradeneeded
                        v



namespace IDBRequest

  export
  error :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBRequest (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe DOMException)
  error a = tryJS "IDBRequest.error" $ IDBRequest.prim__error (up a)


  export
  onerror :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBRequest (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "IDBRequest.getonerror"
                prim__onerror
                prim__setOnerror
                (v :> IDBRequest)


  export
  onsuccess :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBRequest (Types t)}
    -> t
    -> Attribute False Maybe EventHandlerNonNull
  onsuccess v = fromNullablePrim
                  "IDBRequest.getonsuccess"
                  prim__onsuccess
                  prim__setOnsuccess
                  (v :> IDBRequest)


  export
  readyState :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBRequest (Types t1)}
    -> (obj : t1)
    -> JSIO IDBRequestReadyState
  readyState a = tryJS "IDBRequest.readyState" $
    IDBRequest.prim__readyState (up a)


  export
  result :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBRequest (Types t1)}
    -> (obj : t1)
    -> JSIO Any
  result a = tryJS "IDBRequest.result" $ IDBRequest.prim__result (up a)


  export
  source :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBRequest (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe (HSum [IDBObjectStore, IDBIndex, IDBCursor]))
  source a = tryJS "IDBRequest.source" $ IDBRequest.prim__source (up a)


  export
  transaction :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBRequest (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe IDBTransaction)
  transaction a = tryJS "IDBRequest.transaction" $
    IDBRequest.prim__transaction (up a)



namespace IDBTransaction

  export
  db : (obj : IDBTransaction) -> JSIO IDBDatabase
  db a = primJS $ IDBTransaction.prim__db a


  export
  durability : (obj : IDBTransaction) -> JSIO IDBTransactionDurability
  durability a = tryJS "IDBTransaction.durability" $
    IDBTransaction.prim__durability a


  export
  error : (obj : IDBTransaction) -> JSIO (Maybe DOMException)
  error a = tryJS "IDBTransaction.error" $ IDBTransaction.prim__error a


  export
  mode : (obj : IDBTransaction) -> JSIO IDBTransactionMode
  mode a = tryJS "IDBTransaction.mode" $ IDBTransaction.prim__mode a


  export
  objectStoreNames : (obj : IDBTransaction) -> JSIO DOMStringList
  objectStoreNames a = primJS $ IDBTransaction.prim__objectStoreNames a


  export
  onabort : IDBTransaction -> Attribute False Maybe EventHandlerNonNull
  onabort v = fromNullablePrim
                "IDBTransaction.getonabort"
                prim__onabort
                prim__setOnabort
                v


  export
  oncomplete : IDBTransaction -> Attribute False Maybe EventHandlerNonNull
  oncomplete v = fromNullablePrim
                   "IDBTransaction.getoncomplete"
                   prim__oncomplete
                   prim__setOncomplete
                   v


  export
  onerror : IDBTransaction -> Attribute False Maybe EventHandlerNonNull
  onerror v = fromNullablePrim
                "IDBTransaction.getonerror"
                prim__onerror
                prim__setOnerror
                v


  export
  abort : (obj : IDBTransaction) -> JSIO ()
  abort a = primJS $ IDBTransaction.prim__abort a


  export
  commit : (obj : IDBTransaction) -> JSIO ()
  commit a = primJS $ IDBTransaction.prim__commit a


  export
  objectStore : (obj : IDBTransaction) -> (name : String) -> JSIO IDBObjectStore
  objectStore a b = primJS $ IDBTransaction.prim__objectStore a b



namespace IDBVersionChangeEvent

  export
  new' :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem IDBVersionChangeEventInit (Types t2)}
    -> (type : String)
    -> (eventInitDict : Optional t2)
    -> JSIO IDBVersionChangeEvent
  new' a b = primJS $ IDBVersionChangeEvent.prim__new a (optUp b)

  export
  new : (type : String) -> JSIO IDBVersionChangeEvent
  new a = primJS $ IDBVersionChangeEvent.prim__new a undef


  export
  newVersion : (obj : IDBVersionChangeEvent) -> JSIO (Maybe JSBits64)
  newVersion a = tryJS "IDBVersionChangeEvent.newVersion" $
    IDBVersionChangeEvent.prim__newVersion a


  export
  oldVersion : (obj : IDBVersionChangeEvent) -> JSIO JSBits64
  oldVersion a = primJS $ IDBVersionChangeEvent.prim__oldVersion a





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace IDBDatabaseInfo

  export
  new' :
       (name : Optional String)
    -> (version : Optional JSBits64)
    -> JSIO IDBDatabaseInfo
  new' a b = primJS $ IDBDatabaseInfo.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO IDBDatabaseInfo
  new = primJS $ IDBDatabaseInfo.prim__new undef undef


  export
  name :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBDatabaseInfo (Types t)}
    -> t
    -> Attribute False Optional String
  name v = fromUndefOrPrimNoDefault
             "IDBDatabaseInfo.getname"
             prim__name
             prim__setName
             (v :> IDBDatabaseInfo)


  export
  version :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBDatabaseInfo (Types t)}
    -> t
    -> Attribute False Optional JSBits64
  version v = fromUndefOrPrimNoDefault
                "IDBDatabaseInfo.getversion"
                prim__version
                prim__setVersion
                (v :> IDBDatabaseInfo)



namespace IDBIndexParameters

  export
  new' :
       (unique : Optional Bool)
    -> (multiEntry : Optional Bool)
    -> JSIO IDBIndexParameters
  new' a b = primJS $ IDBIndexParameters.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO IDBIndexParameters
  new = primJS $ IDBIndexParameters.prim__new undef undef


  export
  multiEntry :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBIndexParameters (Types t)}
    -> t
    -> Attribute True Optional Bool
  multiEntry v = fromUndefOrPrim
                   "IDBIndexParameters.getmultiEntry"
                   prim__multiEntry
                   prim__setMultiEntry
                   False
                   (v :> IDBIndexParameters)


  export
  unique :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBIndexParameters (Types t)}
    -> t
    -> Attribute True Optional Bool
  unique v = fromUndefOrPrim
               "IDBIndexParameters.getunique"
               prim__unique
               prim__setUnique
               False
               (v :> IDBIndexParameters)



namespace IDBObjectStoreParameters

  export
  new' :
       (keyPath : Optional (Maybe (HSum [String, Array String])))
    -> (autoIncrement : Optional Bool)
    -> JSIO IDBObjectStoreParameters
  new' a b = primJS $ IDBObjectStoreParameters.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO IDBObjectStoreParameters
  new = primJS $ IDBObjectStoreParameters.prim__new undef undef


  export
  autoIncrement :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBObjectStoreParameters (Types t)}
    -> t
    -> Attribute True Optional Bool
  autoIncrement v = fromUndefOrPrim
                      "IDBObjectStoreParameters.getautoIncrement"
                      prim__autoIncrement
                      prim__setAutoIncrement
                      False
                      (v :> IDBObjectStoreParameters)


  export
  keyPath :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBObjectStoreParameters (Types t)}
    -> t
    -> Attribute True Optional (Maybe (Union2 String (Array String)))
  keyPath v = fromUndefOrPrim
                "IDBObjectStoreParameters.getkeyPath"
                prim__keyPath
                prim__setKeyPath
                Nothing
                (v :> IDBObjectStoreParameters)



namespace IDBTransactionOptions

  export
  new' :
       (durability : Optional IDBTransactionDurability)
    -> JSIO IDBTransactionOptions
  new' a = primJS $ IDBTransactionOptions.prim__new (toFFI a)

  export
  new : JSIO IDBTransactionOptions
  new = primJS $ IDBTransactionOptions.prim__new undef


  export
  durability :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBTransactionOptions (Types t)}
    -> t
    -> Attribute False Optional IDBTransactionDurability
  durability v = fromUndefOrPrimNoDefault
                   "IDBTransactionOptions.getdurability"
                   prim__durability
                   prim__setDurability
                   (v :> IDBTransactionOptions)



namespace IDBVersionChangeEventInit

  export
  new' :
       (oldVersion : Optional JSBits64)
    -> (newVersion : Optional (Maybe JSBits64))
    -> JSIO IDBVersionChangeEventInit
  new' a b = primJS $ IDBVersionChangeEventInit.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO IDBVersionChangeEventInit
  new = primJS $ IDBVersionChangeEventInit.prim__new undef undef


  export
  newVersion :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBVersionChangeEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe JSBits64)
  newVersion v = fromUndefOrPrim
                   "IDBVersionChangeEventInit.getnewVersion"
                   prim__newVersion
                   prim__setNewVersion
                   Nothing
                   (v :> IDBVersionChangeEventInit)


  export
  oldVersion :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem IDBVersionChangeEventInit (Types t)}
    -> t
    -> Attribute True Optional JSBits64
  oldVersion v = fromUndefOrPrim
                   "IDBVersionChangeEventInit.getoldVersion"
                   prim__oldVersion
                   prim__setOldVersion
                   0
                   (v :> IDBVersionChangeEventInit)
