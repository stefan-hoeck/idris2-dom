module Web.Raw.CloseEvent

import JS
import Web.Types.CloseEvent
import Web.Types.CloseEventInit
import Web.Types.Event


%default total


export
%foreign "browser:lambda:(a,b)=> new CloseEvent(a,b)"
prim__new : String -> UndefOr CloseEventInit -> PrimIO CloseEvent


export
%foreign "browser:lambda:x=>x.code"
prim__code : CloseEvent -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.reason"
prim__reason : CloseEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.wasClean"
prim__wasClean : CloseEvent -> PrimIO Boolean


export
new' :
     {auto _ : Cast t2 CloseEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO CloseEvent
new' a b = primJS $ CloseEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO CloseEvent
new a = primJS $ CloseEvent.prim__new a undef


export
code : (obj : CloseEvent) -> JSIO Bits16
code a = primJS $ CloseEvent.prim__code a


export
reason : (obj : CloseEvent) -> JSIO String
reason a = primJS $ CloseEvent.prim__reason a


export
wasClean : (obj : CloseEvent) -> JSIO Bool
wasClean a = tryJS "CloseEvent.wasClean" $ CloseEvent.prim__wasClean a
