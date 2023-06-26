module Web.Raw.IDBCursor

import JS
import Web.Types.IDBCursor
import Web.Types.IDBCursorDirection
import Web.Types.IDBIndex
import Web.Types.IDBObjectStore
import Web.Types.IDBRequest


%default total


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


export
direction :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> JSIO IDBCursorDirection
direction a = tryJS "IDBCursor.direction" $ IDBCursor.prim__direction (cast a)


export
key : {auto _ : Cast t1 IDBCursor} -> (obj : t1) -> JSIO Any
key a = tryJS "IDBCursor.key" $ IDBCursor.prim__key (cast a)


export
primaryKey : {auto _ : Cast t1 IDBCursor} -> (obj : t1) -> JSIO Any
primaryKey a = tryJS "IDBCursor.primaryKey" $
  IDBCursor.prim__primaryKey (cast a)


export
request : {auto _ : Cast t1 IDBCursor} -> (obj : t1) -> JSIO IDBRequest
request a = primJS $ IDBCursor.prim__request (cast a)


export
source :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> JSIO (HSum [IDBObjectStore, IDBIndex])
source a = tryJS "IDBCursor.source" $ IDBCursor.prim__source (cast a)


export
advance :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> (count : Bits32)
  -> JSIO ()
advance a b = primJS $ IDBCursor.prim__advance (cast a) b


export
continue' :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> (key : Optional Any)
  -> JSIO ()
continue' a b = primJS $ IDBCursor.prim__continue (cast a) (toFFI b)

export
continue : {auto _ : Cast t1 IDBCursor} -> (obj : t1) -> JSIO ()
continue a = primJS $ IDBCursor.prim__continue (cast a) undef


export
continuePrimaryKey :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> (key : Any)
  -> (primaryKey : Any)
  -> JSIO ()
continuePrimaryKey a b c = primJS $
  IDBCursor.prim__continuePrimaryKey (cast a) (toFFI b) (toFFI c)


export
delete : {auto _ : Cast t1 IDBCursor} -> (obj : t1) -> JSIO IDBRequest
delete a = primJS $ IDBCursor.prim__delete (cast a)


export
update :
     {auto _ : Cast t1 IDBCursor}
  -> (obj : t1)
  -> (value : Any)
  -> JSIO IDBRequest
update a b = primJS $ IDBCursor.prim__update (cast a) (toFFI b)

