module Web.Raw.MessagePort

import JS
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget
import Web.Types.MessagePort
import Web.Types.PostMessageOptions


%default total


export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : MessagePort -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage : MessagePort -> Nullable EventHandlerNonNull -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror : MessagePort -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     MessagePort
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.close()"
prim__close : MessagePort -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage : MessagePort -> AnyPtr -> Array Object -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.postMessage(a,b)"
prim__postMessage1 :
     MessagePort
  -> AnyPtr
  -> UndefOr PostMessageOptions
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.start()"
prim__start : MessagePort -> PrimIO ()


export
onmessage : MessagePort -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "MessagePort.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror : MessagePort -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "MessagePort.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
close : (obj : MessagePort) -> JSIO ()
close a = primJS $ MessagePort.prim__close a


export
postMessage :
     (obj : MessagePort)
  -> (message : Any)
  -> (transfer : Array Object)
  -> JSIO ()
postMessage a b c = primJS $ MessagePort.prim__postMessage a (toFFI b) c


export
postMessage1' :
     {auto _ : Cast t3 PostMessageOptions}
  -> (obj : MessagePort)
  -> (message : Any)
  -> (options : Optional t3)
  -> JSIO ()
postMessage1' a b c = primJS $
  MessagePort.prim__postMessage1 a (toFFI b) (optUp c)

export
postMessage1 : (obj : MessagePort) -> (message : Any) -> JSIO ()
postMessage1 a b = primJS $ MessagePort.prim__postMessage1 a (toFFI b) undef


export
start : (obj : MessagePort) -> JSIO ()
start a = primJS $ MessagePort.prim__start a
