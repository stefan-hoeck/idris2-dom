module Web.Raw.IDBVersionChangeEventInit

import JS
import Web.Types.EventInit
import Web.Types.IDBVersionChangeEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> ({oldVersion: a,newVersion: b})"
prim__new :
     UndefOr JSBits64
  -> UndefOr (Nullable JSBits64)
  -> PrimIO IDBVersionChangeEventInit


export
%foreign "browser:lambda:x=>x.newVersion"
prim__newVersion :
     IDBVersionChangeEventInit
  -> PrimIO (UndefOr (Nullable JSBits64))



export
%foreign "browser:lambda:(x,v)=>{x.newVersion = v}"
prim__setNewVersion :
     IDBVersionChangeEventInit
  -> UndefOr (Nullable JSBits64)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oldVersion"
prim__oldVersion : IDBVersionChangeEventInit -> PrimIO (UndefOr JSBits64)



export
%foreign "browser:lambda:(x,v)=>{x.oldVersion = v}"
prim__setOldVersion : IDBVersionChangeEventInit -> UndefOr JSBits64 -> PrimIO ()



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
     {auto _ : Cast t IDBVersionChangeEventInit}
  -> t
  -> Attribute True Optional (Maybe JSBits64)
newVersion v = fromUndefOrPrim
                 "IDBVersionChangeEventInit.getnewVersion"
                 prim__newVersion
                 prim__setNewVersion
                 Nothing
                 (cast {to = IDBVersionChangeEventInit} v)


export
oldVersion :
     {auto _ : Cast t IDBVersionChangeEventInit}
  -> t
  -> Attribute True Optional JSBits64
oldVersion v = fromUndefOrPrim
                 "IDBVersionChangeEventInit.getoldVersion"
                 prim__oldVersion
                 prim__setOldVersion
                 0
                 (cast {to = IDBVersionChangeEventInit} v)

