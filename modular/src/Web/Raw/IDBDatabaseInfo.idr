module Web.Raw.IDBDatabaseInfo

import JS
import Web.Types.IDBDatabaseInfo


%default total


export
%foreign "browser:lambda:(a,b)=> ({name: a,version: b})"
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
name : {auto _ : Cast t IDBDatabaseInfo} -> t -> Attribute False Optional String
name v = fromUndefOrPrimNoDefault
           "IDBDatabaseInfo.getname"
           prim__name
           prim__setName
           (cast {to = IDBDatabaseInfo} v)


export
version :
     {auto _ : Cast t IDBDatabaseInfo}
  -> t
  -> Attribute False Optional JSBits64
version v = fromUndefOrPrimNoDefault
              "IDBDatabaseInfo.getversion"
              prim__version
              prim__setVersion
              (cast {to = IDBDatabaseInfo} v)
