module Web.Raw.StorageEvent

import JS
import Web.Types.Event
import Web.Types.Storage
import Web.Types.StorageEvent
import Web.Types.StorageEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new StorageEvent(a,b)"
prim__new : String -> UndefOr StorageEventInit -> PrimIO StorageEvent


export
%foreign "browser:lambda:x=>x.key"
prim__key : StorageEvent -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.newValue"
prim__newValue : StorageEvent -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.oldValue"
prim__oldValue : StorageEvent -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.storageArea"
prim__storageArea : StorageEvent -> PrimIO (Nullable Storage)


export
%foreign "browser:lambda:x=>x.url"
prim__url : StorageEvent -> PrimIO String


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.initStorageEvent(a,b,c,d,e,f,g,h)"
prim__initStorageEvent :
     StorageEvent
  -> String
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr (Nullable String)
  -> UndefOr (Nullable String)
  -> UndefOr (Nullable String)
  -> UndefOr String
  -> UndefOr (Nullable Storage)
  -> PrimIO ()


export
new' :
     {auto _ : Cast t2 StorageEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO StorageEvent
new' a b = primJS $ StorageEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO StorageEvent
new a = primJS $ StorageEvent.prim__new a undef


export
key : (obj : StorageEvent) -> JSIO (Maybe String)
key a = tryJS "StorageEvent.key" $ StorageEvent.prim__key a


export
newValue : (obj : StorageEvent) -> JSIO (Maybe String)
newValue a = tryJS "StorageEvent.newValue" $ StorageEvent.prim__newValue a


export
oldValue : (obj : StorageEvent) -> JSIO (Maybe String)
oldValue a = tryJS "StorageEvent.oldValue" $ StorageEvent.prim__oldValue a


export
storageArea : (obj : StorageEvent) -> JSIO (Maybe Storage)
storageArea a = tryJS "StorageEvent.storageArea" $
  StorageEvent.prim__storageArea a


export
url : (obj : StorageEvent) -> JSIO String
url a = primJS $ StorageEvent.prim__url a


export
initStorageEvent' :
     (obj : StorageEvent)
  -> (type : String)
  -> (bubbles : Optional Bool)
  -> (cancelable : Optional Bool)
  -> (key : Optional (Maybe String))
  -> (oldValue : Optional (Maybe String))
  -> (newValue : Optional (Maybe String))
  -> (url : Optional String)
  -> (storageArea : Optional (Maybe Storage))
  -> JSIO ()
initStorageEvent' a b c d e f g h i = primJS $
  StorageEvent.prim__initStorageEvent
    a
    b
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)
    (toFFI h)
    (toFFI i)

export
initStorageEvent : (obj : StorageEvent) -> (type : String) -> JSIO ()
initStorageEvent a b = primJS $
  StorageEvent.prim__initStorageEvent
    a
    b
    undef
    undef
    undef
    undef
    undef
    undef
    undef

