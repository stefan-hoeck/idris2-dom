module Web.Raw.DedicatedWorkerGlobalScope

import JS
import Web.Types.DedicatedWorkerGlobalScope
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.PostMessageOptions
import Web.Types.WindowOrWorkerGlobalScope
import Web.Types.WorkerGlobalScope


%default total


export
%foreign "browser:lambda:x=>x.name"
prim__name : DedicatedWorkerGlobalScope -> PrimIO String


export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage :
     DedicatedWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage :
     DedicatedWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror :
     DedicatedWorkerGlobalScope
  -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     DedicatedWorkerGlobalScope
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.close()"
prim__close : DedicatedWorkerGlobalScope -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage :
     DedicatedWorkerGlobalScope
  -> AnyPtr
  -> Array Object
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 :
     DedicatedWorkerGlobalScope
  -> AnyPtr
  -> UndefOr PostMessageOptions
  -> PrimIO ()


export
name : (obj : DedicatedWorkerGlobalScope) -> JSIO String
name a = primJS $ DedicatedWorkerGlobalScope.prim__name a


export
onmessage :
     DedicatedWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "DedicatedWorkerGlobalScope.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror :
     DedicatedWorkerGlobalScope
  -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "DedicatedWorkerGlobalScope.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
close : (obj : DedicatedWorkerGlobalScope) -> JSIO ()
close a = primJS $ DedicatedWorkerGlobalScope.prim__close a


export
postMessage :
     (obj : DedicatedWorkerGlobalScope)
  -> (message : Any)
  -> (transfer : Array Object)
  -> JSIO ()
postMessage a b c = primJS $
  DedicatedWorkerGlobalScope.prim__postMessage a (toFFI b) c


export
postMessage1' :
     {auto _ : Cast t3 PostMessageOptions}
  -> (obj : DedicatedWorkerGlobalScope)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $
  DedicatedWorkerGlobalScope.prim__postMessage1 a (toFFI b) (optUp c)

export
postMessage1 : (obj : DedicatedWorkerGlobalScope) -> (message : Any) -> JSIO ()
postMessage1 a b = primJS $
  DedicatedWorkerGlobalScope.prim__postMessage1 a (toFFI b) undef

