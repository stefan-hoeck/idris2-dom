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
  fromMatrix : (other : Optional DOMMatrixInit) -> JSIO DOMMatrix
  fromMatrix a = primJS $ DOMMatrix.prim__fromMatrix (toFFI a)

  export
  fromMatrix' : JSIO DOMMatrix
  fromMatrix' = primJS $ DOMMatrix.prim__fromMatrix undef
  
  export
  invertSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
  invertSelf a = primJS $ DOMMatrix.prim__invertSelf a
  
  export
  multiplySelf :  (obj : DOMMatrix)
               -> (other : Optional DOMMatrixInit)
               -> JSIO DOMMatrix
  multiplySelf a b = primJS $ DOMMatrix.prim__multiplySelf a (toFFI b)

  export
  multiplySelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  multiplySelf' a = primJS $ DOMMatrix.prim__multiplySelf a undef
  
  export
  preMultiplySelf :  (obj : DOMMatrix)
                  -> (other : Optional DOMMatrixInit)
                  -> JSIO DOMMatrix
  preMultiplySelf a b = primJS $ DOMMatrix.prim__preMultiplySelf a (toFFI b)

  export
  preMultiplySelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  preMultiplySelf' a = primJS $ DOMMatrix.prim__preMultiplySelf a undef
  
  export
  rotateAxisAngleSelf :  (obj : DOMMatrix)
                      -> (x : Optional Double)
                      -> (y : Optional Double)
                      -> (z : Optional Double)
                      -> (angle : Optional Double)
                      -> JSIO DOMMatrix
  rotateAxisAngleSelf a b c d e = primJS
                                $ DOMMatrix.prim__rotateAxisAngleSelf a
                                                                      (toFFI b)
                                                                      (toFFI c)
                                                                      (toFFI d)
                                                                      (toFFI e)

  export
  rotateAxisAngleSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  rotateAxisAngleSelf' a = primJS
                         $ DOMMatrix.prim__rotateAxisAngleSelf a
                                                               undef
                                                               undef
                                                               undef
                                                               undef
  
  export
  rotateFromVectorSelf :  (obj : DOMMatrix)
                       -> (x : Optional Double)
                       -> (y : Optional Double)
                       -> JSIO DOMMatrix
  rotateFromVectorSelf a b c = primJS
                             $ DOMMatrix.prim__rotateFromVectorSelf a
                                                                    (toFFI b)
                                                                    (toFFI c)

  export
  rotateFromVectorSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  rotateFromVectorSelf' a = primJS
                          $ DOMMatrix.prim__rotateFromVectorSelf a undef undef
  
  export
  rotateSelf :  (obj : DOMMatrix)
             -> (rotX : Optional Double)
             -> (rotY : Optional Double)
             -> (rotZ : Optional Double)
             -> JSIO DOMMatrix
  rotateSelf a b c d = primJS
                     $ DOMMatrix.prim__rotateSelf a
                                                  (toFFI b)
                                                  (toFFI c)
                                                  (toFFI d)

  export
  rotateSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  rotateSelf' a = primJS $ DOMMatrix.prim__rotateSelf a undef undef undef
  
  export
  scale3dSelf :  (obj : DOMMatrix)
              -> (scale : Optional Double)
              -> (originX : Optional Double)
              -> (originY : Optional Double)
              -> (originZ : Optional Double)
              -> JSIO DOMMatrix
  scale3dSelf a b c d e = primJS
                        $ DOMMatrix.prim__scale3dSelf a
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)

  export
  scale3dSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  scale3dSelf' a = primJS
                 $ DOMMatrix.prim__scale3dSelf a undef undef undef undef
  
  export
  scaleSelf :  (obj : DOMMatrix)
            -> (scaleX : Optional Double)
            -> (scaleY : Optional Double)
            -> (scaleZ : Optional Double)
            -> (originX : Optional Double)
            -> (originY : Optional Double)
            -> (originZ : Optional Double)
            -> JSIO DOMMatrix
  scaleSelf a b c d e f g = primJS
                          $ DOMMatrix.prim__scaleSelf a
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)
                                                      (toFFI f)
                                                      (toFFI g)

  export
  scaleSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  scaleSelf' a = primJS
               $ DOMMatrix.prim__scaleSelf a undef undef undef undef undef undef
  
  export
  setMatrixValue :  (obj : DOMMatrix)
                 -> (transformList : String)
                 -> JSIO DOMMatrix
  setMatrixValue a b = primJS $ DOMMatrix.prim__setMatrixValue a b
  
  export
  skewXSelf : (obj : DOMMatrix) -> (sx : Optional Double) -> JSIO DOMMatrix
  skewXSelf a b = primJS $ DOMMatrix.prim__skewXSelf a (toFFI b)

  export
  skewXSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  skewXSelf' a = primJS $ DOMMatrix.prim__skewXSelf a undef
  
  export
  skewYSelf : (obj : DOMMatrix) -> (sy : Optional Double) -> JSIO DOMMatrix
  skewYSelf a b = primJS $ DOMMatrix.prim__skewYSelf a (toFFI b)

  export
  skewYSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  skewYSelf' a = primJS $ DOMMatrix.prim__skewYSelf a undef
  
  export
  translateSelf :  (obj : DOMMatrix)
                -> (tx : Optional Double)
                -> (ty : Optional Double)
                -> (tz : Optional Double)
                -> JSIO DOMMatrix
  translateSelf a b c d = primJS
                        $ DOMMatrix.prim__translateSelf a
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)

  export
  translateSelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  translateSelf' a = primJS $ DOMMatrix.prim__translateSelf a undef undef undef

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
  fromMatrix : (other : Optional DOMMatrixInit) -> JSIO DOMMatrixReadOnly
  fromMatrix a = primJS $ DOMMatrixReadOnly.prim__fromMatrix (toFFI a)

  export
  fromMatrix' : JSIO DOMMatrixReadOnly
  fromMatrix' = primJS $ DOMMatrixReadOnly.prim__fromMatrix undef
  
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
  is2D : (obj : DOMMatrixReadOnly) -> JSIO Bool
  is2D a = tryJS "DOMMatrixReadOnly.is2D" $ DOMMatrixReadOnly.prim__is2D a
  
  export
  isIdentity : (obj : DOMMatrixReadOnly) -> JSIO Bool
  isIdentity a = tryJS "DOMMatrixReadOnly.isIdentity"
               $ DOMMatrixReadOnly.prim__isIdentity a
  
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
           -> (other : Optional DOMMatrixInit)
           -> JSIO DOMMatrix
  multiply a b = primJS $ DOMMatrixReadOnly.prim__multiply a (toFFI b)

  export
  multiply' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  multiply' a = primJS $ DOMMatrixReadOnly.prim__multiply a undef
  
  export
  rotateAxisAngle :  (obj : DOMMatrixReadOnly)
                  -> (x : Optional Double)
                  -> (y : Optional Double)
                  -> (z : Optional Double)
                  -> (angle : Optional Double)
                  -> JSIO DOMMatrix
  rotateAxisAngle a b c d e = primJS
                            $ DOMMatrixReadOnly.prim__rotateAxisAngle a
                                                                      (toFFI b)
                                                                      (toFFI c)
                                                                      (toFFI d)
                                                                      (toFFI e)

  export
  rotateAxisAngle' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  rotateAxisAngle' a = primJS
                     $ DOMMatrixReadOnly.prim__rotateAxisAngle a
                                                               undef
                                                               undef
                                                               undef
                                                               undef
  
  export
  rotate :  (obj : DOMMatrixReadOnly)
         -> (rotX : Optional Double)
         -> (rotY : Optional Double)
         -> (rotZ : Optional Double)
         -> JSIO DOMMatrix
  rotate a b c d = primJS
                 $ DOMMatrixReadOnly.prim__rotate a
                                                  (toFFI b)
                                                  (toFFI c)
                                                  (toFFI d)

  export
  rotate' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  rotate' a = primJS $ DOMMatrixReadOnly.prim__rotate a undef undef undef
  
  export
  rotateFromVector :  (obj : DOMMatrixReadOnly)
                   -> (x : Optional Double)
                   -> (y : Optional Double)
                   -> JSIO DOMMatrix
  rotateFromVector a b c = primJS
                         $ DOMMatrixReadOnly.prim__rotateFromVector a
                                                                    (toFFI b)
                                                                    (toFFI c)

  export
  rotateFromVector' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  rotateFromVector' a = primJS
                      $ DOMMatrixReadOnly.prim__rotateFromVector a undef undef
  
  export
  scale3d :  (obj : DOMMatrixReadOnly)
          -> (scale : Optional Double)
          -> (originX : Optional Double)
          -> (originY : Optional Double)
          -> (originZ : Optional Double)
          -> JSIO DOMMatrix
  scale3d a b c d e = primJS
                    $ DOMMatrixReadOnly.prim__scale3d a
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)

  export
  scale3d' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  scale3d' a = primJS
             $ DOMMatrixReadOnly.prim__scale3d a undef undef undef undef
  
  export
  scale :  (obj : DOMMatrixReadOnly)
        -> (scaleX : Optional Double)
        -> (scaleY : Optional Double)
        -> (scaleZ : Optional Double)
        -> (originX : Optional Double)
        -> (originY : Optional Double)
        -> (originZ : Optional Double)
        -> JSIO DOMMatrix
  scale a b c d e f g = primJS
                      $ DOMMatrixReadOnly.prim__scale a
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)
                                                      (toFFI f)
                                                      (toFFI g)

  export
  scale' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  scale' a = primJS
           $ DOMMatrixReadOnly.prim__scale a undef undef undef undef undef undef
  
  export
  scaleNonUniform :  (obj : DOMMatrixReadOnly)
                  -> (scaleX : Optional Double)
                  -> (scaleY : Optional Double)
                  -> JSIO DOMMatrix
  scaleNonUniform a b c = primJS
                        $ DOMMatrixReadOnly.prim__scaleNonUniform a
                                                                  (toFFI b)
                                                                  (toFFI c)

  export
  scaleNonUniform' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  scaleNonUniform' a = primJS
                     $ DOMMatrixReadOnly.prim__scaleNonUniform a undef undef
  
  export
  skewX : (obj : DOMMatrixReadOnly) -> (sx : Optional Double) -> JSIO DOMMatrix
  skewX a b = primJS $ DOMMatrixReadOnly.prim__skewX a (toFFI b)

  export
  skewX' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  skewX' a = primJS $ DOMMatrixReadOnly.prim__skewX a undef
  
  export
  skewY : (obj : DOMMatrixReadOnly) -> (sy : Optional Double) -> JSIO DOMMatrix
  skewY a b = primJS $ DOMMatrixReadOnly.prim__skewY a (toFFI b)

  export
  skewY' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  skewY' a = primJS $ DOMMatrixReadOnly.prim__skewY a undef
  
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
                 -> (point : Optional DOMPointInit)
                 -> JSIO DOMPoint
  transformPoint a b = primJS
                     $ DOMMatrixReadOnly.prim__transformPoint a (toFFI b)

  export
  transformPoint' : (obj : DOMMatrixReadOnly) -> JSIO DOMPoint
  transformPoint' a = primJS $ DOMMatrixReadOnly.prim__transformPoint a undef
  
  export
  translate :  (obj : DOMMatrixReadOnly)
            -> (tx : Optional Double)
            -> (ty : Optional Double)
            -> (tz : Optional Double)
            -> JSIO DOMMatrix
  translate a b c d = primJS
                    $ DOMMatrixReadOnly.prim__translate a
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)

  export
  translate' : (obj : DOMMatrixReadOnly) -> JSIO DOMMatrix
  translate' a = primJS $ DOMMatrixReadOnly.prim__translate a undef undef undef

namespace DOMPoint
  
  public export
  JSType DOMPoint where
    parents =  [ DOMPointReadOnly , Object ]

    mixins =  []
  
  export
  fromPoint : (other : Optional DOMPointInit) -> JSIO DOMPoint
  fromPoint a = primJS $ DOMPoint.prim__fromPoint (toFFI a)

  export
  fromPoint' : JSIO DOMPoint
  fromPoint' = primJS $ DOMPoint.prim__fromPoint undef

namespace DOMPointReadOnly
  
  public export
  JSType DOMPointReadOnly where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromPoint : (other : Optional DOMPointInit) -> JSIO DOMPointReadOnly
  fromPoint a = primJS $ DOMPointReadOnly.prim__fromPoint (toFFI a)

  export
  fromPoint' : JSIO DOMPointReadOnly
  fromPoint' = primJS $ DOMPointReadOnly.prim__fromPoint undef
  
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
                  -> (matrix : Optional DOMMatrixInit)
                  -> JSIO DOMPoint
  matrixTransform a b = primJS
                      $ DOMPointReadOnly.prim__matrixTransform a (toFFI b)

  export
  matrixTransform' : (obj : DOMPointReadOnly) -> JSIO DOMPoint
  matrixTransform' a = primJS $ DOMPointReadOnly.prim__matrixTransform a undef
  
  export
  toJSON : (obj : DOMPointReadOnly) -> JSIO Object
  toJSON a = primJS $ DOMPointReadOnly.prim__toJSON a

namespace DOMQuad
  
  public export
  JSType DOMQuad where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromQuad : (other : Optional DOMQuadInit) -> JSIO DOMQuad
  fromQuad a = primJS $ DOMQuad.prim__fromQuad (toFFI a)

  export
  fromQuad' : JSIO DOMQuad
  fromQuad' = primJS $ DOMQuad.prim__fromQuad undef
  
  export
  fromRect : (other : Optional DOMRectInit) -> JSIO DOMQuad
  fromRect a = primJS $ DOMQuad.prim__fromRect (toFFI a)

  export
  fromRect' : JSIO DOMQuad
  fromRect' = primJS $ DOMQuad.prim__fromRect undef
  
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
  fromRect : (other : Optional DOMRectInit) -> JSIO DOMRect
  fromRect a = primJS $ DOMRect.prim__fromRect (toFFI a)

  export
  fromRect' : JSIO DOMRect
  fromRect' = primJS $ DOMRect.prim__fromRect undef

namespace DOMRectList
  
  public export
  JSType DOMRectList where
    parents =  [ Object ]

    mixins =  []
  
  export
  length : (obj : DOMRectList) -> JSIO UInt32
  length a = primJS $ DOMRectList.prim__length a
  
  export
  item : (obj : DOMRectList) -> (index : UInt32) -> JSIO (Maybe DOMRect)
  item a b = tryJS "DOMRectList.item" $ DOMRectList.prim__item a b

namespace DOMRectReadOnly
  
  public export
  JSType DOMRectReadOnly where
    parents =  [ Object ]

    mixins =  []
  
  export
  fromRect : (other : Optional DOMRectInit) -> JSIO DOMRectReadOnly
  fromRect a = primJS $ DOMRectReadOnly.prim__fromRect (toFFI a)

  export
  fromRect' : JSIO DOMRectReadOnly
  fromRect' = primJS $ DOMRectReadOnly.prim__fromRect undef
  
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
  new :  (a : Optional Double)
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
  new a b c d e f g h i j k l = primJS
                              $ DOMMatrix2DInit.prim__new (toFFI a)
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
  new' : JSIO DOMMatrix2DInit
  new' = primJS
       $ DOMMatrix2DInit.prim__new undef
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
  a : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  a b = tryJS "DOMMatrix2DInit.a" $ DOMMatrix2DInit.prim__a b
  
  export
  setA : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setA a b = primJS $ DOMMatrix2DInit.prim__setA a (toFFI b)

  export
  setA' : (obj : DOMMatrix2DInit) -> JSIO ()
  setA' a = primJS $ DOMMatrix2DInit.prim__setA a undef
  
  export
  b : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  b a = tryJS "DOMMatrix2DInit.b" $ DOMMatrix2DInit.prim__b a
  
  export
  setB : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setB a b = primJS $ DOMMatrix2DInit.prim__setB a (toFFI b)

  export
  setB' : (obj : DOMMatrix2DInit) -> JSIO ()
  setB' a = primJS $ DOMMatrix2DInit.prim__setB a undef
  
  export
  c : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  c a = tryJS "DOMMatrix2DInit.c" $ DOMMatrix2DInit.prim__c a
  
  export
  setC : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setC a b = primJS $ DOMMatrix2DInit.prim__setC a (toFFI b)

  export
  setC' : (obj : DOMMatrix2DInit) -> JSIO ()
  setC' a = primJS $ DOMMatrix2DInit.prim__setC a undef
  
  export
  d : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  d a = tryJS "DOMMatrix2DInit.d" $ DOMMatrix2DInit.prim__d a
  
  export
  setD : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setD a b = primJS $ DOMMatrix2DInit.prim__setD a (toFFI b)

  export
  setD' : (obj : DOMMatrix2DInit) -> JSIO ()
  setD' a = primJS $ DOMMatrix2DInit.prim__setD a undef
  
  export
  e : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  e a = tryJS "DOMMatrix2DInit.e" $ DOMMatrix2DInit.prim__e a
  
  export
  setE : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setE a b = primJS $ DOMMatrix2DInit.prim__setE a (toFFI b)

  export
  setE' : (obj : DOMMatrix2DInit) -> JSIO ()
  setE' a = primJS $ DOMMatrix2DInit.prim__setE a undef
  
  export
  f : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  f a = tryJS "DOMMatrix2DInit.f" $ DOMMatrix2DInit.prim__f a
  
  export
  setF : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setF a b = primJS $ DOMMatrix2DInit.prim__setF a (toFFI b)

  export
  setF' : (obj : DOMMatrix2DInit) -> JSIO ()
  setF' a = primJS $ DOMMatrix2DInit.prim__setF a undef
  
  export
  m11 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m11 a = tryJS "DOMMatrix2DInit.m11" $ DOMMatrix2DInit.prim__m11 a
  
  export
  setM11 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM11 a b = primJS $ DOMMatrix2DInit.prim__setM11 a (toFFI b)

  export
  setM11' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM11' a = primJS $ DOMMatrix2DInit.prim__setM11 a undef
  
  export
  m12 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m12 a = tryJS "DOMMatrix2DInit.m12" $ DOMMatrix2DInit.prim__m12 a
  
  export
  setM12 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM12 a b = primJS $ DOMMatrix2DInit.prim__setM12 a (toFFI b)

  export
  setM12' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM12' a = primJS $ DOMMatrix2DInit.prim__setM12 a undef
  
  export
  m21 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m21 a = tryJS "DOMMatrix2DInit.m21" $ DOMMatrix2DInit.prim__m21 a
  
  export
  setM21 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM21 a b = primJS $ DOMMatrix2DInit.prim__setM21 a (toFFI b)

  export
  setM21' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM21' a = primJS $ DOMMatrix2DInit.prim__setM21 a undef
  
  export
  m22 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m22 a = tryJS "DOMMatrix2DInit.m22" $ DOMMatrix2DInit.prim__m22 a
  
  export
  setM22 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM22 a b = primJS $ DOMMatrix2DInit.prim__setM22 a (toFFI b)

  export
  setM22' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM22' a = primJS $ DOMMatrix2DInit.prim__setM22 a undef
  
  export
  m41 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m41 a = tryJS "DOMMatrix2DInit.m41" $ DOMMatrix2DInit.prim__m41 a
  
  export
  setM41 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM41 a b = primJS $ DOMMatrix2DInit.prim__setM41 a (toFFI b)

  export
  setM41' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM41' a = primJS $ DOMMatrix2DInit.prim__setM41 a undef
  
  export
  m42 : (obj : DOMMatrix2DInit) -> JSIO $ Optional Double
  m42 a = tryJS "DOMMatrix2DInit.m42" $ DOMMatrix2DInit.prim__m42 a
  
  export
  setM42 : (obj : DOMMatrix2DInit) -> (value : Optional Double) -> JSIO ()
  setM42 a b = primJS $ DOMMatrix2DInit.prim__setM42 a (toFFI b)

  export
  setM42' : (obj : DOMMatrix2DInit) -> JSIO ()
  setM42' a = primJS $ DOMMatrix2DInit.prim__setM42 a undef

namespace DOMMatrixInit
  
  public export
  JSType DOMMatrixInit where
    parents =  [ DOMMatrix2DInit , Object ]

    mixins =  []
  
  export
  new :  (m13 : Optional Double)
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
  new a b c d e f g h i j k = primJS
                            $ DOMMatrixInit.prim__new (toFFI a)
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
  new' : JSIO DOMMatrixInit
  new' = primJS
       $ DOMMatrixInit.prim__new undef
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
  is2D : (obj : DOMMatrixInit) -> JSIO $ Optional Bool
  is2D a = tryJS "DOMMatrixInit.is2D" $ DOMMatrixInit.prim__is2D a
  
  export
  setIs2D : (obj : DOMMatrixInit) -> (value : Optional Bool) -> JSIO ()
  setIs2D a b = primJS $ DOMMatrixInit.prim__setIs2D a (toFFI b)

  export
  setIs2D' : (obj : DOMMatrixInit) -> JSIO ()
  setIs2D' a = primJS $ DOMMatrixInit.prim__setIs2D a undef
  
  export
  m13 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m13 a = tryJS "DOMMatrixInit.m13" $ DOMMatrixInit.prim__m13 a
  
  export
  setM13 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM13 a b = primJS $ DOMMatrixInit.prim__setM13 a (toFFI b)

  export
  setM13' : (obj : DOMMatrixInit) -> JSIO ()
  setM13' a = primJS $ DOMMatrixInit.prim__setM13 a undef
  
  export
  m14 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m14 a = tryJS "DOMMatrixInit.m14" $ DOMMatrixInit.prim__m14 a
  
  export
  setM14 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM14 a b = primJS $ DOMMatrixInit.prim__setM14 a (toFFI b)

  export
  setM14' : (obj : DOMMatrixInit) -> JSIO ()
  setM14' a = primJS $ DOMMatrixInit.prim__setM14 a undef
  
  export
  m23 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m23 a = tryJS "DOMMatrixInit.m23" $ DOMMatrixInit.prim__m23 a
  
  export
  setM23 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM23 a b = primJS $ DOMMatrixInit.prim__setM23 a (toFFI b)

  export
  setM23' : (obj : DOMMatrixInit) -> JSIO ()
  setM23' a = primJS $ DOMMatrixInit.prim__setM23 a undef
  
  export
  m24 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m24 a = tryJS "DOMMatrixInit.m24" $ DOMMatrixInit.prim__m24 a
  
  export
  setM24 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM24 a b = primJS $ DOMMatrixInit.prim__setM24 a (toFFI b)

  export
  setM24' : (obj : DOMMatrixInit) -> JSIO ()
  setM24' a = primJS $ DOMMatrixInit.prim__setM24 a undef
  
  export
  m31 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m31 a = tryJS "DOMMatrixInit.m31" $ DOMMatrixInit.prim__m31 a
  
  export
  setM31 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM31 a b = primJS $ DOMMatrixInit.prim__setM31 a (toFFI b)

  export
  setM31' : (obj : DOMMatrixInit) -> JSIO ()
  setM31' a = primJS $ DOMMatrixInit.prim__setM31 a undef
  
  export
  m32 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m32 a = tryJS "DOMMatrixInit.m32" $ DOMMatrixInit.prim__m32 a
  
  export
  setM32 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM32 a b = primJS $ DOMMatrixInit.prim__setM32 a (toFFI b)

  export
  setM32' : (obj : DOMMatrixInit) -> JSIO ()
  setM32' a = primJS $ DOMMatrixInit.prim__setM32 a undef
  
  export
  m33 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m33 a = tryJS "DOMMatrixInit.m33" $ DOMMatrixInit.prim__m33 a
  
  export
  setM33 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM33 a b = primJS $ DOMMatrixInit.prim__setM33 a (toFFI b)

  export
  setM33' : (obj : DOMMatrixInit) -> JSIO ()
  setM33' a = primJS $ DOMMatrixInit.prim__setM33 a undef
  
  export
  m34 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m34 a = tryJS "DOMMatrixInit.m34" $ DOMMatrixInit.prim__m34 a
  
  export
  setM34 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM34 a b = primJS $ DOMMatrixInit.prim__setM34 a (toFFI b)

  export
  setM34' : (obj : DOMMatrixInit) -> JSIO ()
  setM34' a = primJS $ DOMMatrixInit.prim__setM34 a undef
  
  export
  m43 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m43 a = tryJS "DOMMatrixInit.m43" $ DOMMatrixInit.prim__m43 a
  
  export
  setM43 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM43 a b = primJS $ DOMMatrixInit.prim__setM43 a (toFFI b)

  export
  setM43' : (obj : DOMMatrixInit) -> JSIO ()
  setM43' a = primJS $ DOMMatrixInit.prim__setM43 a undef
  
  export
  m44 : (obj : DOMMatrixInit) -> JSIO $ Optional Double
  m44 a = tryJS "DOMMatrixInit.m44" $ DOMMatrixInit.prim__m44 a
  
  export
  setM44 : (obj : DOMMatrixInit) -> (value : Optional Double) -> JSIO ()
  setM44 a b = primJS $ DOMMatrixInit.prim__setM44 a (toFFI b)

  export
  setM44' : (obj : DOMMatrixInit) -> JSIO ()
  setM44' a = primJS $ DOMMatrixInit.prim__setM44 a undef

namespace DOMPointInit
  
  public export
  JSType DOMPointInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (x : Optional Double)
      -> (y : Optional Double)
      -> (z : Optional Double)
      -> (w : Optional Double)
      -> JSIO DOMPointInit
  new a b c d = primJS
              $ DOMPointInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new' : JSIO DOMPointInit
  new' = primJS $ DOMPointInit.prim__new undef undef undef undef
  
  export
  w : (obj : DOMPointInit) -> JSIO $ Optional Double
  w a = tryJS "DOMPointInit.w" $ DOMPointInit.prim__w a
  
  export
  setW : (obj : DOMPointInit) -> (value : Optional Double) -> JSIO ()
  setW a b = primJS $ DOMPointInit.prim__setW a (toFFI b)

  export
  setW' : (obj : DOMPointInit) -> JSIO ()
  setW' a = primJS $ DOMPointInit.prim__setW a undef
  
  export
  x : (obj : DOMPointInit) -> JSIO $ Optional Double
  x a = tryJS "DOMPointInit.x" $ DOMPointInit.prim__x a
  
  export
  setX : (obj : DOMPointInit) -> (value : Optional Double) -> JSIO ()
  setX a b = primJS $ DOMPointInit.prim__setX a (toFFI b)

  export
  setX' : (obj : DOMPointInit) -> JSIO ()
  setX' a = primJS $ DOMPointInit.prim__setX a undef
  
  export
  y : (obj : DOMPointInit) -> JSIO $ Optional Double
  y a = tryJS "DOMPointInit.y" $ DOMPointInit.prim__y a
  
  export
  setY : (obj : DOMPointInit) -> (value : Optional Double) -> JSIO ()
  setY a b = primJS $ DOMPointInit.prim__setY a (toFFI b)

  export
  setY' : (obj : DOMPointInit) -> JSIO ()
  setY' a = primJS $ DOMPointInit.prim__setY a undef
  
  export
  z : (obj : DOMPointInit) -> JSIO $ Optional Double
  z a = tryJS "DOMPointInit.z" $ DOMPointInit.prim__z a
  
  export
  setZ : (obj : DOMPointInit) -> (value : Optional Double) -> JSIO ()
  setZ a b = primJS $ DOMPointInit.prim__setZ a (toFFI b)

  export
  setZ' : (obj : DOMPointInit) -> JSIO ()
  setZ' a = primJS $ DOMPointInit.prim__setZ a undef

namespace DOMQuadInit
  
  public export
  JSType DOMQuadInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (p1 : Optional DOMPointInit)
      -> (p2 : Optional DOMPointInit)
      -> (p3 : Optional DOMPointInit)
      -> (p4 : Optional DOMPointInit)
      -> JSIO DOMQuadInit
  new a b c d = primJS
              $ DOMQuadInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new' : JSIO DOMQuadInit
  new' = primJS $ DOMQuadInit.prim__new undef undef undef undef
  
  export
  p1 : (obj : DOMQuadInit) -> JSIO $ Optional DOMPointInit
  p1 a = tryJS "DOMQuadInit.p1" $ DOMQuadInit.prim__p1 a
  
  export
  setP1 : (obj : DOMQuadInit) -> (value : Optional DOMPointInit) -> JSIO ()
  setP1 a b = primJS $ DOMQuadInit.prim__setP1 a (toFFI b)

  export
  setP1' : (obj : DOMQuadInit) -> JSIO ()
  setP1' a = primJS $ DOMQuadInit.prim__setP1 a undef
  
  export
  p2 : (obj : DOMQuadInit) -> JSIO $ Optional DOMPointInit
  p2 a = tryJS "DOMQuadInit.p2" $ DOMQuadInit.prim__p2 a
  
  export
  setP2 : (obj : DOMQuadInit) -> (value : Optional DOMPointInit) -> JSIO ()
  setP2 a b = primJS $ DOMQuadInit.prim__setP2 a (toFFI b)

  export
  setP2' : (obj : DOMQuadInit) -> JSIO ()
  setP2' a = primJS $ DOMQuadInit.prim__setP2 a undef
  
  export
  p3 : (obj : DOMQuadInit) -> JSIO $ Optional DOMPointInit
  p3 a = tryJS "DOMQuadInit.p3" $ DOMQuadInit.prim__p3 a
  
  export
  setP3 : (obj : DOMQuadInit) -> (value : Optional DOMPointInit) -> JSIO ()
  setP3 a b = primJS $ DOMQuadInit.prim__setP3 a (toFFI b)

  export
  setP3' : (obj : DOMQuadInit) -> JSIO ()
  setP3' a = primJS $ DOMQuadInit.prim__setP3 a undef
  
  export
  p4 : (obj : DOMQuadInit) -> JSIO $ Optional DOMPointInit
  p4 a = tryJS "DOMQuadInit.p4" $ DOMQuadInit.prim__p4 a
  
  export
  setP4 : (obj : DOMQuadInit) -> (value : Optional DOMPointInit) -> JSIO ()
  setP4 a b = primJS $ DOMQuadInit.prim__setP4 a (toFFI b)

  export
  setP4' : (obj : DOMQuadInit) -> JSIO ()
  setP4' a = primJS $ DOMQuadInit.prim__setP4 a undef

namespace DOMRectInit
  
  public export
  JSType DOMRectInit where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (x : Optional Double)
      -> (y : Optional Double)
      -> (width : Optional Double)
      -> (height : Optional Double)
      -> JSIO DOMRectInit
  new a b c d = primJS
              $ DOMRectInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new' : JSIO DOMRectInit
  new' = primJS $ DOMRectInit.prim__new undef undef undef undef
  
  export
  height : (obj : DOMRectInit) -> JSIO $ Optional Double
  height a = tryJS "DOMRectInit.height" $ DOMRectInit.prim__height a
  
  export
  setHeight : (obj : DOMRectInit) -> (value : Optional Double) -> JSIO ()
  setHeight a b = primJS $ DOMRectInit.prim__setHeight a (toFFI b)

  export
  setHeight' : (obj : DOMRectInit) -> JSIO ()
  setHeight' a = primJS $ DOMRectInit.prim__setHeight a undef
  
  export
  width : (obj : DOMRectInit) -> JSIO $ Optional Double
  width a = tryJS "DOMRectInit.width" $ DOMRectInit.prim__width a
  
  export
  setWidth : (obj : DOMRectInit) -> (value : Optional Double) -> JSIO ()
  setWidth a b = primJS $ DOMRectInit.prim__setWidth a (toFFI b)

  export
  setWidth' : (obj : DOMRectInit) -> JSIO ()
  setWidth' a = primJS $ DOMRectInit.prim__setWidth a undef
  
  export
  x : (obj : DOMRectInit) -> JSIO $ Optional Double
  x a = tryJS "DOMRectInit.x" $ DOMRectInit.prim__x a
  
  export
  setX : (obj : DOMRectInit) -> (value : Optional Double) -> JSIO ()
  setX a b = primJS $ DOMRectInit.prim__setX a (toFFI b)

  export
  setX' : (obj : DOMRectInit) -> JSIO ()
  setX' a = primJS $ DOMRectInit.prim__setX a undef
  
  export
  y : (obj : DOMRectInit) -> JSIO $ Optional Double
  y a = tryJS "DOMRectInit.y" $ DOMRectInit.prim__y a
  
  export
  setY : (obj : DOMRectInit) -> (value : Optional Double) -> JSIO ()
  setY a b = primJS $ DOMRectInit.prim__setY a (toFFI b)

  export
  setY' : (obj : DOMRectInit) -> JSIO ()
  setY' a = primJS $ DOMRectInit.prim__setY a undef
