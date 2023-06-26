module Web.Raw.Path2D

import JS
import Web.Types.CanvasPath
import Web.Types.DOMMatrix2DInit
import Web.Types.Path2D


%default total


export
%foreign "browser:lambda:(a)=> new Path2D(a)"
prim__new : UndefOr (Union2 Path2D String) -> PrimIO Path2D


export
%foreign "browser:lambda:(x,a,b)=>x.addPath(a,b)"
prim__addPath : Path2D -> Path2D -> UndefOr DOMMatrix2DInit -> PrimIO ()


export
new' : (path : Optional (HSum [Path2D, String])) -> JSIO Path2D
new' a = primJS $ Path2D.prim__new (toFFI a)

export
new : JSIO Path2D
new = primJS $ Path2D.prim__new undef


export
addPath' :
     {auto _ : Cast t3 DOMMatrix2DInit}
  -> (obj : Path2D)
  -> (path : Path2D)
  -> (transform : Optional t3)
  -> JSIO ()
addPath' a b c = primJS $ Path2D.prim__addPath a b (optUp c)

export
addPath : (obj : Path2D) -> (path : Path2D) -> JSIO ()
addPath a b = primJS $ Path2D.prim__addPath a b undef

