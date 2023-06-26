module Web.Raw.StorageEventInit

import JS
import Web.Types.EventInit
import Web.Types.Storage
import Web.Types.StorageEventInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e)=> ({key: a,oldValue: b,newValue: c,url: d,storageArea: e})"
prim__new :
     UndefOr (Nullable String)
  -> UndefOr (Nullable String)
  -> UndefOr (Nullable String)
  -> UndefOr String
  -> UndefOr (Nullable Storage)
  -> PrimIO StorageEventInit


export
%foreign "browser:lambda:x=>x.key"
prim__key : StorageEventInit -> PrimIO (UndefOr (Nullable String))



export
%foreign "browser:lambda:(x,v)=>{x.key = v}"
prim__setKey : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.newValue"
prim__newValue : StorageEventInit -> PrimIO (UndefOr (Nullable String))



export
%foreign "browser:lambda:(x,v)=>{x.newValue = v}"
prim__setNewValue : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oldValue"
prim__oldValue : StorageEventInit -> PrimIO (UndefOr (Nullable String))



export
%foreign "browser:lambda:(x,v)=>{x.oldValue = v}"
prim__setOldValue : StorageEventInit -> UndefOr (Nullable String) -> PrimIO ()



export
%foreign "browser:lambda:x=>x.storageArea"
prim__storageArea : StorageEventInit -> PrimIO (UndefOr (Nullable Storage))



export
%foreign "browser:lambda:(x,v)=>{x.storageArea = v}"
prim__setStorageArea :
     StorageEventInit
  -> UndefOr (Nullable Storage)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.url"
prim__url : StorageEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.url = v}"
prim__setUrl : StorageEventInit -> UndefOr String -> PrimIO ()



export
new' :
     (key : Optional (Maybe String))
  -> (oldValue : Optional (Maybe String))
  -> (newValue : Optional (Maybe String))
  -> (url : Optional String)
  -> (storageArea : Optional (Maybe Storage))
  -> JSIO StorageEventInit
new' a b c d e = primJS $
  StorageEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
new : JSIO StorageEventInit
new = primJS $ StorageEventInit.prim__new undef undef undef undef undef


export
key :
     {auto _ : Cast t StorageEventInit}
  -> t
  -> Attribute True Optional (Maybe String)
key v = fromUndefOrPrim
          "StorageEventInit.getkey"
          prim__key
          prim__setKey
          Nothing
          (cast {to = StorageEventInit} v)


export
newValue :
     {auto _ : Cast t StorageEventInit}
  -> t
  -> Attribute True Optional (Maybe String)
newValue v = fromUndefOrPrim
               "StorageEventInit.getnewValue"
               prim__newValue
               prim__setNewValue
               Nothing
               (cast {to = StorageEventInit} v)


export
oldValue :
     {auto _ : Cast t StorageEventInit}
  -> t
  -> Attribute True Optional (Maybe String)
oldValue v = fromUndefOrPrim
               "StorageEventInit.getoldValue"
               prim__oldValue
               prim__setOldValue
               Nothing
               (cast {to = StorageEventInit} v)


export
storageArea :
     {auto _ : Cast t StorageEventInit}
  -> t
  -> Attribute True Optional (Maybe Storage)
storageArea v = fromUndefOrPrim
                  "StorageEventInit.getstorageArea"
                  prim__storageArea
                  prim__setStorageArea
                  Nothing
                  (cast {to = StorageEventInit} v)


export
url : {auto _ : Cast t StorageEventInit} -> t -> Attribute True Optional String
url v = fromUndefOrPrim
          "StorageEventInit.geturl"
          prim__url
          prim__setUrl
          ""
          (cast {to = StorageEventInit} v)
