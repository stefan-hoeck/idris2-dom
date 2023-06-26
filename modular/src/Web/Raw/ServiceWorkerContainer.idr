module Web.Raw.ServiceWorkerContainer

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.RegistrationOptions
import Web.Types.ServiceWorker
import Web.Types.ServiceWorkerContainer
import Web.Types.ServiceWorkerRegistration


%default total


export
%foreign "browser:lambda:x=>x.controller"
prim__controller : ServiceWorkerContainer -> PrimIO (Nullable ServiceWorker)


export
%foreign "browser:lambda:x=>x.oncontrollerchange"
prim__oncontrollerchange :
     ServiceWorkerContainer
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.oncontrollerchange = v}"
prim__setOncontrollerchange :
     ServiceWorkerContainer
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage :
     ServiceWorkerContainer
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage :
     ServiceWorkerContainer
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror :
     ServiceWorkerContainer
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     ServiceWorkerContainer
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ready"
prim__ready :
     ServiceWorkerContainer
  -> PrimIO (Promise ServiceWorkerRegistration)


export
%foreign "browser:lambda:(x,a)=>x.getRegistration(a)"
prim__getRegistration :
     ServiceWorkerContainer
  -> UndefOr String
  -> PrimIO (Promise (Union2 ServiceWorkerRegistration Undefined))


export
%foreign "browser:lambda:x=>x.getRegistrations()"
prim__getRegistrations :
     ServiceWorkerContainer
  -> PrimIO (Promise (Array ServiceWorkerRegistration))


export
%foreign "browser:lambda:(x,a,b)=>x.register(a,b)"
prim__register :
     ServiceWorkerContainer
  -> String
  -> UndefOr RegistrationOptions
  -> PrimIO (Promise ServiceWorkerRegistration)


export
%foreign "browser:lambda:x=>x.startMessages()"
prim__startMessages : ServiceWorkerContainer -> PrimIO ()


export
controller : (obj : ServiceWorkerContainer) -> JSIO (Maybe ServiceWorker)
controller a = tryJS "ServiceWorkerContainer.controller" $
  ServiceWorkerContainer.prim__controller a


export
oncontrollerchange :
     ServiceWorkerContainer
  -> Attribute False Maybe EventHandlerNonNull
oncontrollerchange v = fromNullablePrim
                         "ServiceWorkerContainer.getoncontrollerchange"
                         prim__oncontrollerchange
                         prim__setOncontrollerchange
                         v


export
onmessage : ServiceWorkerContainer -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "ServiceWorkerContainer.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror :
     ServiceWorkerContainer
  -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "ServiceWorkerContainer.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
ready :
     (obj : ServiceWorkerContainer)
  -> JSIO (Promise ServiceWorkerRegistration)
ready a = primJS $ ServiceWorkerContainer.prim__ready a


export
getRegistration' :
     (obj : ServiceWorkerContainer)
  -> (clientURL : Optional String)
  -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
getRegistration' a b = primJS $
  ServiceWorkerContainer.prim__getRegistration a (toFFI b)

export
getRegistration :
     (obj : ServiceWorkerContainer)
  -> JSIO (Promise (Union2 ServiceWorkerRegistration Undefined))
getRegistration a = primJS $
  ServiceWorkerContainer.prim__getRegistration a undef


export
getRegistrations :
     (obj : ServiceWorkerContainer)
  -> JSIO (Promise (Array ServiceWorkerRegistration))
getRegistrations a = primJS $ ServiceWorkerContainer.prim__getRegistrations a


export
register' :
     {auto _ : Cast t3 RegistrationOptions}
  -> (obj : ServiceWorkerContainer)
  -> (scriptURL : String)
  -> (options : Optional t3)
  -> JSIO (Promise ServiceWorkerRegistration)
register' a b c = primJS $ ServiceWorkerContainer.prim__register a b (optUp c)

export
register :
     (obj : ServiceWorkerContainer)
  -> (scriptURL : String)
  -> JSIO (Promise ServiceWorkerRegistration)
register a b = primJS $ ServiceWorkerContainer.prim__register a b undef


export
startMessages : (obj : ServiceWorkerContainer) -> JSIO ()
startMessages a = primJS $ ServiceWorkerContainer.prim__startMessages a
