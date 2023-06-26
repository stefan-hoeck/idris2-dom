module Web.Raw.PopStateEvent

import JS
import Web.Types.Event
import Web.Types.PopStateEvent
import Web.Types.PopStateEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new PopStateEvent(a,b)"
prim__new : String -> UndefOr PopStateEventInit -> PrimIO PopStateEvent


export
%foreign "browser:lambda:x=>x.state"
prim__state : PopStateEvent -> PrimIO AnyPtr


export
new' :
     {auto _ : Cast t2 PopStateEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO PopStateEvent
new' a b = primJS $ PopStateEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO PopStateEvent
new a = primJS $ PopStateEvent.prim__new a undef


export
state : (obj : PopStateEvent) -> JSIO Any
state a = tryJS "PopStateEvent.state" $ PopStateEvent.prim__state a

