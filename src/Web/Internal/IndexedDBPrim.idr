module Web.Internal.IndexedDBPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace IDBCursor

  export
  %foreign "browser:lambda:x=>x.direction"
  prim__direction : IDBCursor -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.key"
  prim__key : IDBCursor -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.primaryKey"
  prim__primaryKey : IDBCursor -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.request"
  prim__request : IDBCursor -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:x=>x.source"
  prim__source : IDBCursor -> PrimIO (Union2 IDBObjectStore IDBIndex)

  export
  %foreign "browser:lambda:(x,a)=>x.advance(a)"
  prim__advance : IDBCursor -> Bits32 -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.continue(a)"
  prim__continue : IDBCursor -> UndefOr AnyPtr -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.continuePrimaryKey(a,b)"
  prim__continuePrimaryKey : IDBCursor -> AnyPtr -> AnyPtr -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.delete()"
  prim__delete : IDBCursor -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.update(a)"
  prim__update : IDBCursor -> AnyPtr -> PrimIO IDBRequest


namespace IDBCursorWithValue

  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : IDBCursorWithValue -> PrimIO AnyPtr


namespace IDBDatabase

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : IDBDatabase -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.objectStoreNames"
  prim__objectStoreNames : IDBDatabase -> PrimIO DOMStringList

  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onclose"
  prim__onclose : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onclose = v}"
  prim__setOnclose : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : IDBDatabase -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onversionchange"
  prim__onversionchange : IDBDatabase -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onversionchange = v}"
  prim__setOnversionchange :  IDBDatabase
                           -> Nullable EventHandlerNonNull
                           -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.version"
  prim__version : IDBDatabase -> PrimIO JSBits64

  export
  %foreign "browser:lambda:x=>x.close()"
  prim__close : IDBDatabase -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.createObjectStore(a,b)"
  prim__createObjectStore :  IDBDatabase
                          -> String
                          -> UndefOr IDBObjectStoreParameters
                          -> PrimIO IDBObjectStore

  export
  %foreign "browser:lambda:(x,a)=>x.deleteObjectStore(a)"
  prim__deleteObjectStore : IDBDatabase -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.transaction(a,b,c)"
  prim__transaction :  IDBDatabase
                    -> Union2 String (Array String)
                    -> UndefOr String
                    -> UndefOr IDBTransactionOptions
                    -> PrimIO IDBTransaction


namespace IDBFactory

  export
  %foreign "browser:lambda:(x,a,b)=>x.cmp(a,b)"
  prim__cmp : IDBFactory -> AnyPtr -> AnyPtr -> PrimIO Int16

  export
  %foreign "browser:lambda:x=>x.databases()"
  prim__databases : IDBFactory -> PrimIO (Promise (Array IDBDatabaseInfo))

  export
  %foreign "browser:lambda:(x,a)=>x.deleteDatabase(a)"
  prim__deleteDatabase : IDBFactory -> String -> PrimIO IDBOpenDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.open(a,b)"
  prim__open :  IDBFactory
             -> String
             -> UndefOr JSBits64
             -> PrimIO IDBOpenDBRequest


namespace IDBIndex

  export
  %foreign "browser:lambda:x=>x.keyPath"
  prim__keyPath : IDBIndex -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.multiEntry"
  prim__multiEntry : IDBIndex -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : IDBIndex -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : IDBIndex -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.objectStore"
  prim__objectStore : IDBIndex -> PrimIO IDBObjectStore

  export
  %foreign "browser:lambda:x=>x.unique"
  prim__unique : IDBIndex -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.count(a)"
  prim__count : IDBIndex -> UndefOr AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAll(a,b)"
  prim__getAll :  IDBIndex
               -> UndefOr AnyPtr
               -> UndefOr Bits32
               -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAllKeys(a,b)"
  prim__getAllKeys :  IDBIndex
                   -> UndefOr AnyPtr
                   -> UndefOr Bits32
                   -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : IDBIndex -> AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.getKey(a)"
  prim__getKey : IDBIndex -> AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.openCursor(a,b)"
  prim__openCursor :  IDBIndex
                   -> UndefOr AnyPtr
                   -> UndefOr String
                   -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.openKeyCursor(a,b)"
  prim__openKeyCursor :  IDBIndex
                      -> UndefOr AnyPtr
                      -> UndefOr String
                      -> PrimIO IDBRequest


namespace IDBKeyRange

  export
  %foreign "browser:lambda:(a,b,c,d)=>IDBKeyRange.bound(a,b,c,d)"
  prim__bound :  AnyPtr
              -> AnyPtr
              -> UndefOr Boolean
              -> UndefOr Boolean
              -> PrimIO IDBKeyRange

  export
  %foreign "browser:lambda:(a,b)=>IDBKeyRange.lowerBound(a,b)"
  prim__lowerBound : AnyPtr -> UndefOr Boolean -> PrimIO IDBKeyRange

  export
  %foreign "browser:lambda:(a)=>IDBKeyRange.only(a)"
  prim__only : AnyPtr -> PrimIO IDBKeyRange

  export
  %foreign "browser:lambda:(a,b)=>IDBKeyRange.upperBound(a,b)"
  prim__upperBound : AnyPtr -> UndefOr Boolean -> PrimIO IDBKeyRange

  export
  %foreign "browser:lambda:x=>x.lower"
  prim__lower : IDBKeyRange -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.lowerOpen"
  prim__lowerOpen : IDBKeyRange -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.upper"
  prim__upper : IDBKeyRange -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.upperOpen"
  prim__upperOpen : IDBKeyRange -> PrimIO Boolean

  export
  %foreign "browser:lambda:(x,a)=>x.includes(a)"
  prim__includes : IDBKeyRange -> AnyPtr -> PrimIO Boolean


namespace IDBObjectStore

  export
  %foreign "browser:lambda:x=>x.autoIncrement"
  prim__autoIncrement : IDBObjectStore -> PrimIO Boolean

  export
  %foreign "browser:lambda:x=>x.indexNames"
  prim__indexNames : IDBObjectStore -> PrimIO DOMStringList

  export
  %foreign "browser:lambda:x=>x.keyPath"
  prim__keyPath : IDBObjectStore -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : IDBObjectStore -> PrimIO String


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : IDBObjectStore -> String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.transaction"
  prim__transaction : IDBObjectStore -> PrimIO IDBTransaction

  export
  %foreign "browser:lambda:(x,a,b)=>x.add(a,b)"
  prim__add : IDBObjectStore -> AnyPtr -> UndefOr AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : IDBObjectStore -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.count(a)"
  prim__count : IDBObjectStore -> UndefOr AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b,c)=>x.createIndex(a,b,c)"
  prim__createIndex :  IDBObjectStore
                    -> String
                    -> Union2 String (Array String)
                    -> UndefOr IDBIndexParameters
                    -> PrimIO IDBIndex

  export
  %foreign "browser:lambda:(x,a)=>x.delete(a)"
  prim__delete : IDBObjectStore -> AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.deleteIndex(a)"
  prim__deleteIndex : IDBObjectStore -> String -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAll(a,b)"
  prim__getAll :  IDBObjectStore
               -> UndefOr AnyPtr
               -> UndefOr Bits32
               -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.getAllKeys(a,b)"
  prim__getAllKeys :  IDBObjectStore
                   -> UndefOr AnyPtr
                   -> UndefOr Bits32
                   -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.get(a)"
  prim__get : IDBObjectStore -> AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.getKey(a)"
  prim__getKey : IDBObjectStore -> AnyPtr -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a)=>x.index(a)"
  prim__index : IDBObjectStore -> String -> PrimIO IDBIndex

  export
  %foreign "browser:lambda:(x,a,b)=>x.openCursor(a,b)"
  prim__openCursor :  IDBObjectStore
                   -> UndefOr AnyPtr
                   -> UndefOr String
                   -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.openKeyCursor(a,b)"
  prim__openKeyCursor :  IDBObjectStore
                      -> UndefOr AnyPtr
                      -> UndefOr String
                      -> PrimIO IDBRequest

  export
  %foreign "browser:lambda:(x,a,b)=>x.put(a,b)"
  prim__put : IDBObjectStore -> AnyPtr -> UndefOr AnyPtr -> PrimIO IDBRequest


namespace IDBOpenDBRequest

  export
  %foreign "browser:lambda:x=>x.onblocked"
  prim__onblocked : IDBOpenDBRequest -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onblocked = v}"
  prim__setOnblocked :  IDBOpenDBRequest
                     -> Nullable EventHandlerNonNull
                     -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onupgradeneeded"
  prim__onupgradeneeded :  IDBOpenDBRequest
                        -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onupgradeneeded = v}"
  prim__setOnupgradeneeded :  IDBOpenDBRequest
                           -> Nullable EventHandlerNonNull
                           -> PrimIO ()



namespace IDBRequest

  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : IDBRequest -> PrimIO (Nullable DOMException)

  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : IDBRequest -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : IDBRequest -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onsuccess"
  prim__onsuccess : IDBRequest -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onsuccess = v}"
  prim__setOnsuccess : IDBRequest -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.readyState"
  prim__readyState : IDBRequest -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.result"
  prim__result : IDBRequest -> PrimIO AnyPtr

  export
  %foreign "browser:lambda:x=>x.source"
  prim__source :  IDBRequest
               -> PrimIO (Nullable (Union3 IDBObjectStore IDBIndex IDBCursor))

  export
  %foreign "browser:lambda:x=>x.transaction"
  prim__transaction : IDBRequest -> PrimIO (Nullable IDBTransaction)


namespace IDBTransaction

  export
  %foreign "browser:lambda:x=>x.db"
  prim__db : IDBTransaction -> PrimIO IDBDatabase

  export
  %foreign "browser:lambda:x=>x.durability"
  prim__durability : IDBTransaction -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.error"
  prim__error : IDBTransaction -> PrimIO (Nullable DOMException)

  export
  %foreign "browser:lambda:x=>x.mode"
  prim__mode : IDBTransaction -> PrimIO String

  export
  %foreign "browser:lambda:x=>x.objectStoreNames"
  prim__objectStoreNames : IDBTransaction -> PrimIO DOMStringList

  export
  %foreign "browser:lambda:x=>x.onabort"
  prim__onabort : IDBTransaction -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onabort = v}"
  prim__setOnabort : IDBTransaction -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oncomplete"
  prim__oncomplete : IDBTransaction -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.oncomplete = v}"
  prim__setOncomplete :  IDBTransaction
                      -> Nullable EventHandlerNonNull
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.onerror"
  prim__onerror : IDBTransaction -> PrimIO (Nullable EventHandlerNonNull)


  export
  %foreign "browser:lambda:(x,v)=>{x.onerror = v}"
  prim__setOnerror : IDBTransaction -> Nullable EventHandlerNonNull -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.abort()"
  prim__abort : IDBTransaction -> PrimIO ()

  export
  %foreign "browser:lambda:x=>x.commit()"
  prim__commit : IDBTransaction -> PrimIO ()

  export
  %foreign "browser:lambda:(x,a)=>x.objectStore(a)"
  prim__objectStore : IDBTransaction -> String -> PrimIO IDBObjectStore


namespace IDBVersionChangeEvent

  export
  %foreign "browser:lambda:(a,b)=> new IDBVersionChangeEvent(a,b)"
  prim__new :  String
            -> UndefOr IDBVersionChangeEventInit
            -> PrimIO IDBVersionChangeEvent

  export
  %foreign "browser:lambda:x=>x.newVersion"
  prim__newVersion : IDBVersionChangeEvent -> PrimIO (Nullable JSBits64)

  export
  %foreign "browser:lambda:x=>x.oldVersion"
  prim__oldVersion : IDBVersionChangeEvent -> PrimIO JSBits64




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace IDBDatabaseInfo

  export
  %foreign "browser:lambda:(a,b)=> {name: a,version: b}"
  prim__new : UndefOr String -> UndefOr JSBits64 -> PrimIO IDBDatabaseInfo

  export
  %foreign "browser:lambda:x=>x.name"
  prim__name : IDBDatabaseInfo -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.name = v}"
  prim__setName : IDBDatabaseInfo -> UndefOr String -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.version"
  prim__version : IDBDatabaseInfo -> PrimIO (UndefOr JSBits64)


  export
  %foreign "browser:lambda:(x,v)=>{x.version = v}"
  prim__setVersion : IDBDatabaseInfo -> UndefOr JSBits64 -> PrimIO ()



namespace IDBIndexParameters

  export
  %foreign "browser:lambda:(a,b)=> {unique: a,multiEntry: b}"
  prim__new : UndefOr Boolean -> UndefOr Boolean -> PrimIO IDBIndexParameters

  export
  %foreign "browser:lambda:x=>x.multiEntry"
  prim__multiEntry : IDBIndexParameters -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.multiEntry = v}"
  prim__setMultiEntry : IDBIndexParameters -> UndefOr Boolean -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.unique"
  prim__unique : IDBIndexParameters -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.unique = v}"
  prim__setUnique : IDBIndexParameters -> UndefOr Boolean -> PrimIO ()



namespace IDBObjectStoreParameters

  export
  %foreign "browser:lambda:(a,b)=> {keyPath: a,autoIncrement: b}"
  prim__new :  UndefOr (Nullable (Union2 String (Array String)))
            -> UndefOr Boolean
            -> PrimIO IDBObjectStoreParameters

  export
  %foreign "browser:lambda:x=>x.autoIncrement"
  prim__autoIncrement : IDBObjectStoreParameters -> PrimIO (UndefOr Boolean)


  export
  %foreign "browser:lambda:(x,v)=>{x.autoIncrement = v}"
  prim__setAutoIncrement :  IDBObjectStoreParameters
                         -> UndefOr Boolean
                         -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.keyPath"
  prim__keyPath :  IDBObjectStoreParameters
                -> PrimIO (UndefOr (Nullable (Union2 String (Array String))))


  export
  %foreign "browser:lambda:(x,v)=>{x.keyPath = v}"
  prim__setKeyPath :  IDBObjectStoreParameters
                   -> UndefOr (Nullable (Union2 String (Array String)))
                   -> PrimIO ()



namespace IDBTransactionOptions

  export
  %foreign "browser:lambda:(a)=> {durability: a}"
  prim__new : UndefOr String -> PrimIO IDBTransactionOptions

  export
  %foreign "browser:lambda:x=>x.durability"
  prim__durability : IDBTransactionOptions -> PrimIO (UndefOr String)


  export
  %foreign "browser:lambda:(x,v)=>{x.durability = v}"
  prim__setDurability : IDBTransactionOptions -> UndefOr String -> PrimIO ()



namespace IDBVersionChangeEventInit

  export
  %foreign "browser:lambda:(a,b)=> {oldVersion: a,newVersion: b}"
  prim__new :  UndefOr JSBits64
            -> UndefOr (Nullable JSBits64)
            -> PrimIO IDBVersionChangeEventInit

  export
  %foreign "browser:lambda:x=>x.newVersion"
  prim__newVersion :  IDBVersionChangeEventInit
                   -> PrimIO (UndefOr (Nullable JSBits64))


  export
  %foreign "browser:lambda:(x,v)=>{x.newVersion = v}"
  prim__setNewVersion :  IDBVersionChangeEventInit
                      -> UndefOr (Nullable JSBits64)
                      -> PrimIO ()


  export
  %foreign "browser:lambda:x=>x.oldVersion"
  prim__oldVersion : IDBVersionChangeEventInit -> PrimIO (UndefOr JSBits64)


  export
  %foreign "browser:lambda:(x,v)=>{x.oldVersion = v}"
  prim__setOldVersion :  IDBVersionChangeEventInit
                      -> UndefOr JSBits64
                      -> PrimIO ()
