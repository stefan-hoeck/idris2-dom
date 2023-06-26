module Web.Raw.PageTransitionEvent

import JS
import Web.Types.Event
import Web.Types.PageTransitionEvent
import Web.Types.PageTransitionEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new PageTransitionEvent(a,b)"
prim__new :
     String
  -> UndefOr PageTransitionEventInit
  -> PrimIO PageTransitionEvent


export
%foreign "browser:lambda:x=>x.persisted"
prim__persisted : PageTransitionEvent -> PrimIO Boolean


export
new' :
     {auto _ : Cast t2 PageTransitionEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO PageTransitionEvent
new' a b = primJS $ PageTransitionEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO PageTransitionEvent
new a = primJS $ PageTransitionEvent.prim__new a undef


export
persisted : (obj : PageTransitionEvent) -> JSIO Bool
persisted a = tryJS "PageTransitionEvent.persisted" $
  PageTransitionEvent.prim__persisted a

