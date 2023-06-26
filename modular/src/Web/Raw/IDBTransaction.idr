module Web.Raw.IDBTransaction

import JS
import Web.Types.DOMException
import Web.Types.DOMStringList
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.IDBDatabase
import Web.Types.IDBObjectStore
import Web.Types.IDBTransaction
import Web.Types.IDBTransactionDurability
import Web.Types.IDBTransactionMode


%default total


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
prim__setOncomplete :
     IDBTransaction
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
