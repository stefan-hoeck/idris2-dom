module Web.Raw.SubmitEvent

import JS
import Web.Types.Event
import Web.Types.HTMLElement
import Web.Types.SubmitEvent
import Web.Types.SubmitEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new SubmitEvent(a,b)"
prim__new : String -> UndefOr SubmitEventInit -> PrimIO SubmitEvent


export
%foreign "browser:lambda:x=>x.submitter"
prim__submitter : SubmitEvent -> PrimIO (Nullable HTMLElement)


export
new' :
     {auto _ : Cast t2 SubmitEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO SubmitEvent
new' a b = primJS $ SubmitEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO SubmitEvent
new a = primJS $ SubmitEvent.prim__new a undef


export
submitter : (obj : SubmitEvent) -> JSIO (Maybe HTMLElement)
submitter a = tryJS "SubmitEvent.submitter" $ SubmitEvent.prim__submitter a
