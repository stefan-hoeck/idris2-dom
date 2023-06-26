module Web.Raw.WritableStreamDefaultController

import JS
import Web.Types.WritableStreamDefaultController


%default total


export
%foreign "browser:lambda:(x,a)=>x.error(a)"
prim__error : WritableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()


export
error' :
     (obj : WritableStreamDefaultController)
  -> (e : Optional Any)
  -> JSIO ()
error' a b = primJS $ WritableStreamDefaultController.prim__error a (toFFI b)

export
error : (obj : WritableStreamDefaultController) -> JSIO ()
error a = primJS $ WritableStreamDefaultController.prim__error a undef
