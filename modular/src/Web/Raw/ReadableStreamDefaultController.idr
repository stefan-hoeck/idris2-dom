module Web.Raw.ReadableStreamDefaultController

import JS
import Web.Types.ReadableStreamDefaultController


%default total


export
%foreign "browser:lambda:x=>x.desiredSize"
prim__desiredSize : ReadableStreamDefaultController -> PrimIO (Nullable Double)


export
%foreign "browser:lambda:x=>x.close()"
prim__close : ReadableStreamDefaultController -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.enqueue(a)"
prim__enqueue : ReadableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.error(a)"
prim__error : ReadableStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()


export
desiredSize : (obj : ReadableStreamDefaultController) -> JSIO (Maybe Double)
desiredSize a = tryJS "ReadableStreamDefaultController.desiredSize" $
  ReadableStreamDefaultController.prim__desiredSize a


export
close : (obj : ReadableStreamDefaultController) -> JSIO ()
close a = primJS $ ReadableStreamDefaultController.prim__close a


export
enqueue' :
     (obj : ReadableStreamDefaultController)
  -> (chunk : Optional Any)
  -> JSIO ()
enqueue' a b = primJS $
  ReadableStreamDefaultController.prim__enqueue a (toFFI b)

export
enqueue : (obj : ReadableStreamDefaultController) -> JSIO ()
enqueue a = primJS $ ReadableStreamDefaultController.prim__enqueue a undef


export
error' :
     (obj : ReadableStreamDefaultController)
  -> (e : Optional Any)
  -> JSIO ()
error' a b = primJS $ ReadableStreamDefaultController.prim__error a (toFFI b)

export
error : (obj : ReadableStreamDefaultController) -> JSIO ()
error a = primJS $ ReadableStreamDefaultController.prim__error a undef
