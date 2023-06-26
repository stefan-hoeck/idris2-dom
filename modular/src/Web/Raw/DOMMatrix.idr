module Web.Raw.DOMMatrix

import JS
import Web.Types.DOMMatrix
import Web.Types.DOMMatrixInit
import Web.Types.DOMMatrixReadOnly


%default total


export
%foreign "browser:lambda:(a)=>DOMMatrix.fromFloat32Array(a)"
prim__fromFloat32Array : Float32Array -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(a)=>DOMMatrix.fromFloat64Array(a)"
prim__fromFloat64Array : Float64Array -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(a)=>DOMMatrix.fromMatrix(a)"
prim__fromMatrix : UndefOr DOMMatrixInit -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.invertSelf()"
prim__invertSelf : DOMMatrix -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.multiplySelf(a)"
prim__multiplySelf : DOMMatrix -> UndefOr DOMMatrixInit -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.preMultiplySelf(a)"
prim__preMultiplySelf : DOMMatrix -> UndefOr DOMMatrixInit -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.rotateAxisAngleSelf(a,b,c,d)"
prim__rotateAxisAngleSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b)=>x.rotateFromVectorSelf(a,b)"
prim__rotateFromVectorSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c)=>x.rotateSelf(a,b,c)"
prim__rotateSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.scale3dSelf(a,b,c,d)"
prim__scale3dSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.scaleSelf(a,b,c,d,e,f)"
prim__scaleSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.setMatrixValue(a)"
prim__setMatrixValue : DOMMatrix -> String -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.skewXSelf(a)"
prim__skewXSelf : DOMMatrix -> UndefOr Double -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.skewYSelf(a)"
prim__skewYSelf : DOMMatrix -> UndefOr Double -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c)=>x.translateSelf(a,b,c)"
prim__translateSelf :
     DOMMatrix
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrix
fromFloat32Array a = primJS $ DOMMatrix.prim__fromFloat32Array a


export
fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrix
fromFloat64Array a = primJS $ DOMMatrix.prim__fromFloat64Array a


export
fromMatrix' :
     {auto _ : Cast t1 DOMMatrixInit}
  -> (other : Optional t1)
  -> JSIO DOMMatrix
fromMatrix' a = primJS $ DOMMatrix.prim__fromMatrix (optUp a)

export
fromMatrix : JSIO DOMMatrix
fromMatrix = primJS $ DOMMatrix.prim__fromMatrix undef


export
invertSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
invertSelf a = primJS $ DOMMatrix.prim__invertSelf a


export
multiplySelf' :
     {auto _ : Cast t2 DOMMatrixInit}
  -> (obj : DOMMatrix)
  -> (other : Optional t2)
  -> JSIO DOMMatrix
multiplySelf' a b = primJS $ DOMMatrix.prim__multiplySelf a (optUp b)

export
multiplySelf : (obj : DOMMatrix) -> JSIO DOMMatrix
multiplySelf a = primJS $ DOMMatrix.prim__multiplySelf a undef


export
preMultiplySelf' :
     {auto _ : Cast t2 DOMMatrixInit}
  -> (obj : DOMMatrix)
  -> (other : Optional t2)
  -> JSIO DOMMatrix
preMultiplySelf' a b = primJS $ DOMMatrix.prim__preMultiplySelf a (optUp b)

export
preMultiplySelf : (obj : DOMMatrix) -> JSIO DOMMatrix
preMultiplySelf a = primJS $ DOMMatrix.prim__preMultiplySelf a undef


export
rotateAxisAngleSelf' :
     (obj : DOMMatrix)
  -> (x : Optional Double)
  -> (y : Optional Double)
  -> (z : Optional Double)
  -> (angle : Optional Double)
  -> JSIO DOMMatrix
rotateAxisAngleSelf' a b c d e = primJS $
  DOMMatrix.prim__rotateAxisAngleSelf a (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
rotateAxisAngleSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
rotateAxisAngleSelf a = primJS $
  DOMMatrix.prim__rotateAxisAngleSelf a undef undef undef undef


export
rotateFromVectorSelf' :
     (obj : DOMMatrix)
  -> (x : Optional Double)
  -> (y : Optional Double)
  -> JSIO DOMMatrix
rotateFromVectorSelf' a b c = primJS $
  DOMMatrix.prim__rotateFromVectorSelf a (toFFI b) (toFFI c)

export
rotateFromVectorSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
rotateFromVectorSelf a = primJS $
  DOMMatrix.prim__rotateFromVectorSelf a undef undef


export
rotateSelf' :
     (obj : DOMMatrix)
  -> (rotX : Optional Double)
  -> (rotY : Optional Double)
  -> (rotZ : Optional Double)
  -> JSIO DOMMatrix
rotateSelf' a b c d = primJS $
  DOMMatrix.prim__rotateSelf a (toFFI b) (toFFI c) (toFFI d)

export
rotateSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
rotateSelf a = primJS $ DOMMatrix.prim__rotateSelf a undef undef undef


export
scale3dSelf' :
     (obj : DOMMatrix)
  -> (scale : Optional Double)
  -> (originX : Optional Double)
  -> (originY : Optional Double)
  -> (originZ : Optional Double)
  -> JSIO DOMMatrix
scale3dSelf' a b c d e = primJS $
  DOMMatrix.prim__scale3dSelf a (toFFI b) (toFFI c) (toFFI d) (toFFI e)

export
scale3dSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
scale3dSelf a = primJS $ DOMMatrix.prim__scale3dSelf a undef undef undef undef


export
scaleSelf' :
     (obj : DOMMatrix)
  -> (scaleX : Optional Double)
  -> (scaleY : Optional Double)
  -> (scaleZ : Optional Double)
  -> (originX : Optional Double)
  -> (originY : Optional Double)
  -> (originZ : Optional Double)
  -> JSIO DOMMatrix
scaleSelf' a b c d e f g = primJS $
  DOMMatrix.prim__scaleSelf
    a
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)

export
scaleSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
scaleSelf a = primJS $
  DOMMatrix.prim__scaleSelf a undef undef undef undef undef undef


export
setMatrixValue : (obj : DOMMatrix) -> (transformList : String) -> JSIO DOMMatrix
setMatrixValue a b = primJS $ DOMMatrix.prim__setMatrixValue a b


export
skewXSelf' : (obj : DOMMatrix) -> (sx : Optional Double) -> JSIO DOMMatrix
skewXSelf' a b = primJS $ DOMMatrix.prim__skewXSelf a (toFFI b)

export
skewXSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
skewXSelf a = primJS $ DOMMatrix.prim__skewXSelf a undef


export
skewYSelf' : (obj : DOMMatrix) -> (sy : Optional Double) -> JSIO DOMMatrix
skewYSelf' a b = primJS $ DOMMatrix.prim__skewYSelf a (toFFI b)

export
skewYSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
skewYSelf a = primJS $ DOMMatrix.prim__skewYSelf a undef


export
translateSelf' :
     (obj : DOMMatrix)
  -> (tx : Optional Double)
  -> (ty : Optional Double)
  -> (tz : Optional Double)
  -> JSIO DOMMatrix
translateSelf' a b c d = primJS $
  DOMMatrix.prim__translateSelf a (toFFI b) (toFFI c) (toFFI d)

export
translateSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
translateSelf a = primJS $ DOMMatrix.prim__translateSelf a undef undef undef

