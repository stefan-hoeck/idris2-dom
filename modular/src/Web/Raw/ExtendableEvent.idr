module Web.Raw.ExtendableEvent

import JS
import Web.Types.Event
import Web.Types.ExtendableEvent
import Web.Types.ExtendableEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new ExtendableEvent(a,b)"
prim__new : String -> UndefOr ExtendableEventInit -> PrimIO ExtendableEvent


export
%foreign "browser:lambda:(x,a)=>x.waitUntil(a)"
prim__waitUntil : ExtendableEvent -> Promise AnyPtr -> PrimIO ()


export
new' :
     {auto _ : Cast t2 ExtendableEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO ExtendableEvent
new' a b = primJS $ ExtendableEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO ExtendableEvent
new a = primJS $ ExtendableEvent.prim__new a undef


export
waitUntil :
     {auto _ : Cast t1 ExtendableEvent}
  -> (obj : t1)
  -> (f : Promise AnyPtr)
  -> JSIO ()
waitUntil a b = primJS $ ExtendableEvent.prim__waitUntil (cast a) b

