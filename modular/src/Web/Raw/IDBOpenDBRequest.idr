module Web.Raw.IDBOpenDBRequest

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.IDBOpenDBRequest
import Web.Types.IDBRequest


%default total


export
%foreign "browser:lambda:x=>x.onblocked"
prim__onblocked : IDBOpenDBRequest -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onblocked = v}"
prim__setOnblocked :
     IDBOpenDBRequest
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onupgradeneeded"
prim__onupgradeneeded :
     IDBOpenDBRequest
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onupgradeneeded = v}"
prim__setOnupgradeneeded :
     IDBOpenDBRequest
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
onblocked : IDBOpenDBRequest -> Attribute False Maybe EventHandlerNonNull
onblocked v = fromNullablePrim
                "IDBOpenDBRequest.getonblocked"
                prim__onblocked
                prim__setOnblocked
                v


export
onupgradeneeded : IDBOpenDBRequest -> Attribute False Maybe EventHandlerNonNull
onupgradeneeded v = fromNullablePrim
                      "IDBOpenDBRequest.getonupgradeneeded"
                      prim__onupgradeneeded
                      prim__setOnupgradeneeded
                      v
