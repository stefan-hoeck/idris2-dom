module Web.Raw.IDBFactory

import JS
import Web.Types.IDBDatabaseInfo
import Web.Types.IDBFactory
import Web.Types.IDBOpenDBRequest


%default total


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
prim__open : IDBFactory -> String -> UndefOr JSBits64 -> PrimIO IDBOpenDBRequest


export
cmp : (obj : IDBFactory) -> (first : Any) -> (second : Any) -> JSIO Int16
cmp a b c = primJS $ IDBFactory.prim__cmp a (toFFI b) (toFFI c)


export
databases : (obj : IDBFactory) -> JSIO (Promise (Array IDBDatabaseInfo))
databases a = primJS $ IDBFactory.prim__databases a


export
deleteDatabase : (obj : IDBFactory) -> (name : String) -> JSIO IDBOpenDBRequest
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

