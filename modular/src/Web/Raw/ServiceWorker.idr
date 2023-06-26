module Web.Raw.ServiceWorker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.PostMessageOptions
import Web.Types.ServiceWorker
import Web.Types.ServiceWorkerState


%default total


export
%foreign "browser:lambda:x=>x.onstatechange"
prim__onstatechange : ServiceWorker -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onstatechange = v}"
prim__setOnstatechange :
     ServiceWorker
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.scriptURL"
prim__scriptURL : ServiceWorker -> PrimIO String


export
%foreign "browser:lambda:x=>x.state"
prim__state : ServiceWorker -> PrimIO String


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage : ServiceWorker -> AnyPtr -> Array Object -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 :
     ServiceWorker
  -> AnyPtr
  -> UndefOr PostMessageOptions
  -> PrimIO ()


export
onstatechange : ServiceWorker -> Attribute False Maybe EventHandlerNonNull
onstatechange v = fromNullablePrim
                    "ServiceWorker.getonstatechange"
                    prim__onstatechange
                    prim__setOnstatechange
                    v


export
scriptURL : (obj : ServiceWorker) -> JSIO String
scriptURL a = primJS $ ServiceWorker.prim__scriptURL a


export
state : (obj : ServiceWorker) -> JSIO ServiceWorkerState
state a = tryJS "ServiceWorker.state" $ ServiceWorker.prim__state a


export
postMessage :
     (obj : ServiceWorker)
  -> (message : Any)
  -> (transfer : Array Object)
  -> JSIO ()
postMessage a b c = primJS $ ServiceWorker.prim__postMessage a (toFFI b) c


export
postMessage1' :
     {auto _ : Cast t3 PostMessageOptions}
  -> (obj : ServiceWorker)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $
  ServiceWorker.prim__postMessage1 a (toFFI b) (optUp c)

export
postMessage1 : (obj : ServiceWorker) -> (message : Any) -> JSIO ()
postMessage1 a b = primJS $ ServiceWorker.prim__postMessage1 a (toFFI b) undef
