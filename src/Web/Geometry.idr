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
  a : DOMMatrix2DInit -> Attribute False Optional Double
  a = fromUndefOrPrimNoDefault "DOMMatrix2DInit.geta" prim__a prim__setA
  
  export
  b : DOMMatrix2DInit -> Attribute False Optional Double
  b = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getb" prim__b prim__setB
  
  export
  c : DOMMatrix2DInit -> Attribute False Optional Double
  c = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getc" prim__c prim__setC
  
  export
  d : DOMMatrix2DInit -> Attribute False Optional Double
  d = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getd" prim__d prim__setD
  
  export
  e : DOMMatrix2DInit -> Attribute False Optional Double
  e = fromUndefOrPrimNoDefault "DOMMatrix2DInit.gete" prim__e prim__setE
  
  export
  f : DOMMatrix2DInit -> Attribute False Optional Double
  f = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getf" prim__f prim__setF
  
  export
  m11 : DOMMatrix2DInit -> Attribute False Optional Double
  m11 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm11" prim__m11 prim__setM11
  
  export
  m12 : DOMMatrix2DInit -> Attribute False Optional Double
  m12 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm12" prim__m12 prim__setM12
  
  export
  m21 : DOMMatrix2DInit -> Attribute False Optional Double
  m21 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm21" prim__m21 prim__setM21
  
  export
  m22 : DOMMatrix2DInit -> Attribute False Optional Double
  m22 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm22" prim__m22 prim__setM22
  
  export
  m41 : DOMMatrix2DInit -> Attribute False Optional Double
  m41 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm41" prim__m41 prim__setM41
  
  export
  m42 : DOMMatrix2DInit -> Attribute False Optional Double
  m42 = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm42" prim__m42 prim__setM42

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
  is2D : DOMMatrixInit -> Attribute False Optional Bool
  is2D = fromUndefOrPrimNoDefault "DOMMatrixInit.getis2D"
                                  prim__is2D
                                  prim__setIs2D
  
  export
  m13 : DOMMatrixInit -> Attribute True Optional Double
  m13 = fromUndefOrPrim "DOMMatrixInit.getm13" prim__m13 prim__setM13 0
  
  export
  m14 : DOMMatrixInit -> Attribute True Optional Double
  m14 = fromUndefOrPrim "DOMMatrixInit.getm14" prim__m14 prim__setM14 0
  
  export
  m23 : DOMMatrixInit -> Attribute True Optional Double
  m23 = fromUndefOrPrim "DOMMatrixInit.getm23" prim__m23 prim__setM23 0
  
  export
  m24 : DOMMatrixInit -> Attribute True Optional Double
  m24 = fromUndefOrPrim "DOMMatrixInit.getm24" prim__m24 prim__setM24 0
  
  export
  m31 : DOMMatrixInit -> Attribute True Optional Double
  m31 = fromUndefOrPrim "DOMMatrixInit.getm31" prim__m31 prim__setM31 0
  
  export
  m32 : DOMMatrixInit -> Attribute True Optional Double
  m32 = fromUndefOrPrim "DOMMatrixInit.getm32" prim__m32 prim__setM32 0
  
  export
  m33 : DOMMatrixInit -> Attribute True Optional Double
  m33 = fromUndefOrPrim "DOMMatrixInit.getm33" prim__m33 prim__setM33 1
  
  export
  m34 : DOMMatrixInit -> Attribute True Optional Double
  m34 = fromUndefOrPrim "DOMMatrixInit.getm34" prim__m34 prim__setM34 0
  
  export
  m43 : DOMMatrixInit -> Attribute True Optional Double
  m43 = fromUndefOrPrim "DOMMatrixInit.getm43" prim__m43 prim__setM43 0
  
  export
  m44 : DOMMatrixInit -> Attribute True Optional Double
  m44 = fromUndefOrPrim "DOMMatrixInit.getm44" prim__m44 prim__setM44 1

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
  w : DOMPointInit -> Attribute True Optional Double
  w = fromUndefOrPrim "DOMPointInit.getw" prim__w prim__setW 1
  
  export
  x : DOMPointInit -> Attribute True Optional Double
  x = fromUndefOrPrim "DOMPointInit.getx" prim__x prim__setX 0
  
  export
  y : DOMPointInit -> Attribute True Optional Double
  y = fromUndefOrPrim "DOMPointInit.gety" prim__y prim__setY 0
  
  export
  z : DOMPointInit -> Attribute True Optional Double
  z = fromUndefOrPrim "DOMPointInit.getz" prim__z prim__setZ 0

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
  p1 : DOMQuadInit -> Attribute False Optional DOMPointInit
  p1 = fromUndefOrPrimNoDefault "DOMQuadInit.getp1" prim__p1 prim__setP1
  
  export
  p2 : DOMQuadInit -> Attribute False Optional DOMPointInit
  p2 = fromUndefOrPrimNoDefault "DOMQuadInit.getp2" prim__p2 prim__setP2
  
  export
  p3 : DOMQuadInit -> Attribute False Optional DOMPointInit
  p3 = fromUndefOrPrimNoDefault "DOMQuadInit.getp3" prim__p3 prim__setP3
  
  export
  p4 : DOMQuadInit -> Attribute False Optional DOMPointInit
  p4 = fromUndefOrPrimNoDefault "DOMQuadInit.getp4" prim__p4 prim__setP4

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
  height : DOMRectInit -> Attribute True Optional Double
  height = fromUndefOrPrim "DOMRectInit.getheight"
                           prim__height
                           prim__setHeight
                           0
  
  export
  width : DOMRectInit -> Attribute True Optional Double
  width = fromUndefOrPrim "DOMRectInit.getwidth" prim__width prim__setWidth 0
  
  export
  x : DOMRectInit -> Attribute True Optional Double
  x = fromUndefOrPrim "DOMRectInit.getx" prim__x prim__setX 0
  
  export
  y : DOMRectInit -> Attribute True Optional Double
  y = fromUndefOrPrim "DOMRectInit.gety" prim__y prim__setY 0
