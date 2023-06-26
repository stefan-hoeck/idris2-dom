module Web.Raw.SVGTransform

import JS
import Web.Types.DOMMatrix
import Web.Types.DOMMatrix2DInit
import Web.Types.SVGTransform


%default total


export
SVG_TRANSFORM_MATRIX : Bits16
SVG_TRANSFORM_MATRIX = 1


export
SVG_TRANSFORM_ROTATE : Bits16
SVG_TRANSFORM_ROTATE = 4


export
SVG_TRANSFORM_SCALE : Bits16
SVG_TRANSFORM_SCALE = 3


export
SVG_TRANSFORM_SKEWX : Bits16
SVG_TRANSFORM_SKEWX = 5


export
SVG_TRANSFORM_SKEWY : Bits16
SVG_TRANSFORM_SKEWY = 6


export
SVG_TRANSFORM_TRANSLATE : Bits16
SVG_TRANSFORM_TRANSLATE = 2


export
SVG_TRANSFORM_UNKNOWN : Bits16
SVG_TRANSFORM_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.angle"
prim__angle : SVGTransform -> PrimIO Double


export
%foreign "browser:lambda:x=>x.matrix"
prim__matrix : SVGTransform -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.type"
prim__type : SVGTransform -> PrimIO Bits16


export
%foreign "browser:lambda:(x,a)=>x.setMatrix(a)"
prim__setMatrix : SVGTransform -> UndefOr DOMMatrix2DInit -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.setRotate(a,b,c)"
prim__setRotate : SVGTransform -> Double -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setScale(a,b)"
prim__setScale : SVGTransform -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setSkewX(a)"
prim__setSkewX : SVGTransform -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setSkewY(a)"
prim__setSkewY : SVGTransform -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.setTranslate(a,b)"
prim__setTranslate : SVGTransform -> Double -> Double -> PrimIO ()


export
angle : (obj : SVGTransform) -> JSIO Double
angle a = primJS $ SVGTransform.prim__angle a


export
matrix : (obj : SVGTransform) -> JSIO DOMMatrix
matrix a = primJS $ SVGTransform.prim__matrix a


export
type : (obj : SVGTransform) -> JSIO Bits16
type a = primJS $ SVGTransform.prim__type a


export
setMatrix' :
     {auto _ : Cast t2 DOMMatrix2DInit}
  -> (obj : SVGTransform)
  -> (matrix : Optional t2)
  -> JSIO ()
setMatrix' a b = primJS $ SVGTransform.prim__setMatrix a (optUp b)

export
setMatrix : (obj : SVGTransform) -> JSIO ()
setMatrix a = primJS $ SVGTransform.prim__setMatrix a undef


export
setRotate :
     (obj : SVGTransform)
  -> (angle : Double)
  -> (cx : Double)
  -> (cy : Double)
  -> JSIO ()
setRotate a b c d = primJS $ SVGTransform.prim__setRotate a b c d


export
setScale : (obj : SVGTransform) -> (sx : Double) -> (sy : Double) -> JSIO ()
setScale a b c = primJS $ SVGTransform.prim__setScale a b c


export
setSkewX : (obj : SVGTransform) -> (angle : Double) -> JSIO ()
setSkewX a b = primJS $ SVGTransform.prim__setSkewX a b


export
setSkewY : (obj : SVGTransform) -> (angle : Double) -> JSIO ()
setSkewY a b = primJS $ SVGTransform.prim__setSkewY a b


export
setTranslate : (obj : SVGTransform) -> (tx : Double) -> (ty : Double) -> JSIO ()
setTranslate a b c = primJS $ SVGTransform.prim__setTranslate a b c
