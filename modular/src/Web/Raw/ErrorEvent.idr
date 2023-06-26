module Web.Raw.ErrorEvent

import JS
import Web.Types.ErrorEvent
import Web.Types.ErrorEventInit
import Web.Types.Event


%default total


export
%foreign "browser:lambda:(a,b)=> new ErrorEvent(a,b)"
prim__new : String -> UndefOr ErrorEventInit -> PrimIO ErrorEvent


export
%foreign "browser:lambda:x=>x.colno"
prim__colno : ErrorEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.error"
prim__error : ErrorEvent -> PrimIO AnyPtr


export
%foreign "browser:lambda:x=>x.filename"
prim__filename : ErrorEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.lineno"
prim__lineno : ErrorEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.message"
prim__message : ErrorEvent -> PrimIO String


export
new' :
     {auto _ : Cast t2 ErrorEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO ErrorEvent
new' a b = primJS $ ErrorEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO ErrorEvent
new a = primJS $ ErrorEvent.prim__new a undef


export
colno : (obj : ErrorEvent) -> JSIO Bits32
colno a = primJS $ ErrorEvent.prim__colno a


export
error : (obj : ErrorEvent) -> JSIO Any
error a = tryJS "ErrorEvent.error" $ ErrorEvent.prim__error a


export
filename : (obj : ErrorEvent) -> JSIO String
filename a = primJS $ ErrorEvent.prim__filename a


export
lineno : (obj : ErrorEvent) -> JSIO Bits32
lineno a = primJS $ ErrorEvent.prim__lineno a


export
message : (obj : ErrorEvent) -> JSIO String
message a = primJS $ ErrorEvent.prim__message a
