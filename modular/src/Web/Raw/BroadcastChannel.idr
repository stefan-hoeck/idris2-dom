module Web.Raw.BroadcastChannel

import JS
import Web.Types.BroadcastChannel
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:(a)=> new BroadcastChannel(a)"
prim__new : String -> PrimIO BroadcastChannel


export
%foreign "browser:lambda:x=>x.name"
prim__name : BroadcastChannel -> PrimIO String


export
%foreign "browser:lambda:x=>x.onmessage"
prim__onmessage : BroadcastChannel -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessage = v}"
prim__setOnmessage :
     BroadcastChannel
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.onmessageerror"
prim__onmessageerror : BroadcastChannel -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onmessageerror = v}"
prim__setOnmessageerror :
     BroadcastChannel
  -> Nullable EventHandlerNonNull
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.close()"
prim__close : BroadcastChannel -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.postMessage(a)"
prim__postMessage : BroadcastChannel -> AnyPtr -> PrimIO ()


export
new : (name : String) -> JSIO BroadcastChannel
new a = primJS $ BroadcastChannel.prim__new a


export
name : (obj : BroadcastChannel) -> JSIO String
name a = primJS $ BroadcastChannel.prim__name a


export
onmessage : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
onmessage v = fromNullablePrim
                "BroadcastChannel.getonmessage"
                prim__onmessage
                prim__setOnmessage
                v


export
onmessageerror : BroadcastChannel -> Attribute False Maybe EventHandlerNonNull
onmessageerror v = fromNullablePrim
                     "BroadcastChannel.getonmessageerror"
                     prim__onmessageerror
                     prim__setOnmessageerror
                     v


export
close : (obj : BroadcastChannel) -> JSIO ()
close a = primJS $ BroadcastChannel.prim__close a


export
postMessage : (obj : BroadcastChannel) -> (message : Any) -> JSIO ()
postMessage a b = primJS $ BroadcastChannel.prim__postMessage a (toFFI b)

