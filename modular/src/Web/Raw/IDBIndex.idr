module Web.Raw.IDBIndex

import JS
import Web.Types.IDBCursorDirection
import Web.Types.IDBIndex
import Web.Types.IDBObjectStore
import Web.Types.IDBRequest


%default total


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
prim__getAll : IDBIndex -> UndefOr AnyPtr -> UndefOr Bits32 -> PrimIO IDBRequest


export
%foreign "browser:lambda:(x,a,b)=>x.getAllKeys(a,b)"
prim__getAllKeys :
     IDBIndex
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
prim__openCursor :
     IDBIndex
  -> UndefOr AnyPtr
  -> UndefOr String
  -> PrimIO IDBRequest


export
%foreign "browser:lambda:(x,a,b)=>x.openKeyCursor(a,b)"
prim__openKeyCursor :
     IDBIndex
  -> UndefOr AnyPtr
  -> UndefOr String
  -> PrimIO IDBRequest


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

