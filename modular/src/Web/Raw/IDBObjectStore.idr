module Web.Raw.IDBObjectStore

import JS
import Web.Types.DOMStringList
import Web.Types.IDBCursorDirection
import Web.Types.IDBIndex
import Web.Types.IDBIndexParameters
import Web.Types.IDBObjectStore
import Web.Types.IDBRequest
import Web.Types.IDBTransaction


%default total


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
prim__createIndex :
     IDBObjectStore
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
prim__getAll :
     IDBObjectStore
  -> UndefOr AnyPtr
  -> UndefOr Bits32
  -> PrimIO IDBRequest


export
%foreign "browser:lambda:(x,a,b)=>x.getAllKeys(a,b)"
prim__getAllKeys :
     IDBObjectStore
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
prim__openCursor :
     IDBObjectStore
  -> UndefOr AnyPtr
  -> UndefOr String
  -> PrimIO IDBRequest


export
%foreign "browser:lambda:(x,a,b)=>x.openKeyCursor(a,b)"
prim__openKeyCursor :
     IDBObjectStore
  -> UndefOr AnyPtr
  -> UndefOr String
  -> PrimIO IDBRequest


export
%foreign "browser:lambda:(x,a,b)=>x.put(a,b)"
prim__put : IDBObjectStore -> AnyPtr -> UndefOr AnyPtr -> PrimIO IDBRequest


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
     {auto _ : Cast t4 IDBIndexParameters}
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

