module Web.Raw.ServiceWorkerGlobalScope

import JS
import Web.Types.Clients
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.ServiceWorker
import Web.Types.ServiceWorkerGlobalScope
import Web.Types.ServiceWorkerRegistration
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total


export
%foreign "browser:lambda:x=>x.clients"
prim__clients : ServiceWorkerGlobalScope -> PrimIO Clients


export
%foreign "browser:lambda:x=>x.onactivate"
prim__onactivate :
     ServiceWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onactivate = v}"
prim__setOnactivate :
     ServiceWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onfetch"
prim__onfetch :
     ServiceWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onfetch = v}"
prim__setOnfetch :
     ServiceWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.oninstall"
prim__oninstall :
     ServiceWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oninstall = v}"
prim__setOninstall :
     ServiceWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage :
     ServiceWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage :
     ServiceWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror :
     ServiceWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     ServiceWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.registration"
prim__registration :
     ServiceWorkerGlobalScope
  -> PrimIO ServiceWorkerRegistration


export
%foreign "browser:lambda:x=>x.serviceWorker"
prim__serviceWorker : ServiceWorkerGlobalScope -> PrimIO ServiceWorker


export
%foreign "browser:lambda:x=>x.skipWaiting()"
prim__skipWaiting : ServiceWorkerGlobalScope -> PrimIO (Promise Undefined)


export
clients : (obj : ServiceWorkerGlobalScope) -> JSIO Clients
clients a = primJS $ ServiceWorkerGlobalScope.prim__clients a


export
onactivate :
     ServiceWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
onactivate v = fromNullablePrim
                 "ServiceWorkerGlobalScope.getonactivate"
                 prim__onactivate
                 prim__setOnactivate
                 v


export
onfetch : ServiceWorkerGlobalScope -> Attribute False Maybe EventHandlerNonNull
onfetch v = fromNullablePrim
              "ServiceWorkerGlobalScope.getonfetch"
              prim__onfetch
              prim__setOnfetch
              v


export
oninstall :
     ServiceWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
oninstall v = fromNullablePrim
                "ServiceWorkerGlobalScope.getoninstall"
                prim__oninstall
                prim__setOninstall
                v


export
onmessage :
     ServiceWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "ServiceWorkerGlobalScope.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror :
     ServiceWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "ServiceWorkerGlobalScope.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
registration :
     (obj : ServiceWorkerGlobalScope)
  -> JSIO ServiceWorkerRegistration
registration a = primJS $ ServiceWorkerGlobalScope.prim__registration a


export
serviceWorker : (obj : ServiceWorkerGlobalScope) -> JSIO ServiceWorker
serviceWorker a = primJS $ ServiceWorkerGlobalScope.prim__serviceWorker a


export
skipWaiting : (obj : ServiceWorkerGlobalScope) -> JSIO (Promise Undefined)
skipWaiting a = primJS $ ServiceWorkerGlobalScope.prim__skipWaiting a
