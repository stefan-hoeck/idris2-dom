module Web.Raw.SharedWorkerGlobalScope

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.SharedWorkerGlobalScope
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : SharedWorkerGlobalScope -> PrimIO String


export
%foreign "browser:lambda:x=>x.onconnect"
prim__onconnect :
     SharedWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onconnect = v}"
prim__setOnconnect :
     SharedWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.close()"
prim__close : SharedWorkerGlobalScope -> PrimIO ()


export
name : (obj : SharedWorkerGlobalScope) -> JSIO String
name a = primJS $ SharedWorkerGlobalScope.prim__name a


export
onconnect : SharedWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
onconnect v = fromNullablePrim
                "SharedWorkerGlobalScope.getonconnect"
                prim__onconnect
                prim__setOnconnect
                v


export
close : (obj : SharedWorkerGlobalScope) -> JSIO ()
close a = primJS $ SharedWorkerGlobalScope.prim__close a

