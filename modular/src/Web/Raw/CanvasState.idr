module Web.Raw.CanvasState

import JS
import Web.Types.CanvasState


%default total


export
%foreign "browser:lambda:x=>x.restore()"
prim__restore : CanvasState -> PrimIO ()


export
%foreign "browser:lambda:x=>x.save()"
prim__save : CanvasState -> PrimIO ()


export
restore : {auto _ : Cast t1 CanvasState} -> (obj : t1) -> JSIO ()
restore a = primJS $ CanvasState.prim__restore (cast a)


export
save : {auto _ : Cast t1 CanvasState} -> (obj : t1) -> JSIO ()
save a = primJS $ CanvasState.prim__save (cast a)

