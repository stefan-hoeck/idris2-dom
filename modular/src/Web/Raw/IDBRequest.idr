module Web.Raw.IDBRequest

import JS
import Web.Types.DOMException
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.IDBCursor
import Web.Types.IDBIndex
import Web.Types.IDBObjectStore
import Web.Types.IDBRequest
import Web.Types.IDBRequestReadyState
import Web.Types.IDBTransaction


%default total


export
%foreign "browser:lambda:x=>x.error"
prim__error : IDBRequest -> PrimIO (Nullable DOMException)


export
%foreign "browser:lambda:x=>x.onerror"
prim__onerror : IDBRequest -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onerror = v}"
prim__setOnerror : IDBRequest -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onsuccess"
prim__onsuccess : IDBRequest -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onsuccess = v}"
prim__setOnsuccess : IDBRequest -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.readyState"
prim__readyState : IDBRequest -> PrimIO String


export
%foreign "browser:lambda:x=>x.result"
prim__result : IDBRequest -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.source"
prim__source :
     IDBRequest
  -> PrimIO (Nullable (Union3 IDBObjectStore IDBIndex IDBCursor))


export
%foreign "browser:lambda:x=>x.transaction"
prim__transaction : IDBRequest -> PrimIO (Nullable IDBTransaction)


export
error : {auto _ : Cast t1 IDBRequest} -> (obj : t1) -> JSIO (Maybe DOMException)
error a = tryJS "IDBRequest.error" $ IDBRequest.prim__error (cast a)


export
onerror :
     {auto _ : Cast t IDBRequest}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onerror v = fromNullablePrim
              "IDBRequest.getonerror"
              prim__onerror
              prim__setOnerror
              (cast {to = IDBRequest} v)


export
onsuccess :
     {auto _ : Cast t IDBRequest}
  -> t
  -> Attribute False Maybe EventHandlerNonNull
onsuccess v = fromNullablePrim
                "IDBRequest.getonsuccess"
                prim__onsuccess
                prim__setOnsuccess
                (cast {to = IDBRequest} v)


export
readyState :
     {auto _ : Cast t1 IDBRequest}
  -> (obj : t1)
  -> JSIO IDBRequestReadyState
readyState a = tryJS "IDBRequest.readyState" $
  IDBRequest.prim__readyState (cast a)


export
result : {auto _ : Cast t1 IDBRequest} -> (obj : t1) -> JSIO Any
result a = tryJS "IDBRequest.result" $ IDBRequest.prim__result (cast a)


export
source :
     {auto _ : Cast t1 IDBRequest}
  -> (obj : t1)
  -> JSIO (Maybe (HSum [IDBObjectStore, IDBIndex, IDBCursor]))
source a = tryJS "IDBRequest.source" $ IDBRequest.prim__source (cast a)


export
transaction :
     {auto _ : Cast t1 IDBRequest}
  -> (obj : t1)
  -> JSIO (Maybe IDBTransaction)
transaction a = tryJS "IDBRequest.transaction" $
  IDBRequest.prim__transaction (cast a)
