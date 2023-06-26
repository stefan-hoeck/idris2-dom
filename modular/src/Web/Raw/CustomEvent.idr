module Web.Raw.CustomEvent

import JS
import Web.Types.CustomEvent
import Web.Types.CustomEventInit
import Web.Types.Event


%default total


export
%foreign "browser:lambda:(a,b)=> new CustomEvent(a,b)"
prim__new : String -> UndefOr CustomEventInit -> PrimIO CustomEvent


export
%foreign "browser:lambda:x=>x.detail"
prim__detail : CustomEvent -> PrimIO AnyPtr


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.initCustomEvent(a,b,c,d)"
prim__initCustomEvent :
     CustomEvent
  -> String
  -> UndefOr Boolean
  -> UndefOr Boolean
  -> UndefOr AnyPtr
  -> PrimIO ()


export
new' :
     {auto _ : Cast t2 CustomEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO CustomEvent
new' a b = primJS $ CustomEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO CustomEvent
new a = primJS $ CustomEvent.prim__new a undef


export
detail : (obj : CustomEvent) -> JSIO Any
detail a = tryJS "CustomEvent.detail" $ CustomEvent.prim__detail a


export
initCustomEvent' :
     (obj : CustomEvent)
  -> (type : String)
  -> (bubbles : Optional Bool)
  -> (cancelable : Optional Bool)
  -> (detail : Optional Any)
  -> JSIO ()
initCustomEvent' a b c d e = primJS $
  CustomEvent.prim__initCustomEvent a b (toFFI c) (toFFI d) (toFFI e)

export
initCustomEvent : (obj : CustomEvent) -> (type : String) -> JSIO ()
initCustomEvent a b = primJS $
  CustomEvent.prim__initCustomEvent a b undef undef undef

