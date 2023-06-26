module Web.Raw.IDBVersionChangeEvent

import JS
import Web.Types.Event
import Web.Types.IDBVersionChangeEvent
import Web.Types.IDBVersionChangeEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new IDBVersionChangeEvent(a,b)"
prim__new :
     String
  -> UndefOr IDBVersionChangeEventInit
  -> PrimIO IDBVersionChangeEvent


export
%foreign "browser:lambda:x=>x.newVersion"
prim__newVersion : IDBVersionChangeEvent -> PrimIO (Nullable JSBits64)


export
%foreign "browser:lambda:x=>x.oldVersion"
prim__oldVersion : IDBVersionChangeEvent -> PrimIO JSBits64


export
new' :
     {auto _ : Cast t2 IDBVersionChangeEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO IDBVersionChangeEvent
new' a b = primJS $ IDBVersionChangeEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO IDBVersionChangeEvent
new a = primJS $ IDBVersionChangeEvent.prim__new a undef


export
newVersion : (obj : IDBVersionChangeEvent) -> JSIO (Maybe JSBits64)
newVersion a = tryJS "IDBVersionChangeEvent.newVersion" $
  IDBVersionChangeEvent.prim__newVersion a


export
oldVersion : (obj : IDBVersionChangeEvent) -> JSIO JSBits64
oldVersion a = primJS $ IDBVersionChangeEvent.prim__oldVersion a
