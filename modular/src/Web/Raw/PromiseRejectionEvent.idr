module Web.Raw.PromiseRejectionEvent

import JS
import Web.Types.Event
import Web.Types.PromiseRejectionEvent
import Web.Types.PromiseRejectionEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new PromiseRejectionEvent(a,b)"
prim__new : String -> PromiseRejectionEventInit -> PrimIO PromiseRejectionEvent


export
%foreign "browser:lambda:x=>x.promise"
prim__promise : PromiseRejectionEvent -> PrimIO (Promise AnyPtr)


export
%foreign "browser:lambda:x=>x.reason"
prim__reason : PromiseRejectionEvent -> PrimIO AnyPtr


export
new :
     {auto _ : Cast t2 PromiseRejectionEventInit}
  -> (type : String)
  -> (eventInitDict : t2)
  -> JSIO PromiseRejectionEvent
new a b = primJS $ PromiseRejectionEvent.prim__new a (cast b)


export
promise : (obj : PromiseRejectionEvent) -> JSIO (Promise AnyPtr)
promise a = primJS $ PromiseRejectionEvent.prim__promise a


export
reason : (obj : PromiseRejectionEvent) -> JSIO Any
reason a = tryJS "PromiseRejectionEvent.reason" $
  PromiseRejectionEvent.prim__reason a
