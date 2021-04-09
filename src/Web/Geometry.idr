module Web.Geometry
 
import JS
import Web.Internal.GeometryPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrix
  
  public export
  JSType DOMMatrix where
    parents =  [ DOMMatrixReadOnly , Object ]

    mixins =  []
  
  export
  fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrix
  fromFloat32Array a = primJS $ DOMMatrix.prim__fromFloat32Array a
  
  export
  fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrix
  fromFloat64Array a = primJS $ DOMMatrix.prim__fromFloat64Array a
  
  export
  fromMatrix : (other : UndefOr DOMMatrixInit) -> JSIO DOMMatrix
  fromMatrix a = primJS $ DOMMatrix.prim__fromMatrix a
  
  export
  invertSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
  invertSelf a = primJS $ DOMMatrix.prim__invertSelf a
  
  export
  multiplySelf :  (obj : DOMMatrix)
               -> (other : UndefOr DOMMatrixInit)
               -> JSIO DOMMatrix
  multiplySelf a b = primJS $ DOMMatrix.prim__multiplySelf a b
  
  export
  preMultiplySelf :  (obj : DOMMatrix)
                  -> (other : UndefOr DOMMatrixInit)
                  -> JSIO DOMMatrix
  preMultiplySelf a b = primJS $ DOMMatrix.prim__preMultiplySelf a b
  
  export
  rotateAxisAngleSelf :  (obj : DOMMatrix)
                      -> (x : UndefOr Double)
                      -> (y : UndefOr Double)
                      -> (z : UndefOr Double)
                      -> (angle : UndefOr Double)
                      -> JSIO DOMMatrix
  rotateAxisAngleSelf a b c d e = primJS $ DOMMatrix.prim__rotateAxisAngleSelf a
                                                                               b
                                                                               c
                                                                               d
                                                                               e
  
  export
  rotateFromVectorSelf :  (obj : DOMMatrix)
                       -> (x : UndefOr Double)
                       -> (y : UndefOr Double)
                       -> JSIO DOMMatrix
  rotateFromVectorSelf a b c = primJS $ DOMMatrix.prim__rotateFromVectorSelf a
                                                                             b
                                                                             c
  
  export
  rotateSelf :  (obj : DOMMatrix)
             -> (rotX : UndefOr Double)
             -> (rotY : UndefOr Double)
             -> (rotZ : UndefOr Double)
             -> JSIO DOMMatrix
  rotateSelf a b c d = primJS $ DOMMatrix.prim__rotateSelf a b c d
  
  export
  scale3dSelf :  (obj : DOMMatrix)
              -> (scale : UndefOr Double)
              -> (originX : UndefOr Double)
              -> (originY : UndefOr Double)
              -> (originZ : UndefOr Double)
              -> JSIO DOMMatrix
  scale3dSelf a b c d e = primJS $ DOMMatrix.prim__scale3dSelf a b c d e
  
  export
  scaleSelf :  (obj : DOMMatrix)
            -> (scaleX : UndefOr Double)
            -> (scaleY : UndefOr Double)
            -> (scaleZ : UndefOr Double)
            -> (originX : UndefOr Double)
            -> (originY : UndefOr Double)
            -> (originZ : UndefOr Double)
            -> JSIO DOMMatrix
  scaleSelf a b c d e f g = primJS $ DOMMatrix.prim__scaleSelf a b c d e f g
  
  export
  setMatrixValue :  (obj : DOMMatrix)
                 -> (transformList : String)
                 -> JSIO DOMMatrix
  setMatrixValue a b = primJS $ DOMMatrix.prim__setMatrixValue a b
  
  export
  skewXSelf : (obj : DOMMatrix) -> (sx : UndefOr Double) -> JSIO DOMMatrix
  skewXSelf a b = primJS $ DOMMatrix.prim__skewXSelf a b
  
  export
  skewYSelf : (obj : DOMMatrix) -> (sy : UndefOr Double) -> JSIO DOMMatrix
  skewYSelf a b = primJS $ DOMMatrix.prim__skewYSelf a b
  
  export
  translateSelf :  (obj : DOMMatrix)
                -> (tx : UndefOr Double)
                -> (ty : UndefOr Double)
                -> (tz : UndefOr Double)
                -> JSIO DOMMatrix
  translateSelf a b c d = primJS $ DOMMatrix.prim__translateSelf a b c d

namespace DOMMatrixReadOnly
  
  public export
  JSType DOMMatrixReadOnly where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrixReadOnly
  fromFloat32Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat32Array a
  
  export
  fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrixReadOnly
  fromFloat64Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat64Array a
  
  export
  fromMatrix : (other : UndefOr DOMMatrixInit) -> JSIO DOMMatrixReadOnly
  fromMatrix a = primJS $ DOMMatrixReadOnly.prim__fromMatrix a
  
  export
  a : (obj : DOMMatrixReadOnly) -> JSIO Double
  a b = primJS $ DOMMatrixReadOnly.prim__a b
  
  export
  b : (obj : DOMMatrixReadOnly) -> JSIO Double
  b a = primJS $ DOMMatrixReadOnly.prim__b a
  
  export
  c : (obj : DOMMatrixReadOnly) -> JSIO Double
  c a = primJS $ DOMMatrixReadOnly.prim__c a
  
  export
  d : (obj : DOMMatrixReadOnly) -> JSIO Double
  d a = primJS $ DOMMatrixReadOnly.prim__d a
  
  export
  e : (obj : DOMMatrixReadOnly) -> JSIO Double
  e a = primJS $ DOMMatrixReadOnly.prim__e a
  
  export
  f : (obj : DOMMatrixReadOnly) -> JSIO Double
  f a = primJS $ DOMMatrixReadOnly.prim__f a
  
  export
  is2D : (obj : DOMMatrixReadOnly) -> JSIO Boolean
  is2D a = primJS $ DOMMatrixReadOnly.prim__is2D a
  
  export
  isIdentity : (obj : DOMMatrixReadOnly) -> JSIO Boolean
  isIdentity a = primJS $ DOMMatrixReadOnly.prim__isIdentity a
  
  export
  m11 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m11 a = primJS $ DOMMatrixReadOnly.prim__m11 a
  
  export
  m12 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m12 a = primJS $ DOMMatrixReadOnly.prim__m12 a
  
  export
  m13 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m13 a = primJS $ DOMMatrixReadOnly.prim__m13 a
  
  export
  m14 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m14 a = primJS $ DOMMatrixReadOnly.prim__m14 a
  
  export
  m21 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m21 a = primJS $ DOMMatrixReadOnly.prim__m21 a
  
  export
  m22 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m22 a = primJS $ DOMMatrixReadOnly.prim__m22 a
  
  export
  m23 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m23 a = primJS $ DOMMatrixReadOnly.prim__m23 a
  
  export
  m24 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m24 a = primJS $ DOMMatrixReadOnly.prim__m24 a
  
  export
  m31 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m31 a = primJS $ DOMMatrixReadOnly.prim__m31 a
  
  export
  m32 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m32 a = primJS $ DOMMatrixReadOnly.prim__m32 a
  
  export
  m33 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m33 a = primJS $ DOMMatrixReadOnly.prim__m33 a
  
  export
  m34 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m34 a = primJS $ DOMMatrixReadOnly.prim__m34 a
  
  export
  m41 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m41 a = primJS $ DOMMatrixReadOnly.prim__m41 a
  
  export
  m42 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m42 a = primJS $ DOMMatrixReadOnly.prim__m42 a
  
  export
  m43 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m43 a = primJS $ DOMMatrixReadOnly.prim__m43 a
  
  export
  m44 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m44 a = primJS $ DOMMatrixReadOnly.prim__m44 a
  
  export
  flipX : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  flipX a = primJS $ DOMMatrixReadOnly.prim__flipX a
  
  export
  flipY : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  flipY a = primJS $ DOMMatrixReadOnly.prim__flipY a
  
  export
  inverse : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  inverse a = primJS $ DOMMatrixReadOnly.prim__inverse a
  
  export
  multiply :  (obj : DOMMatrixReadOnly)
           -> (other : UndefOr DOMMatrixInit)
           -> JSIO DOMMatrix
  multiply a b = primJS $ DOMMatrixReadOnly.prim__multiply a b
  
  export
  rotateAxisAngle :  (obj : DOMMatrixReadOnly)
                  -> (x : UndefOr Double)
                  -> (y : UndefOr Double)
                  -> (z : UndefOr Double)
                  -> (angle : UndefOr Double)
                  -> JSIO DOMMatrix
  rotateAxisAngle a b c d e = primJS $ DOMMatrixReadOnly.prim__rotateAxisAngle a
                                                                               b
                                                                               c
                                                                               d
                                                                               e
  
  export
  rotate :  (obj : DOMMatrixReadOnly)
         -> (rotX : UndefOr Double)
         -> (rotY : UndefOr Double)
         -> (rotZ : UndefOr Double)
         -> JSIO DOMMatrix
  rotate a b c d = primJS $ DOMMatrixReadOnly.prim__rotate a b c d
  
  export
  rotateFromVector :  (obj : DOMMatrixReadOnly)
                   -> (x : UndefOr Double)
                   -> (y : UndefOr Double)
                   -> JSIO DOMMatrix
  rotateFromVector a b c = primJS $ DOMMatrixReadOnly.prim__rotateFromVector a
                                                                             b
                                                                             c
  
  export
  scale3d :  (obj : DOMMatrixReadOnly)
          -> (scale : UndefOr Double)
          -> (originX : UndefOr Double)
          -> (originY : UndefOr Double)
          -> (originZ : UndefOr Double)
          -> JSIO DOMMatrix
  scale3d a b c d e = primJS $ DOMMatrixReadOnly.prim__scale3d a b c d e
  
  export
  scale :  (obj : DOMMatrixReadOnly)
        -> (scaleX : UndefOr Double)
        -> (scaleY : UndefOr Double)
        -> (scaleZ : UndefOr Double)
        -> (originX : UndefOr Double)
        -> (originY : UndefOr Double)
        -> (originZ : UndefOr Double)
        -> JSIO DOMMatrix
  scale a b c d e f g = primJS $ DOMMatrixReadOnly.prim__scale a b c d e f g
  
  export
  scaleNonUniform :  (obj : DOMMatrixReadOnly)
                  -> (scaleX : UndefOr Double)
                  -> (scaleY : UndefOr Double)
                  -> JSIO DOMMatrix
  scaleNonUniform a b c = primJS $ DOMMatrixReadOnly.prim__scaleNonUniform a b c
  
  export
  skewX : (obj : DOMMatrixReadOnly) -> (sx : UndefOr Double) -> JSIO DOMMatrix
  skewX a b = primJS $ DOMMatrixReadOnly.prim__skewX a b
  
  export
  skewY : (obj : DOMMatrixReadOnly) -> (sy : UndefOr Double) -> JSIO DOMMatrix
  skewY a b = primJS $ DOMMatrixReadOnly.prim__skewY a b
  
  export
  toFloat32Array : (obj : DOMMatrixReadOnly) -> JSIO Float32Array
  toFloat32Array a = primJS $ DOMMatrixReadOnly.prim__toFloat32Array a
  
  export
  toFloat64Array : (obj : DOMMatrixReadOnly) -> JSIO Float64Array
  toFloat64Array a = primJS $ DOMMatrixReadOnly.prim__toFloat64Array a
  
  export
  toJSON : (obj : DOMMatrixReadOnly) -> JSIO Object
  toJSON a = primJS $ DOMMatrixReadOnly.prim__toJSON a
  
  export
  toString : (obj : DOMMatrixReadOnly) -> JSIO String
  toString a = primJS $ DOMMatrixReadOnly.prim__toString a
  
  export
  transformPoint :  (obj : DOMMatrixReadOnly)
                 -> (point : UndefOr DOMPointInit)
                 -> JSIO DOMPoint
  transformPoint a b = primJS $ DOMMatrixReadOnly.prim__transformPoint a b
  
  export
  translate :  (obj : DOMMatrixReadOnly)
            -> (tx : UndefOr Double)
            -> (ty : UndefOr Double)
            -> (tz : UndefOr Double)
            -> JSIO DOMMatrix
  translate a b c d = primJS $ DOMMatrixReadOnly.prim__translate a b c d

namespace DOMPoint
  
  public export
  JSType DOMPoint where
    parents =  [ DOMPointReadOnly , Object ]

    mixins =  []
  
  export
  fromPoint : (other : UndefOr DOMPointInit) -> JSIO DOMPoint
  fromPoint a = primJS $ DOMPoint.prim__fromPoint a

namespace DOMPointReadOnly
  
  public export
  JSType DOMPointReadOnly where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromPoint : (other : UndefOr DOMPointInit) -> JSIO DOMPointReadOnly
  fromPoint a = primJS $ DOMPointReadOnly.prim__fromPoint a
  
  export
  w : (obj : DOMPointReadOnly) -> JSIO Double
  w a = primJS $ DOMPointReadOnly.prim__w a
  
  export
  x : (obj : DOMPointReadOnly) -> JSIO Double
  x a = primJS $ DOMPointReadOnly.prim__x a
  
  export
  y : (obj : DOMPointReadOnly) -> JSIO Double
  y a = primJS $ DOMPointReadOnly.prim__y a
  
  export
  z : (obj : DOMPointReadOnly) -> JSIO Double
  z a = primJS $ DOMPointReadOnly.prim__z a
  
  export
  matrixTransform :  (obj : DOMPointReadOnly)
                  -> (matrix : UndefOr DOMMatrixInit)
                  -> JSIO DOMPoint
  matrixTransform a b = primJS $ DOMPointReadOnly.prim__matrixTransform a b
  
  export
  toJSON : (obj : DOMPointReadOnly) -> JSIO Object
  toJSON a = primJS $ DOMPointReadOnly.prim__toJSON a

namespace DOMQuad
  
  public export
  JSType DOMQuad where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromQuad : (other : UndefOr DOMQuadInit) -> JSIO DOMQuad
  fromQuad a = primJS $ DOMQuad.prim__fromQuad a
  
  export
  fromRect : (other : UndefOr DOMRectInit) -> JSIO DOMQuad
  fromRect a = primJS $ DOMQuad.prim__fromRect a
  
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
  
  public export
  JSType DOMRect where
    parents =  [ DOMRectReadOnly , Object ]

    mixins =  []
  
  export
  fromRect : (other : UndefOr DOMRectInit) -> JSIO DOMRect
  fromRect a = primJS $ DOMRect.prim__fromRect a

namespace DOMRectList
  
  public export
  JSType DOMRectList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : DOMRectList) -> JSIO UInt32
  length a = primJS $ DOMRectList.prim__length a
  
  export
  item : (obj : DOMRectList) -> (index : UInt32) -> JSIO (Nullable DOMRect)
  item a b = primJS $ DOMRectList.prim__item a b

namespace DOMRectReadOnly
  
  public export
  JSType DOMRectReadOnly where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromRect : (other : UndefOr DOMRectInit) -> JSIO DOMRectReadOnly
  fromRect a = primJS $ DOMRectReadOnly.prim__fromRect a
  
  export
  bottom : (obj : DOMRectReadOnly) -> JSIO Double
  bottom a = primJS $ DOMRectReadOnly.prim__bottom a
  
  export
  height : (obj : DOMRectReadOnly) -> JSIO Double
  height a = primJS $ DOMRectReadOnly.prim__height a
  
  export
  left : (obj : DOMRectReadOnly) -> JSIO Double
  left a = primJS $ DOMRectReadOnly.prim__left a
  
  export
  right : (obj : DOMRectReadOnly) -> JSIO Double
  right a = primJS $ DOMRectReadOnly.prim__right a
  
  export
  top : (obj : DOMRectReadOnly) -> JSIO Double
  top a = primJS $ DOMRectReadOnly.prim__top a
  
  export
  width : (obj : DOMRectReadOnly) -> JSIO Double
  width a = primJS $ DOMRectReadOnly.prim__width a
  
  export
  x : (obj : DOMRectReadOnly) -> JSIO Double
  x a = primJS $ DOMRectReadOnly.prim__x a
  
  export
  y : (obj : DOMRectReadOnly) -> JSIO Double
  y a = primJS $ DOMRectReadOnly.prim__y a
  
  export
  toJSON : (obj : DOMRectReadOnly) -> JSIO Object
  toJSON a = primJS $ DOMRectReadOnly.prim__toJSON a


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  public export
  JSType DOMMatrix2DInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (a : UndefOr Double)
      -> (b : UndefOr Double)
      -> (c : UndefOr Double)
      -> (d : UndefOr Double)
      -> (e : UndefOr Double)
      -> (f : UndefOr Double)
      -> (m11 : UndefOr Double)
      -> (m12 : UndefOr Double)
      -> (m21 : UndefOr Double)
      -> (m22 : UndefOr Double)
      -> (m41 : UndefOr Double)
      -> (m42 : UndefOr Double)
      -> JSIO DOMMatrix2DInit
  new a b c d e f g h i j k l = primJS $ DOMMatrix2DInit.prim__new a
                                                                   b
                                                                   c
                                                                   d
                                                                   e
                                                                   f
                                                                   g
                                                                   h
                                                                   i
                                                                   j
                                                                   k
                                                                   l
  
  export
  a : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  a b = primJS $ DOMMatrix2DInit.prim__a b
  
  export
  setA : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setA a b = primJS $ DOMMatrix2DInit.prim__setA a b
  
  export
  b : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  b a = primJS $ DOMMatrix2DInit.prim__b a
  
  export
  setB : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setB a b = primJS $ DOMMatrix2DInit.prim__setB a b
  
  export
  c : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  c a = primJS $ DOMMatrix2DInit.prim__c a
  
  export
  setC : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setC a b = primJS $ DOMMatrix2DInit.prim__setC a b
  
  export
  d : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  d a = primJS $ DOMMatrix2DInit.prim__d a
  
  export
  setD : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setD a b = primJS $ DOMMatrix2DInit.prim__setD a b
  
  export
  e : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  e a = primJS $ DOMMatrix2DInit.prim__e a
  
  export
  setE : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setE a b = primJS $ DOMMatrix2DInit.prim__setE a b
  
  export
  f : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  f a = primJS $ DOMMatrix2DInit.prim__f a
  
  export
  setF : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setF a b = primJS $ DOMMatrix2DInit.prim__setF a b
  
  export
  m11 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m11 a = primJS $ DOMMatrix2DInit.prim__m11 a
  
  export
  setM11 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM11 a b = primJS $ DOMMatrix2DInit.prim__setM11 a b
  
  export
  m12 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m12 a = primJS $ DOMMatrix2DInit.prim__m12 a
  
  export
  setM12 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM12 a b = primJS $ DOMMatrix2DInit.prim__setM12 a b
  
  export
  m21 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m21 a = primJS $ DOMMatrix2DInit.prim__m21 a
  
  export
  setM21 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM21 a b = primJS $ DOMMatrix2DInit.prim__setM21 a b
  
  export
  m22 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m22 a = primJS $ DOMMatrix2DInit.prim__m22 a
  
  export
  setM22 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM22 a b = primJS $ DOMMatrix2DInit.prim__setM22 a b
  
  export
  m41 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m41 a = primJS $ DOMMatrix2DInit.prim__m41 a
  
  export
  setM41 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM41 a b = primJS $ DOMMatrix2DInit.prim__setM41 a b
  
  export
  m42 : (obj : DOMMatrix2DInit) -> JSIO (UndefOr Double)
  m42 a = primJS $ DOMMatrix2DInit.prim__m42 a
  
  export
  setM42 : (obj : DOMMatrix2DInit) -> (value : UndefOr Double) -> JSIO ()
  setM42 a b = primJS $ DOMMatrix2DInit.prim__setM42 a b

namespace DOMMatrixInit
  
  public export
  JSType DOMMatrixInit where
    parents =  [ DOMMatrix2DInit , Object ]

    mixins =  []
  
  export
  new :  (m13 : UndefOr Double)
      -> (m14 : UndefOr Double)
      -> (m23 : UndefOr Double)
      -> (m24 : UndefOr Double)
      -> (m31 : UndefOr Double)
      -> (m32 : UndefOr Double)
      -> (m33 : UndefOr Double)
      -> (m34 : UndefOr Double)
      -> (m43 : UndefOr Double)
      -> (m44 : UndefOr Double)
      -> (is2D : UndefOr Boolean)
      -> JSIO DOMMatrixInit
  new a b c d e f g h i j k = primJS $ DOMMatrixInit.prim__new a
                                                               b
                                                               c
                                                               d
                                                               e
                                                               f
                                                               g
                                                               h
                                                               i
                                                               j
                                                               k
  
  export
  is2D : (obj : DOMMatrixInit) -> JSIO (UndefOr Boolean)
  is2D a = primJS $ DOMMatrixInit.prim__is2D a
  
  export
  setIs2D : (obj : DOMMatrixInit) -> (value : UndefOr Boolean) -> JSIO ()
  setIs2D a b = primJS $ DOMMatrixInit.prim__setIs2D a b
  
  export
  m13 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m13 a = primJS $ DOMMatrixInit.prim__m13 a
  
  export
  setM13 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM13 a b = primJS $ DOMMatrixInit.prim__setM13 a b
  
  export
  m14 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m14 a = primJS $ DOMMatrixInit.prim__m14 a
  
  export
  setM14 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM14 a b = primJS $ DOMMatrixInit.prim__setM14 a b
  
  export
  m23 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m23 a = primJS $ DOMMatrixInit.prim__m23 a
  
  export
  setM23 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM23 a b = primJS $ DOMMatrixInit.prim__setM23 a b
  
  export
  m24 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m24 a = primJS $ DOMMatrixInit.prim__m24 a
  
  export
  setM24 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM24 a b = primJS $ DOMMatrixInit.prim__setM24 a b
  
  export
  m31 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m31 a = primJS $ DOMMatrixInit.prim__m31 a
  
  export
  setM31 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM31 a b = primJS $ DOMMatrixInit.prim__setM31 a b
  
  export
  m32 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m32 a = primJS $ DOMMatrixInit.prim__m32 a
  
  export
  setM32 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM32 a b = primJS $ DOMMatrixInit.prim__setM32 a b
  
  export
  m33 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m33 a = primJS $ DOMMatrixInit.prim__m33 a
  
  export
  setM33 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM33 a b = primJS $ DOMMatrixInit.prim__setM33 a b
  
  export
  m34 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m34 a = primJS $ DOMMatrixInit.prim__m34 a
  
  export
  setM34 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM34 a b = primJS $ DOMMatrixInit.prim__setM34 a b
  
  export
  m43 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m43 a = primJS $ DOMMatrixInit.prim__m43 a
  
  export
  setM43 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM43 a b = primJS $ DOMMatrixInit.prim__setM43 a b
  
  export
  m44 : (obj : DOMMatrixInit) -> JSIO (UndefOr Double)
  m44 a = primJS $ DOMMatrixInit.prim__m44 a
  
  export
  setM44 : (obj : DOMMatrixInit) -> (value : UndefOr Double) -> JSIO ()
  setM44 a b = primJS $ DOMMatrixInit.prim__setM44 a b

namespace DOMPointInit
  
  public export
  JSType DOMPointInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (x : UndefOr Double)
      -> (y : UndefOr Double)
      -> (z : UndefOr Double)
      -> (w : UndefOr Double)
      -> JSIO DOMPointInit
  new a b c d = primJS $ DOMPointInit.prim__new a b c d
  
  export
  w : (obj : DOMPointInit) -> JSIO (UndefOr Double)
  w a = primJS $ DOMPointInit.prim__w a
  
  export
  setW : (obj : DOMPointInit) -> (value : UndefOr Double) -> JSIO ()
  setW a b = primJS $ DOMPointInit.prim__setW a b
  
  export
  x : (obj : DOMPointInit) -> JSIO (UndefOr Double)
  x a = primJS $ DOMPointInit.prim__x a
  
  export
  setX : (obj : DOMPointInit) -> (value : UndefOr Double) -> JSIO ()
  setX a b = primJS $ DOMPointInit.prim__setX a b
  
  export
  y : (obj : DOMPointInit) -> JSIO (UndefOr Double)
  y a = primJS $ DOMPointInit.prim__y a
  
  export
  setY : (obj : DOMPointInit) -> (value : UndefOr Double) -> JSIO ()
  setY a b = primJS $ DOMPointInit.prim__setY a b
  
  export
  z : (obj : DOMPointInit) -> JSIO (UndefOr Double)
  z a = primJS $ DOMPointInit.prim__z a
  
  export
  setZ : (obj : DOMPointInit) -> (value : UndefOr Double) -> JSIO ()
  setZ a b = primJS $ DOMPointInit.prim__setZ a b

namespace DOMQuadInit
  
  public export
  JSType DOMQuadInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (p1 : UndefOr DOMPointInit)
      -> (p2 : UndefOr DOMPointInit)
      -> (p3 : UndefOr DOMPointInit)
      -> (p4 : UndefOr DOMPointInit)
      -> JSIO DOMQuadInit
  new a b c d = primJS $ DOMQuadInit.prim__new a b c d
  
  export
  p1 : (obj : DOMQuadInit) -> JSIO (UndefOr DOMPointInit)
  p1 a = primJS $ DOMQuadInit.prim__p1 a
  
  export
  setP1 : (obj : DOMQuadInit) -> (value : UndefOr DOMPointInit) -> JSIO ()
  setP1 a b = primJS $ DOMQuadInit.prim__setP1 a b
  
  export
  p2 : (obj : DOMQuadInit) -> JSIO (UndefOr DOMPointInit)
  p2 a = primJS $ DOMQuadInit.prim__p2 a
  
  export
  setP2 : (obj : DOMQuadInit) -> (value : UndefOr DOMPointInit) -> JSIO ()
  setP2 a b = primJS $ DOMQuadInit.prim__setP2 a b
  
  export
  p3 : (obj : DOMQuadInit) -> JSIO (UndefOr DOMPointInit)
  p3 a = primJS $ DOMQuadInit.prim__p3 a
  
  export
  setP3 : (obj : DOMQuadInit) -> (value : UndefOr DOMPointInit) -> JSIO ()
  setP3 a b = primJS $ DOMQuadInit.prim__setP3 a b
  
  export
  p4 : (obj : DOMQuadInit) -> JSIO (UndefOr DOMPointInit)
  p4 a = primJS $ DOMQuadInit.prim__p4 a
  
  export
  setP4 : (obj : DOMQuadInit) -> (value : UndefOr DOMPointInit) -> JSIO ()
  setP4 a b = primJS $ DOMQuadInit.prim__setP4 a b

namespace DOMRectInit
  
  public export
  JSType DOMRectInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (x : UndefOr Double)
      -> (y : UndefOr Double)
      -> (width : UndefOr Double)
      -> (height : UndefOr Double)
      -> JSIO DOMRectInit
  new a b c d = primJS $ DOMRectInit.prim__new a b c d
  
  export
  height : (obj : DOMRectInit) -> JSIO (UndefOr Double)
  height a = primJS $ DOMRectInit.prim__height a
  
  export
  setHeight : (obj : DOMRectInit) -> (value : UndefOr Double) -> JSIO ()
  setHeight a b = primJS $ DOMRectInit.prim__setHeight a b
  
  export
  width : (obj : DOMRectInit) -> JSIO (UndefOr Double)
  width a = primJS $ DOMRectInit.prim__width a
  
  export
  setWidth : (obj : DOMRectInit) -> (value : UndefOr Double) -> JSIO ()
  setWidth a b = primJS $ DOMRectInit.prim__setWidth a b
  
  export
  x : (obj : DOMRectInit) -> JSIO (UndefOr Double)
  x a = primJS $ DOMRectInit.prim__x a
  
  export
  setX : (obj : DOMRectInit) -> (value : UndefOr Double) -> JSIO ()
  setX a b = primJS $ DOMRectInit.prim__setX a b
  
  export
  y : (obj : DOMRectInit) -> JSIO (UndefOr Double)
  y a = primJS $ DOMRectInit.prim__y a
  
  export
  setY : (obj : DOMRectInit) -> (value : UndefOr Double) -> JSIO ()
  setY a b = primJS $ DOMRectInit.prim__setY a b
