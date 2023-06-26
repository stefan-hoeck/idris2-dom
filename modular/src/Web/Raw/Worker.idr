module Web.Raw.Worker

import JS
import Web.Types.AbstractWorker
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.PostMessageOptions
import Web.Types.Worker
import Web.Types.WorkerOptions


%default total


export
%foreign "browser:lambda:(a,b)=> new Worker(a,b)"
prim__new : String -> UndefOr WorkerOptions -> PrimIO Worker


export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : Worker -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage : Worker -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror : Worker -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror : Worker -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage : Worker -> AnyPtr -> Array Object -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 : Worker -> AnyPtr -> UndefOr PostMessageOptions -> PrimIO ()


export
%foreign "browser:lambda:x=>x.terminate()"
prim__terminate : Worker -> PrimIO ()


export
new' :
     {auto _ : Cast t2 WorkerOptions}
  -> (scriptURL : String)
  -> (options : Optional t2)
  -> JSIO Worker
new' a b = primJS $ Worker.prim__new a (optUp b)

export
new : (scriptURL : String) -> JSIO Worker
new a = primJS $ Worker.prim__new a undef


export
onmessage : Worker -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "Worker.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror : Worker -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "Worker.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
postMessage :
     (obj : Worker)
  -> (message : Any)
  -> (transfer : Array Object)
  -> JSIO ()
postMessage a b c = primJS $ Worker.prim__postMessage a (toFFI b) c


export
postMessage1' :
     {auto _ : Cast t3 PostMessageOptions}
  -> (obj : Worker)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $ Worker.prim__postMessage1 a (toFFI b) (optUp c)

export
postMessage1 : (obj : Worker) -> (message : Any) -> JSIO ()
postMessage1 a b = primJS $ Worker.prim__postMessage1 a (toFFI b) undef


export
terminate : (obj : Worker) -> JSIO ()
terminate a = primJS $ Worker.prim__terminate a

