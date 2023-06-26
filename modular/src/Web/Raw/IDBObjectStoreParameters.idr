module Web.Raw.IDBObjectStoreParameters

import JS
import Web.Types.IDBObjectStoreParameters


%default total


export
%foreign "browser:lambda:(a,b)=> ({keyPath: a,autoIncrement: b})"
prim__new :
     UndefOr (Nullable (Union2 String (Array String)))
  -> UndefOr Boolean
  -> PrimIO IDBObjectStoreParameters


export
%foreign "browser:lambda:x=>x.autoIncrement"
prim__autoIncrement : IDBObjectStoreParameters -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.autoIncrement = v}"
prim__setAutoIncrement :
     IDBObjectStoreParameters
  -> UndefOr Boolean
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.keyPath"
prim__keyPath :
     IDBObjectStoreParameters
  -> PrimIO (UndefOr (Nullable (Union2 String (Array String))))



export
%foreign "browser:lambda:(x,v)=>{x.keyPath = v}"
prim__setKeyPath :
     IDBObjectStoreParameters
  -> UndefOr (Nullable (Union2 String (Array String)))
  -> PrimIO ()



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
     {auto _ : Cast t IDBObjectStoreParameters}
  -> t
  -> Attribute True Optional Bool
autoIncrement v = fromUndefOrPrim
                    "IDBObjectStoreParameters.getautoIncrement"
                    prim__autoIncrement
                    prim__setAutoIncrement
                    False
                    (cast {to = IDBObjectStoreParameters} v)


export
keyPath :
     {auto _ : Cast t IDBObjectStoreParameters}
  -> t
  -> Attribute True Optional (Maybe (Union2 String (Array String)))
keyPath v = fromUndefOrPrim
              "IDBObjectStoreParameters.getkeyPath"
              prim__keyPath
              prim__setKeyPath
              Nothing
              (cast {to = IDBObjectStoreParameters} v)
