module Web.Raw.FormDataEvent

import JS
import Web.Types.Event
import Web.Types.FormData
import Web.Types.FormDataEvent
import Web.Types.FormDataEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new FormDataEvent(a,b)"
prim__new : String -> FormDataEventInit -> PrimIO FormDataEvent


export
%foreign "browser:lambda:x=>x.formData"
prim__formData : FormDataEvent -> PrimIO FormData


export
new :
     {auto _ : Cast t2 FormDataEventInit}
  -> (type : String)
  -> (eventInitDict : t2)
  -> JSIO FormDataEvent
new a b = primJS $ FormDataEvent.prim__new a (cast b)


export
formData : (obj : FormDataEvent) -> JSIO FormData
formData a = primJS $ FormDataEvent.prim__formData a

