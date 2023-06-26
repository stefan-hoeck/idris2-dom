module Web.Raw.TransformStreamDefaultController

import JS
import Web.Types.TransformStreamDefaultController


%default total


export
%foreign "browser:lambda:x=>x.desiredSize"
prim__desiredSize : TransformStreamDefaultController -> PrimIO (Nullable Double)


export
%foreign "browser:lambda:(x,a)=>x.enqueue(a)"
prim__enqueue : TransformStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.error(a)"
prim__error : TransformStreamDefaultController -> UndefOr AnyPtr -> PrimIO ()


export
%foreign "browser:lambda:x=>x.terminate()"
prim__terminate : TransformStreamDefaultController -> PrimIO ()


export
desiredSize : (obj : TransformStreamDefaultController) -> JSIO (Maybe Double)
desiredSize a = tryJS "TransformStreamDefaultController.desiredSize" $
  TransformStreamDefaultController.prim__desiredSize a


export
enqueue' :
     (obj : TransformStreamDefaultController)
  -> (chunk : Optional Any)
  -> JSIO ()
enqueue' a b = primJS $
  TransformStreamDefaultController.prim__enqueue a (toFFI b)

export
enqueue : (obj : TransformStreamDefaultController) -> JSIO ()
enqueue a = primJS $ TransformStreamDefaultController.prim__enqueue a undef


export
error' :
     (obj : TransformStreamDefaultController)
  -> (reason : Optional Any)
  -> JSIO ()
error' a b = primJS $ TransformStreamDefaultController.prim__error a (toFFI b)

export
error : (obj : TransformStreamDefaultController) -> JSIO ()
error a = primJS $ TransformStreamDefaultController.prim__error a undef


export
terminate : (obj : TransformStreamDefaultController) -> JSIO ()
terminate a = primJS $ TransformStreamDefaultController.prim__terminate a
