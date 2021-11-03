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
  fromMatrix :  (0 _ : JSType t1)
             => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
             -> (other : Optional t1)
             -> JSIO DOMMatrix
  fromMatrix a = primJS $ DOMMatrix.prim__fromMatrix (optUp a)

  export
  fromMatrix' : JSIO DOMMatrix
  fromMatrix' = primJS $ DOMMatrix.prim__fromMatrix undef

  export
  invertSelf : (obj : DOMMatrix) -> JSIO DOMMatrix
  invertSelf a = primJS $ DOMMatrix.prim__invertSelf a

  export
  multiplySelf :  (0 _ : JSType t1)
               => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
               -> (obj : DOMMatrix)
               -> (other : Optional t1)
               -> JSIO DOMMatrix
  multiplySelf a b = primJS $ DOMMatrix.prim__multiplySelf a (optUp b)

  export
  multiplySelf' : (obj : DOMMatrix) -> JSIO DOMMatrix
  multiplySelf' a = primJS $ DOMMatrix.prim__multiplySelf a undef

  export
  preMultiplySelf :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
                  -> (obj : DOMMatrix)
                  -> (other : Optional t1)
                  -> JSIO DOMMatrix
  preMultiplySelf a b = primJS $ DOMMatrix.prim__preMultiplySelf a (optUp b)

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

  export
  fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrixReadOnly
  fromFloat32Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat32Array a

  export
  fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrixReadOnly
  fromFloat64Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat64Array a

  export
  fromMatrix :  (0 _ : JSType t1)
             => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
             -> (other : Optional t1)
             -> JSIO DOMMatrixReadOnly
  fromMatrix a = primJS $ DOMMatrixReadOnly.prim__fromMatrix (optUp a)

  export
  fromMatrix' : JSIO DOMMatrixReadOnly
  fromMatrix' = primJS $ DOMMatrixReadOnly.prim__fromMatrix undef

  export
  a :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  a b = primJS $ DOMMatrixReadOnly.prim__a (up b)

  export
  b :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  b a = primJS $ DOMMatrixReadOnly.prim__b (up a)

  export
  c :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  c a = primJS $ DOMMatrixReadOnly.prim__c (up a)

  export
  d :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  d a = primJS $ DOMMatrixReadOnly.prim__d (up a)

  export
  e :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  e a = primJS $ DOMMatrixReadOnly.prim__e (up a)

  export
  f :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  f a = primJS $ DOMMatrixReadOnly.prim__f (up a)

  export
  is2D :  (0 _ : JSType t1)
       => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
       -> (obj : t1)
       -> JSIO Bool
  is2D a = tryJS "DOMMatrixReadOnly.is2D" $ DOMMatrixReadOnly.prim__is2D (up a)

  export
  isIdentity :  (0 _ : JSType t1)
             => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
             -> (obj : t1)
             -> JSIO Bool
  isIdentity a = tryJS "DOMMatrixReadOnly.isIdentity"
               $ DOMMatrixReadOnly.prim__isIdentity (up a)

  export
  m11 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m11 a = primJS $ DOMMatrixReadOnly.prim__m11 (up a)

  export
  m12 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m12 a = primJS $ DOMMatrixReadOnly.prim__m12 (up a)

  export
  m13 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m13 a = primJS $ DOMMatrixReadOnly.prim__m13 (up a)

  export
  m14 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m14 a = primJS $ DOMMatrixReadOnly.prim__m14 (up a)

  export
  m21 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m21 a = primJS $ DOMMatrixReadOnly.prim__m21 (up a)

  export
  m22 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m22 a = primJS $ DOMMatrixReadOnly.prim__m22 (up a)

  export
  m23 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m23 a = primJS $ DOMMatrixReadOnly.prim__m23 (up a)

  export
  m24 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m24 a = primJS $ DOMMatrixReadOnly.prim__m24 (up a)

  export
  m31 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m31 a = primJS $ DOMMatrixReadOnly.prim__m31 (up a)

  export
  m32 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m32 a = primJS $ DOMMatrixReadOnly.prim__m32 (up a)

  export
  m33 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m33 a = primJS $ DOMMatrixReadOnly.prim__m33 (up a)

  export
  m34 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m34 a = primJS $ DOMMatrixReadOnly.prim__m34 (up a)

  export
  m41 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m41 a = primJS $ DOMMatrixReadOnly.prim__m41 (up a)

  export
  m42 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m42 a = primJS $ DOMMatrixReadOnly.prim__m42 (up a)

  export
  m43 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m43 a = primJS $ DOMMatrixReadOnly.prim__m43 (up a)

  export
  m44 :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m44 a = primJS $ DOMMatrixReadOnly.prim__m44 (up a)

  export
  flipX :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO DOMMatrix
  flipX a = primJS $ DOMMatrixReadOnly.prim__flipX (up a)

  export
  flipY :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO DOMMatrix
  flipY a = primJS $ DOMMatrixReadOnly.prim__flipY (up a)

  export
  inverse :  (0 _ : JSType t1)
          => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
          -> (obj : t1)
          -> JSIO DOMMatrix
  inverse a = primJS $ DOMMatrixReadOnly.prim__inverse (up a)

  export
  multiply :  (0 _ : JSType t1)
           => (0 _ : JSType t2)
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
           -> (obj : t1)
           -> (other : Optional t2)
           -> JSIO DOMMatrix
  multiply a b = primJS $ DOMMatrixReadOnly.prim__multiply (up a) (optUp b)

  export
  multiply' :  (0 _ : JSType t1)
            => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
            -> (obj : t1)
            -> JSIO DOMMatrix
  multiply' a = primJS $ DOMMatrixReadOnly.prim__multiply (up a) undef

  export
  rotateAxisAngle :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                  -> (obj : t1)
                  -> (x : Optional Double)
                  -> (y : Optional Double)
                  -> (z : Optional Double)
                  -> (angle : Optional Double)
                  -> JSIO DOMMatrix
  rotateAxisAngle a b c d e = primJS
                            $ DOMMatrixReadOnly.prim__rotateAxisAngle (up a)
                                                                      (toFFI b)
                                                                      (toFFI c)
                                                                      (toFFI d)
                                                                      (toFFI e)

  export
  rotateAxisAngle' :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMMatrix
  rotateAxisAngle' a = primJS
                     $ DOMMatrixReadOnly.prim__rotateAxisAngle (up a)
                                                               undef
                                                               undef
                                                               undef
                                                               undef

  export
  rotate :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> (rotX : Optional Double)
         -> (rotY : Optional Double)
         -> (rotZ : Optional Double)
         -> JSIO DOMMatrix
  rotate a b c d = primJS
                 $ DOMMatrixReadOnly.prim__rotate (up a)
                                                  (toFFI b)
                                                  (toFFI c)
                                                  (toFFI d)

  export
  rotate' :  (0 _ : JSType t1)
          => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
          -> (obj : t1)
          -> JSIO DOMMatrix
  rotate' a = primJS $ DOMMatrixReadOnly.prim__rotate (up a) undef undef undef

  export
  rotateFromVector :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                   -> (obj : t1)
                   -> (x : Optional Double)
                   -> (y : Optional Double)
                   -> JSIO DOMMatrix
  rotateFromVector a b c = primJS
                         $ DOMMatrixReadOnly.prim__rotateFromVector (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)

  export
  rotateFromVector' :  (0 _ : JSType t1)
                    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                    -> (obj : t1)
                    -> JSIO DOMMatrix
  rotateFromVector' a = primJS
                      $ DOMMatrixReadOnly.prim__rotateFromVector (up a)
                                                                 undef
                                                                 undef

  export
  scale3d :  (0 _ : JSType t1)
          => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
          -> (obj : t1)
          -> (scale : Optional Double)
          -> (originX : Optional Double)
          -> (originY : Optional Double)
          -> (originZ : Optional Double)
          -> JSIO DOMMatrix
  scale3d a b c d e = primJS
                    $ DOMMatrixReadOnly.prim__scale3d (up a)
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)

  export
  scale3d' :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> (obj : t1)
           -> JSIO DOMMatrix
  scale3d' a = primJS
             $ DOMMatrixReadOnly.prim__scale3d (up a) undef undef undef undef

  export
  scale :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> (scaleX : Optional Double)
        -> (scaleY : Optional Double)
        -> (scaleZ : Optional Double)
        -> (originX : Optional Double)
        -> (originY : Optional Double)
        -> (originZ : Optional Double)
        -> JSIO DOMMatrix
  scale a b c d e f g = primJS
                      $ DOMMatrixReadOnly.prim__scale (up a)
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)
                                                      (toFFI f)
                                                      (toFFI g)

  export
  scale' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  scale' a = primJS
           $ DOMMatrixReadOnly.prim__scale (up a)
                                           undef
                                           undef
                                           undef
                                           undef
                                           undef
                                           undef

  export
  scaleNonUniform :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                  -> (obj : t1)
                  -> (scaleX : Optional Double)
                  -> (scaleY : Optional Double)
                  -> JSIO DOMMatrix
  scaleNonUniform a b c = primJS
                        $ DOMMatrixReadOnly.prim__scaleNonUniform (up a)
                                                                  (toFFI b)
                                                                  (toFFI c)

  export
  scaleNonUniform' :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMMatrix
  scaleNonUniform' a = primJS
                     $ DOMMatrixReadOnly.prim__scaleNonUniform (up a)
                                                               undef
                                                               undef

  export
  skewX :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> (sx : Optional Double)
        -> JSIO DOMMatrix
  skewX a b = primJS $ DOMMatrixReadOnly.prim__skewX (up a) (toFFI b)

  export
  skewX' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  skewX' a = primJS $ DOMMatrixReadOnly.prim__skewX (up a) undef

  export
  skewY :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> (sy : Optional Double)
        -> JSIO DOMMatrix
  skewY a b = primJS $ DOMMatrixReadOnly.prim__skewY (up a) (toFFI b)

  export
  skewY' :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  skewY' a = primJS $ DOMMatrixReadOnly.prim__skewY (up a) undef

  export
  toFloat32Array :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> (obj : t1)
                 -> JSIO Float32Array
  toFloat32Array a = primJS $ DOMMatrixReadOnly.prim__toFloat32Array (up a)

  export
  toFloat64Array :  (0 _ : JSType t1)
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> (obj : t1)
                 -> JSIO Float64Array
  toFloat64Array a = primJS $ DOMMatrixReadOnly.prim__toFloat64Array (up a)

  export
  toJSON :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMMatrixReadOnly.prim__toJSON (up a)

  export
  toString :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> (obj : t1)
           -> JSIO String
  toString a = primJS $ DOMMatrixReadOnly.prim__toString (up a)

  export
  transformPoint :  (0 _ : JSType t1)
                 => (0 _ : JSType t2)
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> {auto 0 _ : Elem DOMPointInit (Types t2)}
                 -> (obj : t1)
                 -> (point : Optional t2)
                 -> JSIO DOMPoint
  transformPoint a b = primJS
                     $ DOMMatrixReadOnly.prim__transformPoint (up a) (optUp b)

  export
  transformPoint' :  (0 _ : JSType t1)
                  => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                  -> (obj : t1)
                  -> JSIO DOMPoint
  transformPoint' a = primJS
                    $ DOMMatrixReadOnly.prim__transformPoint (up a) undef

  export
  translate :  (0 _ : JSType t1)
            => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
            -> (obj : t1)
            -> (tx : Optional Double)
            -> (ty : Optional Double)
            -> (tz : Optional Double)
            -> JSIO DOMMatrix
  translate a b c d = primJS
                    $ DOMMatrixReadOnly.prim__translate (up a)
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)

  export
  translate' :  (0 _ : JSType t1)
             => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  translate' a = primJS
               $ DOMMatrixReadOnly.prim__translate (up a) undef undef undef


namespace DOMPoint

  export
  fromPoint :  (0 _ : JSType t1)
            => {auto 0 _ : Elem DOMPointInit (Types t1)}
            -> (other : Optional t1)
            -> JSIO DOMPoint
  fromPoint a = primJS $ DOMPoint.prim__fromPoint (optUp a)

  export
  fromPoint' : JSIO DOMPoint
  fromPoint' = primJS $ DOMPoint.prim__fromPoint undef


namespace DOMPointReadOnly

  export
  fromPoint :  (0 _ : JSType t1)
            => {auto 0 _ : Elem DOMPointInit (Types t1)}
            -> (other : Optional t1)
            -> JSIO DOMPointReadOnly
  fromPoint a = primJS $ DOMPointReadOnly.prim__fromPoint (optUp a)

  export
  fromPoint' : JSIO DOMPointReadOnly
  fromPoint' = primJS $ DOMPointReadOnly.prim__fromPoint undef

  export
  w :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  w a = primJS $ DOMPointReadOnly.prim__w (up a)

  export
  x :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  x a = primJS $ DOMPointReadOnly.prim__x (up a)

  export
  y :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  y a = primJS $ DOMPointReadOnly.prim__y (up a)

  export
  z :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  z a = primJS $ DOMPointReadOnly.prim__z (up a)

  export
  matrixTransform :  (0 _ : JSType t1)
                  => (0 _ : JSType t2)
                  => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
                  -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
                  -> (obj : t1)
                  -> (matrix : Optional t2)
                  -> JSIO DOMPoint
  matrixTransform a b = primJS
                      $ DOMPointReadOnly.prim__matrixTransform (up a) (optUp b)

  export
  matrixTransform' :  (0 _ : JSType t1)
                   => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMPoint
  matrixTransform' a = primJS
                     $ DOMPointReadOnly.prim__matrixTransform (up a) undef

  export
  toJSON :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMPointReadOnly.prim__toJSON (up a)


namespace DOMQuad

  export
  fromQuad :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMQuadInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMQuad
  fromQuad a = primJS $ DOMQuad.prim__fromQuad (optUp a)

  export
  fromQuad' : JSIO DOMQuad
  fromQuad' = primJS $ DOMQuad.prim__fromQuad undef

  export
  fromRect :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMQuad
  fromRect a = primJS $ DOMQuad.prim__fromRect (optUp a)

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

  export
  fromRect :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMRect
  fromRect a = primJS $ DOMRect.prim__fromRect (optUp a)

  export
  fromRect' : JSIO DOMRect
  fromRect' = primJS $ DOMRect.prim__fromRect undef


namespace DOMRectList

  export
  length : (obj : DOMRectList) -> JSIO Bits32
  length a = primJS $ DOMRectList.prim__length a

  export
  item : (obj : DOMRectList) -> (index : Bits32) -> JSIO (Maybe DOMRect)
  item a b = tryJS "DOMRectList.item" $ DOMRectList.prim__item a b


namespace DOMRectReadOnly

  export
  fromRect :  (0 _ : JSType t1)
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMRectReadOnly
  fromRect a = primJS $ DOMRectReadOnly.prim__fromRect (optUp a)

  export
  fromRect' : JSIO DOMRectReadOnly
  fromRect' = primJS $ DOMRectReadOnly.prim__fromRect undef

  export
  bottom :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  bottom a = primJS $ DOMRectReadOnly.prim__bottom (up a)

  export
  height :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  height a = primJS $ DOMRectReadOnly.prim__height (up a)

  export
  left :  (0 _ : JSType t1)
       => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
       -> (obj : t1)
       -> JSIO Double
  left a = primJS $ DOMRectReadOnly.prim__left (up a)

  export
  right :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  right a = primJS $ DOMRectReadOnly.prim__right (up a)

  export
  top :  (0 _ : JSType t1)
      => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  top a = primJS $ DOMRectReadOnly.prim__top (up a)

  export
  width :  (0 _ : JSType t1)
        => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  width a = primJS $ DOMRectReadOnly.prim__width (up a)

  export
  x :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  x a = primJS $ DOMRectReadOnly.prim__x (up a)

  export
  y :  (0 _ : JSType t1)
    => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  y a = primJS $ DOMRectReadOnly.prim__y (up a)

  export
  toJSON :  (0 _ : JSType t1)
         => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMRectReadOnly.prim__toJSON (up a)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit

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
  a :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  a v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.geta"
                                 prim__a
                                 prim__setA
                                 (v :> DOMMatrix2DInit)

  export
  b :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  b v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getb"
                                 prim__b
                                 prim__setB
                                 (v :> DOMMatrix2DInit)

  export
  c :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  c v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getc"
                                 prim__c
                                 prim__setC
                                 (v :> DOMMatrix2DInit)

  export
  d :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  d v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getd"
                                 prim__d
                                 prim__setD
                                 (v :> DOMMatrix2DInit)

  export
  e :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  e v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.gete"
                                 prim__e
                                 prim__setE
                                 (v :> DOMMatrix2DInit)

  export
  f :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
    -> t
    -> Attribute False Optional Double
  f v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getf"
                                 prim__f
                                 prim__setF
                                 (v :> DOMMatrix2DInit)

  export
  m11 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m11 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm11"
                                   prim__m11
                                   prim__setM11
                                   (v :> DOMMatrix2DInit)

  export
  m12 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m12 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm12"
                                   prim__m12
                                   prim__setM12
                                   (v :> DOMMatrix2DInit)

  export
  m21 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m21 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm21"
                                   prim__m21
                                   prim__setM21
                                   (v :> DOMMatrix2DInit)

  export
  m22 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m22 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm22"
                                   prim__m22
                                   prim__setM22
                                   (v :> DOMMatrix2DInit)

  export
  m41 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m41 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm41"
                                   prim__m41
                                   prim__setM41
                                   (v :> DOMMatrix2DInit)

  export
  m42 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrix2DInit (Types t)}
      -> t
      -> Attribute False Optional Double
  m42 v = fromUndefOrPrimNoDefault "DOMMatrix2DInit.getm42"
                                   prim__m42
                                   prim__setM42
                                   (v :> DOMMatrix2DInit)


namespace DOMMatrixInit

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
  is2D :  (0 _ : JSType t)
       => {auto 0 _ : Elem DOMMatrixInit (Types t)}
       -> t
       -> Attribute False Optional Bool
  is2D v = fromUndefOrPrimNoDefault "DOMMatrixInit.getis2D"
                                    prim__is2D
                                    prim__setIs2D
                                    (v :> DOMMatrixInit)

  export
  m13 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m13 v = fromUndefOrPrim "DOMMatrixInit.getm13"
                          prim__m13
                          prim__setM13
                          0
                          (v :> DOMMatrixInit)

  export
  m14 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m14 v = fromUndefOrPrim "DOMMatrixInit.getm14"
                          prim__m14
                          prim__setM14
                          0
                          (v :> DOMMatrixInit)

  export
  m23 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m23 v = fromUndefOrPrim "DOMMatrixInit.getm23"
                          prim__m23
                          prim__setM23
                          0
                          (v :> DOMMatrixInit)

  export
  m24 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m24 v = fromUndefOrPrim "DOMMatrixInit.getm24"
                          prim__m24
                          prim__setM24
                          0
                          (v :> DOMMatrixInit)

  export
  m31 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m31 v = fromUndefOrPrim "DOMMatrixInit.getm31"
                          prim__m31
                          prim__setM31
                          0
                          (v :> DOMMatrixInit)

  export
  m32 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m32 v = fromUndefOrPrim "DOMMatrixInit.getm32"
                          prim__m32
                          prim__setM32
                          0
                          (v :> DOMMatrixInit)

  export
  m33 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m33 v = fromUndefOrPrim "DOMMatrixInit.getm33"
                          prim__m33
                          prim__setM33
                          1
                          (v :> DOMMatrixInit)

  export
  m34 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m34 v = fromUndefOrPrim "DOMMatrixInit.getm34"
                          prim__m34
                          prim__setM34
                          0
                          (v :> DOMMatrixInit)

  export
  m43 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m43 v = fromUndefOrPrim "DOMMatrixInit.getm43"
                          prim__m43
                          prim__setM43
                          0
                          (v :> DOMMatrixInit)

  export
  m44 :  (0 _ : JSType t)
      => {auto 0 _ : Elem DOMMatrixInit (Types t)}
      -> t
      -> Attribute True Optional Double
  m44 v = fromUndefOrPrim "DOMMatrixInit.getm44"
                          prim__m44
                          prim__setM44
                          1
                          (v :> DOMMatrixInit)


namespace DOMPointInit

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
  w :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMPointInit (Types t)}
    -> t
    -> Attribute True Optional Double
  w v = fromUndefOrPrim "DOMPointInit.getw"
                        prim__w
                        prim__setW
                        1
                        (v :> DOMPointInit)

  export
  x :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMPointInit (Types t)}
    -> t
    -> Attribute True Optional Double
  x v = fromUndefOrPrim "DOMPointInit.getx"
                        prim__x
                        prim__setX
                        0
                        (v :> DOMPointInit)

  export
  y :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMPointInit (Types t)}
    -> t
    -> Attribute True Optional Double
  y v = fromUndefOrPrim "DOMPointInit.gety"
                        prim__y
                        prim__setY
                        0
                        (v :> DOMPointInit)

  export
  z :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMPointInit (Types t)}
    -> t
    -> Attribute True Optional Double
  z v = fromUndefOrPrim "DOMPointInit.getz"
                        prim__z
                        prim__setZ
                        0
                        (v :> DOMPointInit)


namespace DOMQuadInit

  export
  new :  (0 _ : JSType t1)
      => (0 _ : JSType t2)
      => (0 _ : JSType t3)
      => (0 _ : JSType t4)
      => {auto 0 _ : Elem DOMPointInit (Types t1)}
      -> {auto 0 _ : Elem DOMPointInit (Types t2)}
      -> {auto 0 _ : Elem DOMPointInit (Types t3)}
      -> {auto 0 _ : Elem DOMPointInit (Types t4)}
      -> (p1 : Optional t1)
      -> (p2 : Optional t2)
      -> (p3 : Optional t3)
      -> (p4 : Optional t4)
      -> JSIO DOMQuadInit
  new a b c d = primJS
              $ DOMQuadInit.prim__new (optUp a) (optUp b) (optUp c) (optUp d)

  export
  new' : JSIO DOMQuadInit
  new' = primJS $ DOMQuadInit.prim__new undef undef undef undef

  export
  p1 :  (0 _ : JSType t)
     => {auto 0 _ : Elem DOMQuadInit (Types t)}
     -> t
     -> Attribute False Optional DOMPointInit
  p1 v = fromUndefOrPrimNoDefault "DOMQuadInit.getp1"
                                  prim__p1
                                  prim__setP1
                                  (v :> DOMQuadInit)

  export
  p2 :  (0 _ : JSType t)
     => {auto 0 _ : Elem DOMQuadInit (Types t)}
     -> t
     -> Attribute False Optional DOMPointInit
  p2 v = fromUndefOrPrimNoDefault "DOMQuadInit.getp2"
                                  prim__p2
                                  prim__setP2
                                  (v :> DOMQuadInit)

  export
  p3 :  (0 _ : JSType t)
     => {auto 0 _ : Elem DOMQuadInit (Types t)}
     -> t
     -> Attribute False Optional DOMPointInit
  p3 v = fromUndefOrPrimNoDefault "DOMQuadInit.getp3"
                                  prim__p3
                                  prim__setP3
                                  (v :> DOMQuadInit)

  export
  p4 :  (0 _ : JSType t)
     => {auto 0 _ : Elem DOMQuadInit (Types t)}
     -> t
     -> Attribute False Optional DOMPointInit
  p4 v = fromUndefOrPrimNoDefault "DOMQuadInit.getp4"
                                  prim__p4
                                  prim__setP4
                                  (v :> DOMQuadInit)


namespace DOMRectInit

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
  height :  (0 _ : JSType t)
         => {auto 0 _ : Elem DOMRectInit (Types t)}
         -> t
         -> Attribute True Optional Double
  height v = fromUndefOrPrim "DOMRectInit.getheight"
                             prim__height
                             prim__setHeight
                             0
                             (v :> DOMRectInit)

  export
  width :  (0 _ : JSType t)
        => {auto 0 _ : Elem DOMRectInit (Types t)}
        -> t
        -> Attribute True Optional Double
  width v = fromUndefOrPrim "DOMRectInit.getwidth"
                            prim__width
                            prim__setWidth
                            0
                            (v :> DOMRectInit)

  export
  x :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMRectInit (Types t)}
    -> t
    -> Attribute True Optional Double
  x v = fromUndefOrPrim "DOMRectInit.getx"
                        prim__x
                        prim__setX
                        0
                        (v :> DOMRectInit)

  export
  y :  (0 _ : JSType t)
    => {auto 0 _ : Elem DOMRectInit (Types t)}
    -> t
    -> Attribute True Optional Double
  y v = fromUndefOrPrim "DOMRectInit.gety"
                        prim__y
                        prim__setY
                        0
                        (v :> DOMRectInit)
