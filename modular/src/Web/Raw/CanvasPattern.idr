module Web.Raw.CanvasPattern

import JS
import Web.Types.CanvasPattern
import Web.Types.DOMMatrix2DInit


%default total


export
%foreign "browser:lambda:(x,a)=>x.setTransform(a)"
prim__setTransform : CanvasPattern -> UndefOr DOMMatrix2DInit -> PrimIO ()


export
setTransform' :
     {auto _ : Cast t2 DOMMatrix2DInit}
  -> (obj : CanvasPattern)
  -> (transform : Optional t2)
  -> JSIO ()
setTransform' a b = primJS $ CanvasPattern.prim__setTransform a (optUp b)

export
setTransform : (obj : CanvasPattern) -> JSIO ()
setTransform a = primJS $ CanvasPattern.prim__setTransform a undef
