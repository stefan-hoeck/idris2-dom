module Web.Raw.HashChangeEvent

import JS
import Web.Types.Event
import Web.Types.HashChangeEvent
import Web.Types.HashChangeEventInit


%default total


export
%foreign "browser:lambda:(a,b)=> new HashChangeEvent(a,b)"
prim__new : String -> UndefOr HashChangeEventInit -> PrimIO HashChangeEvent


export
%foreign "browser:lambda:x=>x.newURL"
prim__newURL : HashChangeEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.oldURL"
prim__oldURL : HashChangeEvent -> PrimIO String


export
new' :
     {auto _ : Cast t2 HashChangeEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO HashChangeEvent
new' a b = primJS $ HashChangeEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO HashChangeEvent
new a = primJS $ HashChangeEvent.prim__new a undef


export
newURL : (obj : HashChangeEvent) -> JSIO String
newURL a = primJS $ HashChangeEvent.prim__newURL a


export
oldURL : (obj : HashChangeEvent) -> JSIO String
oldURL a = primJS $ HashChangeEvent.prim__oldURL a

