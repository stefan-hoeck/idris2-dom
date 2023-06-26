module Web.Raw.Geometry

import JS
import Web.Internal.GeometryPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrix

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
    DOMMatrix.prim__rotateAxisAngleSelf
      a
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

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
  setMatrixValue :
       (obj : DOMMatrix)
    -> (transformList : String)
    -> JSIO DOMMatrix
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



namespace DOMMatrixReadOnly

  export
  fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrixReadOnly
  fromFloat32Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat32Array a


  export
  fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrixReadOnly
  fromFloat64Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat64Array a


  export
  fromMatrix' :
       {auto _ : Cast t1 DOMMatrixInit}
    -> (other : Optional t1)
    -> JSIO DOMMatrixReadOnly
  fromMatrix' a = primJS $ DOMMatrixReadOnly.prim__fromMatrix (optUp a)

  export
  fromMatrix : JSIO DOMMatrixReadOnly
  fromMatrix = primJS $ DOMMatrixReadOnly.prim__fromMatrix undef


  export
  a : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  a b = primJS $ DOMMatrixReadOnly.prim__a (cast b)


  export
  b : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  b a = primJS $ DOMMatrixReadOnly.prim__b (cast a)


  export
  c : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  c a = primJS $ DOMMatrixReadOnly.prim__c (cast a)


  export
  d : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  d a = primJS $ DOMMatrixReadOnly.prim__d (cast a)


  export
  e : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  e a = primJS $ DOMMatrixReadOnly.prim__e (cast a)


  export
  f : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  f a = primJS $ DOMMatrixReadOnly.prim__f (cast a)


  export
  is2D : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Bool
  is2D a = tryJS "DOMMatrixReadOnly.is2D" $
    DOMMatrixReadOnly.prim__is2D (cast a)


  export
  isIdentity : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Bool
  isIdentity a = tryJS "DOMMatrixReadOnly.isIdentity" $
    DOMMatrixReadOnly.prim__isIdentity (cast a)


  export
  m11 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m11 a = primJS $ DOMMatrixReadOnly.prim__m11 (cast a)


  export
  m12 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m12 a = primJS $ DOMMatrixReadOnly.prim__m12 (cast a)


  export
  m13 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m13 a = primJS $ DOMMatrixReadOnly.prim__m13 (cast a)


  export
  m14 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m14 a = primJS $ DOMMatrixReadOnly.prim__m14 (cast a)


  export
  m21 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m21 a = primJS $ DOMMatrixReadOnly.prim__m21 (cast a)


  export
  m22 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m22 a = primJS $ DOMMatrixReadOnly.prim__m22 (cast a)


  export
  m23 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m23 a = primJS $ DOMMatrixReadOnly.prim__m23 (cast a)


  export
  m24 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m24 a = primJS $ DOMMatrixReadOnly.prim__m24 (cast a)


  export
  m31 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m31 a = primJS $ DOMMatrixReadOnly.prim__m31 (cast a)


  export
  m32 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m32 a = primJS $ DOMMatrixReadOnly.prim__m32 (cast a)


  export
  m33 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m33 a = primJS $ DOMMatrixReadOnly.prim__m33 (cast a)


  export
  m34 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m34 a = primJS $ DOMMatrixReadOnly.prim__m34 (cast a)


  export
  m41 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m41 a = primJS $ DOMMatrixReadOnly.prim__m41 (cast a)


  export
  m42 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m42 a = primJS $ DOMMatrixReadOnly.prim__m42 (cast a)


  export
  m43 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m43 a = primJS $ DOMMatrixReadOnly.prim__m43 (cast a)


  export
  m44 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
  m44 a = primJS $ DOMMatrixReadOnly.prim__m44 (cast a)


  export
  flipX : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  flipX a = primJS $ DOMMatrixReadOnly.prim__flipX (cast a)


  export
  flipY : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  flipY a = primJS $ DOMMatrixReadOnly.prim__flipY (cast a)


  export
  inverse : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  inverse a = primJS $ DOMMatrixReadOnly.prim__inverse (cast a)


  export
  multiply' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> {auto _ : Cast t2 DOMMatrixInit}
    -> (obj : t1)
    -> (other : Optional t2)
    -> JSIO DOMMatrix
  multiply' a b = primJS $ DOMMatrixReadOnly.prim__multiply (cast a) (optUp b)

  export
  multiply :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMMatrix
  multiply a = primJS $ DOMMatrixReadOnly.prim__multiply (cast a) undef


  export
  rotateAxisAngle' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (x : Optional Double)
    -> (y : Optional Double)
    -> (z : Optional Double)
    -> (angle : Optional Double)
    -> JSIO DOMMatrix
  rotateAxisAngle' a b c d e = primJS $
    DOMMatrixReadOnly.prim__rotateAxisAngle
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  rotateAxisAngle :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMMatrix
  rotateAxisAngle a = primJS $
    DOMMatrixReadOnly.prim__rotateAxisAngle (cast a) undef undef undef undef


  export
  rotate' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (rotX : Optional Double)
    -> (rotY : Optional Double)
    -> (rotZ : Optional Double)
    -> JSIO DOMMatrix
  rotate' a b c d = primJS $
    DOMMatrixReadOnly.prim__rotate (cast a) (toFFI b) (toFFI c) (toFFI d)

  export
  rotate : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  rotate a = primJS $ DOMMatrixReadOnly.prim__rotate (cast a) undef undef undef


  export
  rotateFromVector' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (x : Optional Double)
    -> (y : Optional Double)
    -> JSIO DOMMatrix
  rotateFromVector' a b c = primJS $
    DOMMatrixReadOnly.prim__rotateFromVector (cast a) (toFFI b) (toFFI c)

  export
  rotateFromVector :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMMatrix
  rotateFromVector a = primJS $
    DOMMatrixReadOnly.prim__rotateFromVector (cast a) undef undef


  export
  scale3d' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (scale : Optional Double)
    -> (originX : Optional Double)
    -> (originY : Optional Double)
    -> (originZ : Optional Double)
    -> JSIO DOMMatrix
  scale3d' a b c d e = primJS $
    DOMMatrixReadOnly.prim__scale3d
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  scale3d : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  scale3d a = primJS $
    DOMMatrixReadOnly.prim__scale3d (cast a) undef undef undef undef


  export
  scale' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (scaleX : Optional Double)
    -> (scaleY : Optional Double)
    -> (scaleZ : Optional Double)
    -> (originX : Optional Double)
    -> (originY : Optional Double)
    -> (originZ : Optional Double)
    -> JSIO DOMMatrix
  scale' a b c d e f g = primJS $
    DOMMatrixReadOnly.prim__scale
      (cast a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)

  export
  scale : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  scale a = primJS $
    DOMMatrixReadOnly.prim__scale (cast a) undef undef undef undef undef undef


  export
  scaleNonUniform' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (scaleX : Optional Double)
    -> (scaleY : Optional Double)
    -> JSIO DOMMatrix
  scaleNonUniform' a b c = primJS $
    DOMMatrixReadOnly.prim__scaleNonUniform (cast a) (toFFI b) (toFFI c)

  export
  scaleNonUniform :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMMatrix
  scaleNonUniform a = primJS $
    DOMMatrixReadOnly.prim__scaleNonUniform (cast a) undef undef


  export
  skewX' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (sx : Optional Double)
    -> JSIO DOMMatrix
  skewX' a b = primJS $ DOMMatrixReadOnly.prim__skewX (cast a) (toFFI b)

  export
  skewX : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  skewX a = primJS $ DOMMatrixReadOnly.prim__skewX (cast a) undef


  export
  skewY' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (sy : Optional Double)
    -> JSIO DOMMatrix
  skewY' a b = primJS $ DOMMatrixReadOnly.prim__skewY (cast a) (toFFI b)

  export
  skewY : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
  skewY a = primJS $ DOMMatrixReadOnly.prim__skewY (cast a) undef


  export
  toFloat32Array :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO Float32Array
  toFloat32Array a = primJS $ DOMMatrixReadOnly.prim__toFloat32Array (cast a)


  export
  toFloat64Array :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO Float64Array
  toFloat64Array a = primJS $ DOMMatrixReadOnly.prim__toFloat64Array (cast a)


  export
  toJSON : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Object
  toJSON a = primJS $ DOMMatrixReadOnly.prim__toJSON (cast a)


  export
  toString : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO String
  toString a = primJS $ DOMMatrixReadOnly.prim__toString (cast a)


  export
  transformPoint' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> {auto _ : Cast t2 DOMPointInit}
    -> (obj : t1)
    -> (point : Optional t2)
    -> JSIO DOMPoint
  transformPoint' a b = primJS $
    DOMMatrixReadOnly.prim__transformPoint (cast a) (optUp b)

  export
  transformPoint :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMPoint
  transformPoint a = primJS $
    DOMMatrixReadOnly.prim__transformPoint (cast a) undef


  export
  translate' :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> (tx : Optional Double)
    -> (ty : Optional Double)
    -> (tz : Optional Double)
    -> JSIO DOMMatrix
  translate' a b c d = primJS $
    DOMMatrixReadOnly.prim__translate (cast a) (toFFI b) (toFFI c) (toFFI d)

  export
  translate :
       {auto _ : Cast t1 DOMMatrixReadOnly}
    -> (obj : t1)
    -> JSIO DOMMatrix
  translate a = primJS $
    DOMMatrixReadOnly.prim__translate (cast a) undef undef undef



namespace DOMPoint

  export
  fromPoint' :
       {auto _ : Cast t1 DOMPointInit}
    -> (other : Optional t1)
    -> JSIO DOMPoint
  fromPoint' a = primJS $ DOMPoint.prim__fromPoint (optUp a)

  export
  fromPoint : JSIO DOMPoint
  fromPoint = primJS $ DOMPoint.prim__fromPoint undef



namespace DOMPointReadOnly

  export
  fromPoint' :
       {auto _ : Cast t1 DOMPointInit}
    -> (other : Optional t1)
    -> JSIO DOMPointReadOnly
  fromPoint' a = primJS $ DOMPointReadOnly.prim__fromPoint (optUp a)

  export
  fromPoint : JSIO DOMPointReadOnly
  fromPoint = primJS $ DOMPointReadOnly.prim__fromPoint undef


  export
  w : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
  w a = primJS $ DOMPointReadOnly.prim__w (cast a)


  export
  x : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
  x a = primJS $ DOMPointReadOnly.prim__x (cast a)


  export
  y : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
  y a = primJS $ DOMPointReadOnly.prim__y (cast a)


  export
  z : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
  z a = primJS $ DOMPointReadOnly.prim__z (cast a)


  export
  matrixTransform' :
       {auto _ : Cast t1 DOMPointReadOnly}
    -> {auto _ : Cast t2 DOMMatrixInit}
    -> (obj : t1)
    -> (matrix : Optional t2)
    -> JSIO DOMPoint
  matrixTransform' a b = primJS $
    DOMPointReadOnly.prim__matrixTransform (cast a) (optUp b)

  export
  matrixTransform :
       {auto _ : Cast t1 DOMPointReadOnly}
    -> (obj : t1)
    -> JSIO DOMPoint
  matrixTransform a = primJS $
    DOMPointReadOnly.prim__matrixTransform (cast a) undef


  export
  toJSON : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Object
  toJSON a = primJS $ DOMPointReadOnly.prim__toJSON (cast a)



namespace DOMQuad

  export
  fromQuad' :
       {auto _ : Cast t1 DOMQuadInit}
    -> (other : Optional t1)
    -> JSIO DOMQuad
  fromQuad' a = primJS $ DOMQuad.prim__fromQuad (optUp a)

  export
  fromQuad : JSIO DOMQuad
  fromQuad = primJS $ DOMQuad.prim__fromQuad undef


  export
  fromRect' :
       {auto _ : Cast t1 DOMRectInit}
    -> (other : Optional t1)
    -> JSIO DOMQuad
  fromRect' a = primJS $ DOMQuad.prim__fromRect (optUp a)

  export
  fromRect : JSIO DOMQuad
  fromRect = primJS $ DOMQuad.prim__fromRect undef


  export
  p1 : (obj : DOMQuad) -> JSIO DOMPoint
  p1 a = primJS $ DOMQuad.prim__p1 a


  export
  p2 : (obj : DOMQuad) -> JSIO DOMPoint
  p2 a = primJS $ DOMQuad.prim__p2 a


  export
  p3 : (obj : DOMQuad) -> JSIO DOMPoint
  p3 a = primJS $ DOMQuad.prim__p3 a


  export
  p4 : (obj : DOMQuad) -> JSIO DOMPoint
  p4 a = primJS $ DOMQuad.prim__p4 a


  export
  getBounds : (obj : DOMQuad) -> JSIO DOMRect
  getBounds a = primJS $ DOMQuad.prim__getBounds a


  export
  toJSON : (obj : DOMQuad) -> JSIO Object
  toJSON a = primJS $ DOMQuad.prim__toJSON a



namespace DOMRect

  export
  fromRect' :
       {auto _ : Cast t1 DOMRectInit}
    -> (other : Optional t1)
    -> JSIO DOMRect
  fromRect' a = primJS $ DOMRect.prim__fromRect (optUp a)

  export
  fromRect : JSIO DOMRect
  fromRect = primJS $ DOMRect.prim__fromRect undef



namespace DOMRectList

  export
  length : (obj : DOMRectList) -> JSIO Bits32
  length a = primJS $ DOMRectList.prim__length a


  export
  item : (obj : DOMRectList) -> (index : Bits32) -> JSIO (Maybe DOMRect)
  item a b = tryJS "DOMRectList.item" $ DOMRectList.prim__item a b



namespace DOMRectReadOnly

  export
  fromRect' :
       {auto _ : Cast t1 DOMRectInit}
    -> (other : Optional t1)
    -> JSIO DOMRectReadOnly
  fromRect' a = primJS $ DOMRectReadOnly.prim__fromRect (optUp a)

  export
  fromRect : JSIO DOMRectReadOnly
  fromRect = primJS $ DOMRectReadOnly.prim__fromRect undef


  export
  bottom : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  bottom a = primJS $ DOMRectReadOnly.prim__bottom (cast a)


  export
  height : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  height a = primJS $ DOMRectReadOnly.prim__height (cast a)


  export
  left : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  left a = primJS $ DOMRectReadOnly.prim__left (cast a)


  export
  right : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  right a = primJS $ DOMRectReadOnly.prim__right (cast a)


  export
  top : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  top a = primJS $ DOMRectReadOnly.prim__top (cast a)


  export
  width : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  width a = primJS $ DOMRectReadOnly.prim__width (cast a)


  export
  x : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  x a = primJS $ DOMRectReadOnly.prim__x (cast a)


  export
  y : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
  y a = primJS $ DOMRectReadOnly.prim__y (cast a)


  export
  toJSON : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Object
  toJSON a = primJS $ DOMRectReadOnly.prim__toJSON (cast a)





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit

  export
  new' :
       (a : Optional Double)
    -> (b : Optional Double)
    -> (c : Optional Double)
    -> (d : Optional Double)
    -> (e : Optional Double)
    -> (f : Optional Double)
    -> (m11 : Optional Double)
    -> (m12 : Optional Double)
    -> (m21 : Optional Double)
    -> (m22 : Optional Double)
    -> (m41 : Optional Double)
    -> (m42 : Optional Double)
    -> JSIO DOMMatrix2DInit
  new' a b c d e f g h i j k l = primJS $
    DOMMatrix2DInit.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)
      (toFFI j)
      (toFFI k)
      (toFFI l)

  export
  new : JSIO DOMMatrix2DInit
  new = primJS $
    DOMMatrix2DInit.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef


  export
  a : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  a v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.geta"
          prim__a
          prim__setA
          (cast {to = DOMMatrix2DInit} v)


  export
  b : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  b v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getb"
          prim__b
          prim__setB
          (cast {to = DOMMatrix2DInit} v)


  export
  c : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  c v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getc"
          prim__c
          prim__setC
          (cast {to = DOMMatrix2DInit} v)


  export
  d : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  d v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getd"
          prim__d
          prim__setD
          (cast {to = DOMMatrix2DInit} v)


  export
  e : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  e v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.gete"
          prim__e
          prim__setE
          (cast {to = DOMMatrix2DInit} v)


  export
  f : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
  f v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getf"
          prim__f
          prim__setF
          (cast {to = DOMMatrix2DInit} v)


  export
  m11 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m11 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm11"
            prim__m11
            prim__setM11
            (cast {to = DOMMatrix2DInit} v)


  export
  m12 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m12 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm12"
            prim__m12
            prim__setM12
            (cast {to = DOMMatrix2DInit} v)


  export
  m21 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m21 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm21"
            prim__m21
            prim__setM21
            (cast {to = DOMMatrix2DInit} v)


  export
  m22 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m22 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm22"
            prim__m22
            prim__setM22
            (cast {to = DOMMatrix2DInit} v)


  export
  m41 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m41 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm41"
            prim__m41
            prim__setM41
            (cast {to = DOMMatrix2DInit} v)


  export
  m42 :
       {auto _ : Cast t DOMMatrix2DInit}
    -> t
    -> Attribute False Optional Double
  m42 v = fromUndefOrPrimNoDefault
            "DOMMatrix2DInit.getm42"
            prim__m42
            prim__setM42
            (cast {to = DOMMatrix2DInit} v)



namespace DOMMatrixInit

  export
  new' :
       (m13 : Optional Double)
    -> (m14 : Optional Double)
    -> (m23 : Optional Double)
    -> (m24 : Optional Double)
    -> (m31 : Optional Double)
    -> (m32 : Optional Double)
    -> (m33 : Optional Double)
    -> (m34 : Optional Double)
    -> (m43 : Optional Double)
    -> (m44 : Optional Double)
    -> (is2D : Optional Bool)
    -> JSIO DOMMatrixInit
  new' a b c d e f g h i j k = primJS $
    DOMMatrixInit.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)
      (toFFI h)
      (toFFI i)
      (toFFI j)
      (toFFI k)

  export
  new : JSIO DOMMatrixInit
  new = primJS $
    DOMMatrixInit.prim__new
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef
      undef


  export
  is2D : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute False Optional Bool
  is2D v = fromUndefOrPrimNoDefault
             "DOMMatrixInit.getis2D"
             prim__is2D
             prim__setIs2D
             (cast {to = DOMMatrixInit} v)


  export
  m13 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m13 v = fromUndefOrPrim
            "DOMMatrixInit.getm13"
            prim__m13
            prim__setM13
            0
            (cast {to = DOMMatrixInit} v)


  export
  m14 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m14 v = fromUndefOrPrim
            "DOMMatrixInit.getm14"
            prim__m14
            prim__setM14
            0
            (cast {to = DOMMatrixInit} v)


  export
  m23 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m23 v = fromUndefOrPrim
            "DOMMatrixInit.getm23"
            prim__m23
            prim__setM23
            0
            (cast {to = DOMMatrixInit} v)


  export
  m24 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m24 v = fromUndefOrPrim
            "DOMMatrixInit.getm24"
            prim__m24
            prim__setM24
            0
            (cast {to = DOMMatrixInit} v)


  export
  m31 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m31 v = fromUndefOrPrim
            "DOMMatrixInit.getm31"
            prim__m31
            prim__setM31
            0
            (cast {to = DOMMatrixInit} v)


  export
  m32 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m32 v = fromUndefOrPrim
            "DOMMatrixInit.getm32"
            prim__m32
            prim__setM32
            0
            (cast {to = DOMMatrixInit} v)


  export
  m33 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m33 v = fromUndefOrPrim
            "DOMMatrixInit.getm33"
            prim__m33
            prim__setM33
            1
            (cast {to = DOMMatrixInit} v)


  export
  m34 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m34 v = fromUndefOrPrim
            "DOMMatrixInit.getm34"
            prim__m34
            prim__setM34
            0
            (cast {to = DOMMatrixInit} v)


  export
  m43 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m43 v = fromUndefOrPrim
            "DOMMatrixInit.getm43"
            prim__m43
            prim__setM43
            0
            (cast {to = DOMMatrixInit} v)


  export
  m44 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
  m44 v = fromUndefOrPrim
            "DOMMatrixInit.getm44"
            prim__m44
            prim__setM44
            1
            (cast {to = DOMMatrixInit} v)



namespace DOMPointInit

  export
  new' :
       (x : Optional Double)
    -> (y : Optional Double)
    -> (z : Optional Double)
    -> (w : Optional Double)
    -> JSIO DOMPointInit
  new' a b c d = primJS $
    DOMPointInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new : JSIO DOMPointInit
  new = primJS $ DOMPointInit.prim__new undef undef undef undef


  export
  w : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
  w v = fromUndefOrPrim
          "DOMPointInit.getw"
          prim__w
          prim__setW
          1
          (cast {to = DOMPointInit} v)


  export
  x : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
  x v = fromUndefOrPrim
          "DOMPointInit.getx"
          prim__x
          prim__setX
          0
          (cast {to = DOMPointInit} v)


  export
  y : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
  y v = fromUndefOrPrim
          "DOMPointInit.gety"
          prim__y
          prim__setY
          0
          (cast {to = DOMPointInit} v)


  export
  z : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
  z v = fromUndefOrPrim
          "DOMPointInit.getz"
          prim__z
          prim__setZ
          0
          (cast {to = DOMPointInit} v)



namespace DOMQuadInit

  export
  new' :
       {auto _ : Cast t1 DOMPointInit}
    -> {auto _ : Cast t2 DOMPointInit}
    -> {auto _ : Cast t3 DOMPointInit}
    -> {auto _ : Cast t4 DOMPointInit}
    -> (p1 : Optional t1)
    -> (p2 : Optional t2)
    -> (p3 : Optional t3)
    -> (p4 : Optional t4)
    -> JSIO DOMQuadInit
  new' a b c d = primJS $
    DOMQuadInit.prim__new (optUp a) (optUp b) (optUp c) (optUp d)

  export
  new : JSIO DOMQuadInit
  new = primJS $ DOMQuadInit.prim__new undef undef undef undef


  export
  p1 :
       {auto _ : Cast t DOMQuadInit}
    -> t
    -> Attribute False Optional DOMPointInit
  p1 v = fromUndefOrPrimNoDefault
           "DOMQuadInit.getp1"
           prim__p1
           prim__setP1
           (cast {to = DOMQuadInit} v)


  export
  p2 :
       {auto _ : Cast t DOMQuadInit}
    -> t
    -> Attribute False Optional DOMPointInit
  p2 v = fromUndefOrPrimNoDefault
           "DOMQuadInit.getp2"
           prim__p2
           prim__setP2
           (cast {to = DOMQuadInit} v)


  export
  p3 :
       {auto _ : Cast t DOMQuadInit}
    -> t
    -> Attribute False Optional DOMPointInit
  p3 v = fromUndefOrPrimNoDefault
           "DOMQuadInit.getp3"
           prim__p3
           prim__setP3
           (cast {to = DOMQuadInit} v)


  export
  p4 :
       {auto _ : Cast t DOMQuadInit}
    -> t
    -> Attribute False Optional DOMPointInit
  p4 v = fromUndefOrPrimNoDefault
           "DOMQuadInit.getp4"
           prim__p4
           prim__setP4
           (cast {to = DOMQuadInit} v)



namespace DOMRectInit

  export
  new' :
       (x : Optional Double)
    -> (y : Optional Double)
    -> (width : Optional Double)
    -> (height : Optional Double)
    -> JSIO DOMRectInit
  new' a b c d = primJS $
    DOMRectInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new : JSIO DOMRectInit
  new = primJS $ DOMRectInit.prim__new undef undef undef undef


  export
  height : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
  height v = fromUndefOrPrim
               "DOMRectInit.getheight"
               prim__height
               prim__setHeight
               0
               (cast {to = DOMRectInit} v)


  export
  width : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
  width v = fromUndefOrPrim
              "DOMRectInit.getwidth"
              prim__width
              prim__setWidth
              0
              (cast {to = DOMRectInit} v)


  export
  x : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
  x v = fromUndefOrPrim
          "DOMRectInit.getx"
          prim__x
          prim__setX
          0
          (cast {to = DOMRectInit} v)


  export
  y : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
  y v = fromUndefOrPrim
          "DOMRectInit.gety"
          prim__y
          prim__setY
          0
          (cast {to = DOMRectInit} v)
