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
    -> JSIO (NS I [IDBObjectStore, IDBIndex])
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
  continue :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem IDBCursor (Types t1)}
    -> (obj : t1)
    -> {default Undef key : Optional Any}
    -> JSIO ()
  continue a = primJS $ IDBCursor.prim__continue (up a) (toFFI key)


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
  createObjectStore :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem IDBObjectStoreParameters (Types t3)}
    -> (obj : IDBDatabase)
    -> (name : String)
    -> {default Undef options : Optional t3}
    -> JSIO IDBObjectStore
  createObjectStore a b = primJS $
    IDBDatabase.prim__createObjectStore a b (optUp options)


  export
  deleteObjectStore : (obj : IDBDatabase) -> (name : String) -> JSIO ()
  deleteObjectStore a b = primJS $ IDBDatabase.prim__deleteObjectStore a b


  export
  transaction :
       {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem IDBTransactionOptions (Types t4)}
    -> (obj : IDBDatabase)
    -> (storeNames : NS I [String, Array String])
    -> {default Undef mode : Optional IDBTransactionMode}
    -> {default Undef options : Optional t4}
    -> JSIO IDBTransaction
  transaction a b = primJS $
    IDBDatabase.prim__transaction a (toFFI b) (toFFI mode) (optUp options)



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
  open_ :
       (obj : IDBFactory)
    -> (name : String)
    -> {default Undef version : Optional JSBits64}
    -> JSIO IDBOpenDBRequest
  open_ a b = primJS $ IDBFactory.prim__open a b (toFFI version)



namespace IDBIndex

  export
  keyPath : (obj : IDBIndex) -> JSIO Any
  keyPath a = tryJS "IDBIndex.keyPath" $ IDBIndex.prim__keyPath a


  export
  multiEntry : (obj : IDBIndex) -> JSIO Bool
  multiEntry a = tryJS "IDBIndex.multiEntry" $ IDBIndex.prim__multiEntry a


  export
  name : IDBIndex -> Attribute True I String
  name v = fromPrim "IDBIndex.getname" prim__name prim__setName v


  export
  objectStore : (obj : IDBIndex) -> JSIO IDBObjectStore
  objectStore a = primJS $ IDBIndex.prim__objectStore a


  export
  unique : (obj : IDBIndex) -> JSIO Bool
  unique a = tryJS "IDBIndex.unique" $ IDBIndex.prim__unique a


  export
  count :
       (obj : IDBIndex)
    -> {default Undef query : Optional Any}
    -> JSIO IDBRequest
  count a = primJS $ IDBIndex.prim__count a (toFFI query)


  export
  getAll :
       (obj : IDBIndex)
    -> {default Undef query : Optional Any}
    -> {default Undef count : Optional Bits32}
    -> JSIO IDBRequest
  getAll a = primJS $ IDBIndex.prim__getAll a (toFFI query) (toFFI count)


  export
  getAllKeys :
       (obj : IDBIndex)
    -> {default Undef query : Optional Any}
    -> {default Undef count : Optional Bits32}
    -> JSIO IDBRequest
  getAllKeys a = primJS $
    IDBIndex.prim__getAllKeys a (toFFI query) (toFFI count)


  export
  get : (obj : IDBIndex) -> (query : Any) -> JSIO IDBRequest
  get a b = primJS $ IDBIndex.prim__get a (toFFI b)


  export
  getKey : (obj : IDBIndex) -> (query : Any) -> JSIO IDBRequest
  getKey a b = primJS $ IDBIndex.prim__getKey a (toFFI b)


  export
  openCursor :
       (obj : IDBIndex)
    -> {default Undef query : Optional Any}
    -> {default Undef direction : Optional IDBCursorDirection}
    -> JSIO IDBRequest
  openCursor a = primJS $
    IDBIndex.prim__openCursor a (toFFI query) (toFFI direction)


  export
  openKeyCursor :
       (obj : IDBIndex)
    -> {default Undef query : Optional Any}
    -> {default Undef direction : Optional IDBCursorDirection}
    -> JSIO IDBRequest
  openKeyCursor a = primJS $
    IDBIndex.prim__openKeyCursor a (toFFI query) (toFFI direction)



namespace IDBKeyRange

  export
  bound :
       (lower : Any)
    -> (upper : Any)
    -> {default Undef lowerOpen : Optional Bool}
    -> {default Undef upperOpen : Optional Bool}
    -> JSIO IDBKeyRange
  bound a b = primJS $
    IDBKeyRange.prim__bound
      (toFFI a)
      (toFFI b)
      (toFFI lowerOpen)
      (toFFI upperOpen)


  export
  lowerBound :
       (lower : Any)
    -> {default Undef open_ : Optional Bool}
    -> JSIO IDBKeyRange
  lowerBound a = primJS $ IDBKeyRange.prim__lowerBound (toFFI a) (toFFI open_)


  export
  only : (value : Any) -> JSIO IDBKeyRange
  only a = primJS $ IDBKeyRange.prim__only (toFFI a)


  export
  upperBound :
       (upper : Any)
    -> {default Undef open_ : Optional Bool}
    -> JSIO IDBKeyRange
  upperBound a = primJS $ IDBKeyRange.prim__upperBound (toFFI a) (toFFI open_)


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
  name : IDBObjectStore -> Attribute True I String
  name v = fromPrim "IDBObjectStore.getname" prim__name prim__setName v


  export
  transaction : (obj : IDBObjectStore) -> JSIO IDBTransaction
  transaction a = primJS $ IDBObjectStore.prim__transaction a


  export
  add :
       (obj : IDBObjectStore)
    -> (value : Any)
    -> {default Undef key : Optional Any}
    -> JSIO IDBRequest
  add a b = primJS $ IDBObjectStore.prim__add a (toFFI b) (toFFI key)


  export
  clear : (obj : IDBObjectStore) -> JSIO IDBRequest
  clear a = primJS $ IDBObjectStore.prim__clear a


  export
  count :
       (obj : IDBObjectStore)
    -> {default Undef query : Optional Any}
    -> JSIO IDBRequest
  count a = primJS $ IDBObjectStore.prim__count a (toFFI query)


  export
  createIndex :
       {auto 0 _ : JSType t4}
    -> {auto 0 _ : Elem IDBIndexParameters (Types t4)}
    -> (obj : IDBObjectStore)
    -> (name : String)
    -> (keyPath : NS I [String, Array String])
    -> {default Undef options : Optional t4}
    -> JSIO IDBIndex
  createIndex a b c = primJS $
    IDBObjectStore.prim__createIndex a b (toFFI c) (optUp options)


  export
  delete : (obj : IDBObjectStore) -> (query : Any) -> JSIO IDBRequest
  delete a b = primJS $ IDBObjectStore.prim__delete a (toFFI b)


  export
  deleteIndex : (obj : IDBObjectStore) -> (name : String) -> JSIO ()
  deleteIndex a b = primJS $ IDBObjectStore.prim__deleteIndex a b


  export
  getAll :
       (obj : IDBObjectStore)
    -> {default Undef query : Optional Any}
    -> {default Undef count : Optional Bits32}
    -> JSIO IDBRequest
  getAll a = primJS $ IDBObjectStore.prim__getAll a (toFFI query) (toFFI count)


  export
  getAllKeys :
       (obj : IDBObjectStore)
    -> {default Undef query : Optional Any}
    -> {default Undef count : Optional Bits32}
    -> JSIO IDBRequest
  getAllKeys a = primJS $
    IDBObjectStore.prim__getAllKeys a (toFFI query) (toFFI count)


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
  openCursor :
       (obj : IDBObjectStore)
    -> {default Undef query : Optional Any}
    -> {default Undef direction : Optional IDBCursorDirection}
    -> JSIO IDBRequest
  openCursor a = primJS $
    IDBObjectStore.prim__openCursor a (toFFI query) (toFFI direction)


  export
  openKeyCursor :
       (obj : IDBObjectStore)
    -> {default Undef query : Optional Any}
    -> {default Undef direction : Optional IDBCursorDirection}
    -> JSIO IDBRequest
  openKeyCursor a = primJS $
    IDBObjectStore.prim__openKeyCursor a (toFFI query) (toFFI direction)


  export
  put :
       (obj : IDBObjectStore)
    -> (value : Any)
    -> {default Undef key : Optional Any}
    -> JSIO IDBRequest
  put a b = primJS $ IDBObjectStore.prim__put a (toFFI b) (toFFI key)



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
    -> JSIO (Maybe (NS I [IDBObjectStore, IDBIndex, IDBCursor]))
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
  new :
       {auto 0 _ : JSType t2}
    -> {auto 0 _ : Elem IDBVersionChangeEventInit (Types t2)}
    -> (type : String)
    -> {default Undef eventInitDict : Optional t2}
    -> JSIO IDBVersionChangeEvent
  new a = primJS $ IDBVersionChangeEvent.prim__new a (optUp eventInitDict)


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
  new :
       {default Undef name : Optional String}
    -> {default Undef version : Optional JSBits64}
    -> JSIO IDBDatabaseInfo
  new = primJS $ IDBDatabaseInfo.prim__new (toFFI name) (toFFI version)


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
  new :
       {default Undef unique : Optional Bool}
    -> {default Undef multiEntry : Optional Bool}
    -> JSIO IDBIndexParameters
  new = primJS $ IDBIndexParameters.prim__new (toFFI unique) (toFFI multiEntry)


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
  new :
       {default Undef keyPath : Optional (Maybe (NS I [String, Array String]))}
    -> {default Undef autoIncrement : Optional Bool}
    -> JSIO IDBObjectStoreParameters
  new = primJS $
    IDBObjectStoreParameters.prim__new (toFFI keyPath) (toFFI autoIncrement)


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
  new :
       {default Undef durability : Optional IDBTransactionDurability}
    -> JSIO IDBTransactionOptions
  new = primJS $ IDBTransactionOptions.prim__new (toFFI durability)


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
  new :
       {default Undef oldVersion : Optional JSBits64}
    -> {default Undef newVersion : Optional (Maybe JSBits64)}
    -> JSIO IDBVersionChangeEventInit
  new = primJS $
    IDBVersionChangeEventInit.prim__new (toFFI oldVersion) (toFFI newVersion)


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
