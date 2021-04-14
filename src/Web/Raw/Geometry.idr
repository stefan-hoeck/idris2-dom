module Web.Raw.Geometry
 
import JS
import Web.Internal.GeometryPrim
import Web.Internal.Types

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
  fromMatrix :  JSType t1
             => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
             -> (other : Optional t1)
             -> JSIO DOMMatrix
  fromMatrix a = primJS $ DOMMatrix.prim__fromMatrix (optUp a)

  export
  fromMatrix' : JSIO DOMMatrix
  fromMatrix' = primJS $ DOMMatrix.prim__fromMatrix undef
  
  export
  invertSelf :  JSType t1
             => {auto 0 _ : Elem DOMMatrix (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  invertSelf a = primJS $ DOMMatrix.prim__invertSelf (up a)
  
  export
  multiplySelf :  JSType t1
               => JSType t2
               => {auto 0 _ : Elem DOMMatrix (Types t1)}
               -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
               -> (obj : t1)
               -> (other : Optional t2)
               -> JSIO DOMMatrix
  multiplySelf a b = primJS $ DOMMatrix.prim__multiplySelf (up a) (optUp b)

  export
  multiplySelf' :  JSType t1
                => {auto 0 _ : Elem DOMMatrix (Types t1)}
                -> (obj : t1)
                -> JSIO DOMMatrix
  multiplySelf' a = primJS $ DOMMatrix.prim__multiplySelf (up a) undef
  
  export
  preMultiplySelf :  JSType t1
                  => JSType t2
                  => {auto 0 _ : Elem DOMMatrix (Types t1)}
                  -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
                  -> (obj : t1)
                  -> (other : Optional t2)
                  -> JSIO DOMMatrix
  preMultiplySelf a b = primJS
                      $ DOMMatrix.prim__preMultiplySelf (up a) (optUp b)

  export
  preMultiplySelf' :  JSType t1
                   => {auto 0 _ : Elem DOMMatrix (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMMatrix
  preMultiplySelf' a = primJS $ DOMMatrix.prim__preMultiplySelf (up a) undef
  
  export
  rotateAxisAngleSelf :  JSType t1
                      => {auto 0 _ : Elem DOMMatrix (Types t1)}
                      -> (obj : t1)
                      -> (x : Optional Double)
                      -> (y : Optional Double)
                      -> (z : Optional Double)
                      -> (angle : Optional Double)
                      -> JSIO DOMMatrix
  rotateAxisAngleSelf a b c d e = primJS
                                $ DOMMatrix.prim__rotateAxisAngleSelf (up a)
                                                                      (toFFI b)
                                                                      (toFFI c)
                                                                      (toFFI d)
                                                                      (toFFI e)

  export
  rotateAxisAngleSelf' :  JSType t1
                       => {auto 0 _ : Elem DOMMatrix (Types t1)}
                       -> (obj : t1)
                       -> JSIO DOMMatrix
  rotateAxisAngleSelf' a = primJS
                         $ DOMMatrix.prim__rotateAxisAngleSelf (up a)
                                                               undef
                                                               undef
                                                               undef
                                                               undef
  
  export
  rotateFromVectorSelf :  JSType t1
                       => {auto 0 _ : Elem DOMMatrix (Types t1)}
                       -> (obj : t1)
                       -> (x : Optional Double)
                       -> (y : Optional Double)
                       -> JSIO DOMMatrix
  rotateFromVectorSelf a b c = primJS
                             $ DOMMatrix.prim__rotateFromVectorSelf (up a)
                                                                    (toFFI b)
                                                                    (toFFI c)

  export
  rotateFromVectorSelf' :  JSType t1
                        => {auto 0 _ : Elem DOMMatrix (Types t1)}
                        -> (obj : t1)
                        -> JSIO DOMMatrix
  rotateFromVectorSelf' a = primJS
                          $ DOMMatrix.prim__rotateFromVectorSelf (up a)
                                                                 undef
                                                                 undef
  
  export
  rotateSelf :  JSType t1
             => {auto 0 _ : Elem DOMMatrix (Types t1)}
             -> (obj : t1)
             -> (rotX : Optional Double)
             -> (rotY : Optional Double)
             -> (rotZ : Optional Double)
             -> JSIO DOMMatrix
  rotateSelf a b c d = primJS
                     $ DOMMatrix.prim__rotateSelf (up a)
                                                  (toFFI b)
                                                  (toFFI c)
                                                  (toFFI d)

  export
  rotateSelf' :  JSType t1
              => {auto 0 _ : Elem DOMMatrix (Types t1)}
              -> (obj : t1)
              -> JSIO DOMMatrix
  rotateSelf' a = primJS $ DOMMatrix.prim__rotateSelf (up a) undef undef undef
  
  export
  scale3dSelf :  JSType t1
              => {auto 0 _ : Elem DOMMatrix (Types t1)}
              -> (obj : t1)
              -> (scale : Optional Double)
              -> (originX : Optional Double)
              -> (originY : Optional Double)
              -> (originZ : Optional Double)
              -> JSIO DOMMatrix
  scale3dSelf a b c d e = primJS
                        $ DOMMatrix.prim__scale3dSelf (up a)
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)

  export
  scale3dSelf' :  JSType t1
               => {auto 0 _ : Elem DOMMatrix (Types t1)}
               -> (obj : t1)
               -> JSIO DOMMatrix
  scale3dSelf' a = primJS
                 $ DOMMatrix.prim__scale3dSelf (up a) undef undef undef undef
  
  export
  scaleSelf :  JSType t1
            => {auto 0 _ : Elem DOMMatrix (Types t1)}
            -> (obj : t1)
            -> (scaleX : Optional Double)
            -> (scaleY : Optional Double)
            -> (scaleZ : Optional Double)
            -> (originX : Optional Double)
            -> (originY : Optional Double)
            -> (originZ : Optional Double)
            -> JSIO DOMMatrix
  scaleSelf a b c d e f g = primJS
                          $ DOMMatrix.prim__scaleSelf (up a)
                                                      (toFFI b)
                                                      (toFFI c)
                                                      (toFFI d)
                                                      (toFFI e)
                                                      (toFFI f)
                                                      (toFFI g)

  export
  scaleSelf' :  JSType t1
             => {auto 0 _ : Elem DOMMatrix (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  scaleSelf' a = primJS
               $ DOMMatrix.prim__scaleSelf (up a)
                                           undef
                                           undef
                                           undef
                                           undef
                                           undef
                                           undef
  
  export
  setMatrixValue :  JSType t1
                 => {auto 0 _ : Elem DOMMatrix (Types t1)}
                 -> (obj : t1)
                 -> (transformList : String)
                 -> JSIO DOMMatrix
  setMatrixValue a b = primJS $ DOMMatrix.prim__setMatrixValue (up a) b
  
  export
  skewXSelf :  JSType t1
            => {auto 0 _ : Elem DOMMatrix (Types t1)}
            -> (obj : t1)
            -> (sx : Optional Double)
            -> JSIO DOMMatrix
  skewXSelf a b = primJS $ DOMMatrix.prim__skewXSelf (up a) (toFFI b)

  export
  skewXSelf' :  JSType t1
             => {auto 0 _ : Elem DOMMatrix (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  skewXSelf' a = primJS $ DOMMatrix.prim__skewXSelf (up a) undef
  
  export
  skewYSelf :  JSType t1
            => {auto 0 _ : Elem DOMMatrix (Types t1)}
            -> (obj : t1)
            -> (sy : Optional Double)
            -> JSIO DOMMatrix
  skewYSelf a b = primJS $ DOMMatrix.prim__skewYSelf (up a) (toFFI b)

  export
  skewYSelf' :  JSType t1
             => {auto 0 _ : Elem DOMMatrix (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  skewYSelf' a = primJS $ DOMMatrix.prim__skewYSelf (up a) undef
  
  export
  translateSelf :  JSType t1
                => {auto 0 _ : Elem DOMMatrix (Types t1)}
                -> (obj : t1)
                -> (tx : Optional Double)
                -> (ty : Optional Double)
                -> (tz : Optional Double)
                -> JSIO DOMMatrix
  translateSelf a b c d = primJS
                        $ DOMMatrix.prim__translateSelf (up a)
                                                        (toFFI b)
                                                        (toFFI c)
                                                        (toFFI d)

  export
  translateSelf' :  JSType t1
                 => {auto 0 _ : Elem DOMMatrix (Types t1)}
                 -> (obj : t1)
                 -> JSIO DOMMatrix
  translateSelf' a = primJS
                   $ DOMMatrix.prim__translateSelf (up a) undef undef undef

namespace DOMMatrixReadOnly
  
  export
  fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrixReadOnly
  fromFloat32Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat32Array a
  
  export
  fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrixReadOnly
  fromFloat64Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat64Array a
  
  export
  fromMatrix :  JSType t1
             => {auto 0 _ : Elem DOMMatrixInit (Types t1)}
             -> (other : Optional t1)
             -> JSIO DOMMatrixReadOnly
  fromMatrix a = primJS $ DOMMatrixReadOnly.prim__fromMatrix (optUp a)

  export
  fromMatrix' : JSIO DOMMatrixReadOnly
  fromMatrix' = primJS $ DOMMatrixReadOnly.prim__fromMatrix undef
  
  export
  a :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  a b = primJS $ DOMMatrixReadOnly.prim__a (up b)
  
  export
  b :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  b a = primJS $ DOMMatrixReadOnly.prim__b (up a)
  
  export
  c :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  c a = primJS $ DOMMatrixReadOnly.prim__c (up a)
  
  export
  d :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  d a = primJS $ DOMMatrixReadOnly.prim__d (up a)
  
  export
  e :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  e a = primJS $ DOMMatrixReadOnly.prim__e (up a)
  
  export
  f :  JSType t1
    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  f a = primJS $ DOMMatrixReadOnly.prim__f (up a)
  
  export
  is2D :  JSType t1
       => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
       -> (obj : t1)
       -> JSIO Bool
  is2D a = tryJS "DOMMatrixReadOnly.is2D" $ DOMMatrixReadOnly.prim__is2D (up a)
  
  export
  isIdentity :  JSType t1
             => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
             -> (obj : t1)
             -> JSIO Bool
  isIdentity a = tryJS "DOMMatrixReadOnly.isIdentity"
               $ DOMMatrixReadOnly.prim__isIdentity (up a)
  
  export
  m11 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m11 a = primJS $ DOMMatrixReadOnly.prim__m11 (up a)
  
  export
  m12 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m12 a = primJS $ DOMMatrixReadOnly.prim__m12 (up a)
  
  export
  m13 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m13 a = primJS $ DOMMatrixReadOnly.prim__m13 (up a)
  
  export
  m14 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m14 a = primJS $ DOMMatrixReadOnly.prim__m14 (up a)
  
  export
  m21 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m21 a = primJS $ DOMMatrixReadOnly.prim__m21 (up a)
  
  export
  m22 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m22 a = primJS $ DOMMatrixReadOnly.prim__m22 (up a)
  
  export
  m23 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m23 a = primJS $ DOMMatrixReadOnly.prim__m23 (up a)
  
  export
  m24 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m24 a = primJS $ DOMMatrixReadOnly.prim__m24 (up a)
  
  export
  m31 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m31 a = primJS $ DOMMatrixReadOnly.prim__m31 (up a)
  
  export
  m32 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m32 a = primJS $ DOMMatrixReadOnly.prim__m32 (up a)
  
  export
  m33 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m33 a = primJS $ DOMMatrixReadOnly.prim__m33 (up a)
  
  export
  m34 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m34 a = primJS $ DOMMatrixReadOnly.prim__m34 (up a)
  
  export
  m41 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m41 a = primJS $ DOMMatrixReadOnly.prim__m41 (up a)
  
  export
  m42 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m42 a = primJS $ DOMMatrixReadOnly.prim__m42 (up a)
  
  export
  m43 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m43 a = primJS $ DOMMatrixReadOnly.prim__m43 (up a)
  
  export
  m44 :  JSType t1
      => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  m44 a = primJS $ DOMMatrixReadOnly.prim__m44 (up a)
  
  export
  flipX :  JSType t1
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO DOMMatrix
  flipX a = primJS $ DOMMatrixReadOnly.prim__flipX (up a)
  
  export
  flipY :  JSType t1
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO DOMMatrix
  flipY a = primJS $ DOMMatrixReadOnly.prim__flipY (up a)
  
  export
  inverse :  JSType t1
          => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
          -> (obj : t1)
          -> JSIO DOMMatrix
  inverse a = primJS $ DOMMatrixReadOnly.prim__inverse (up a)
  
  export
  multiply :  JSType t1
           => JSType t2
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
           -> (obj : t1)
           -> (other : Optional t2)
           -> JSIO DOMMatrix
  multiply a b = primJS $ DOMMatrixReadOnly.prim__multiply (up a) (optUp b)

  export
  multiply' :  JSType t1
            => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
            -> (obj : t1)
            -> JSIO DOMMatrix
  multiply' a = primJS $ DOMMatrixReadOnly.prim__multiply (up a) undef
  
  export
  rotateAxisAngle :  JSType t1
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
  rotateAxisAngle' :  JSType t1
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
  rotate :  JSType t1
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
  rotate' :  JSType t1
          => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
          -> (obj : t1)
          -> JSIO DOMMatrix
  rotate' a = primJS $ DOMMatrixReadOnly.prim__rotate (up a) undef undef undef
  
  export
  rotateFromVector :  JSType t1
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
  rotateFromVector' :  JSType t1
                    => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                    -> (obj : t1)
                    -> JSIO DOMMatrix
  rotateFromVector' a = primJS
                      $ DOMMatrixReadOnly.prim__rotateFromVector (up a)
                                                                 undef
                                                                 undef
  
  export
  scale3d :  JSType t1
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
  scale3d' :  JSType t1
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> (obj : t1)
           -> JSIO DOMMatrix
  scale3d' a = primJS
             $ DOMMatrixReadOnly.prim__scale3d (up a) undef undef undef undef
  
  export
  scale :  JSType t1
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
  scale' :  JSType t1
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
  scaleNonUniform :  JSType t1
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
  scaleNonUniform' :  JSType t1
                   => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMMatrix
  scaleNonUniform' a = primJS
                     $ DOMMatrixReadOnly.prim__scaleNonUniform (up a)
                                                               undef
                                                               undef
  
  export
  skewX :  JSType t1
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> (sx : Optional Double)
        -> JSIO DOMMatrix
  skewX a b = primJS $ DOMMatrixReadOnly.prim__skewX (up a) (toFFI b)

  export
  skewX' :  JSType t1
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  skewX' a = primJS $ DOMMatrixReadOnly.prim__skewX (up a) undef
  
  export
  skewY :  JSType t1
        => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
        -> (obj : t1)
        -> (sy : Optional Double)
        -> JSIO DOMMatrix
  skewY a b = primJS $ DOMMatrixReadOnly.prim__skewY (up a) (toFFI b)

  export
  skewY' :  JSType t1
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  skewY' a = primJS $ DOMMatrixReadOnly.prim__skewY (up a) undef
  
  export
  toFloat32Array :  JSType t1
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> (obj : t1)
                 -> JSIO Float32Array
  toFloat32Array a = primJS $ DOMMatrixReadOnly.prim__toFloat32Array (up a)
  
  export
  toFloat64Array :  JSType t1
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> (obj : t1)
                 -> JSIO Float64Array
  toFloat64Array a = primJS $ DOMMatrixReadOnly.prim__toFloat64Array (up a)
  
  export
  toJSON :  JSType t1
         => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMMatrixReadOnly.prim__toJSON (up a)
  
  export
  toString :  JSType t1
           => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
           -> (obj : t1)
           -> JSIO String
  toString a = primJS $ DOMMatrixReadOnly.prim__toString (up a)
  
  export
  transformPoint :  JSType t1
                 => JSType t2
                 => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                 -> {auto 0 _ : Elem DOMPointInit (Types t2)}
                 -> (obj : t1)
                 -> (point : Optional t2)
                 -> JSIO DOMPoint
  transformPoint a b = primJS
                     $ DOMMatrixReadOnly.prim__transformPoint (up a) (optUp b)

  export
  transformPoint' :  JSType t1
                  => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
                  -> (obj : t1)
                  -> JSIO DOMPoint
  transformPoint' a = primJS
                    $ DOMMatrixReadOnly.prim__transformPoint (up a) undef
  
  export
  translate :  JSType t1
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
  translate' :  JSType t1
             => {auto 0 _ : Elem DOMMatrixReadOnly (Types t1)}
             -> (obj : t1)
             -> JSIO DOMMatrix
  translate' a = primJS
               $ DOMMatrixReadOnly.prim__translate (up a) undef undef undef

namespace DOMPoint
  
  export
  fromPoint :  JSType t1
            => {auto 0 _ : Elem DOMPointInit (Types t1)}
            -> (other : Optional t1)
            -> JSIO DOMPoint
  fromPoint a = primJS $ DOMPoint.prim__fromPoint (optUp a)

  export
  fromPoint' : JSIO DOMPoint
  fromPoint' = primJS $ DOMPoint.prim__fromPoint undef

namespace DOMPointReadOnly
  
  export
  fromPoint :  JSType t1
            => {auto 0 _ : Elem DOMPointInit (Types t1)}
            -> (other : Optional t1)
            -> JSIO DOMPointReadOnly
  fromPoint a = primJS $ DOMPointReadOnly.prim__fromPoint (optUp a)

  export
  fromPoint' : JSIO DOMPointReadOnly
  fromPoint' = primJS $ DOMPointReadOnly.prim__fromPoint undef
  
  export
  w :  JSType t1
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  w a = primJS $ DOMPointReadOnly.prim__w (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  x a = primJS $ DOMPointReadOnly.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  y a = primJS $ DOMPointReadOnly.prim__y (up a)
  
  export
  z :  JSType t1
    => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  z a = primJS $ DOMPointReadOnly.prim__z (up a)
  
  export
  matrixTransform :  JSType t1
                  => JSType t2
                  => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
                  -> {auto 0 _ : Elem DOMMatrixInit (Types t2)}
                  -> (obj : t1)
                  -> (matrix : Optional t2)
                  -> JSIO DOMPoint
  matrixTransform a b = primJS
                      $ DOMPointReadOnly.prim__matrixTransform (up a) (optUp b)

  export
  matrixTransform' :  JSType t1
                   => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMPoint
  matrixTransform' a = primJS
                     $ DOMPointReadOnly.prim__matrixTransform (up a) undef
  
  export
  toJSON :  JSType t1
         => {auto 0 _ : Elem DOMPointReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMPointReadOnly.prim__toJSON (up a)

namespace DOMQuad
  
  export
  fromQuad :  JSType t1
           => {auto 0 _ : Elem DOMQuadInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMQuad
  fromQuad a = primJS $ DOMQuad.prim__fromQuad (optUp a)

  export
  fromQuad' : JSIO DOMQuad
  fromQuad' = primJS $ DOMQuad.prim__fromQuad undef
  
  export
  fromRect :  JSType t1
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMQuad
  fromRect a = primJS $ DOMQuad.prim__fromRect (optUp a)

  export
  fromRect' : JSIO DOMQuad
  fromRect' = primJS $ DOMQuad.prim__fromRect undef
  
  export
  p1 :  JSType t1
     => {auto 0 _ : Elem DOMQuad (Types t1)}
     -> (obj : t1)
     -> JSIO DOMPoint
  p1 a = primJS $ DOMQuad.prim__p1 (up a)
  
  export
  p2 :  JSType t1
     => {auto 0 _ : Elem DOMQuad (Types t1)}
     -> (obj : t1)
     -> JSIO DOMPoint
  p2 a = primJS $ DOMQuad.prim__p2 (up a)
  
  export
  p3 :  JSType t1
     => {auto 0 _ : Elem DOMQuad (Types t1)}
     -> (obj : t1)
     -> JSIO DOMPoint
  p3 a = primJS $ DOMQuad.prim__p3 (up a)
  
  export
  p4 :  JSType t1
     => {auto 0 _ : Elem DOMQuad (Types t1)}
     -> (obj : t1)
     -> JSIO DOMPoint
  p4 a = primJS $ DOMQuad.prim__p4 (up a)
  
  export
  getBounds :  JSType t1
            => {auto 0 _ : Elem DOMQuad (Types t1)}
            -> (obj : t1)
            -> JSIO DOMRect
  getBounds a = primJS $ DOMQuad.prim__getBounds (up a)
  
  export
  toJSON :  JSType t1
         => {auto 0 _ : Elem DOMQuad (Types t1)}
         -> (obj : t1)
         -> JSIO Object
  toJSON a = primJS $ DOMQuad.prim__toJSON (up a)

namespace DOMRect
  
  export
  fromRect :  JSType t1
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMRect
  fromRect a = primJS $ DOMRect.prim__fromRect (optUp a)

  export
  fromRect' : JSIO DOMRect
  fromRect' = primJS $ DOMRect.prim__fromRect undef

namespace DOMRectList
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem DOMRectList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ DOMRectList.prim__length (up a)
  
  export
  item :  JSType t1
       => {auto 0 _ : Elem DOMRectList (Types t1)}
       -> (obj : t1)
       -> (index : UInt32)
       -> JSIO (Maybe DOMRect)
  item a b = tryJS "DOMRectList.item" $ DOMRectList.prim__item (up a) b

namespace DOMRectReadOnly
  
  export
  fromRect :  JSType t1
           => {auto 0 _ : Elem DOMRectInit (Types t1)}
           -> (other : Optional t1)
           -> JSIO DOMRectReadOnly
  fromRect a = primJS $ DOMRectReadOnly.prim__fromRect (optUp a)

  export
  fromRect' : JSIO DOMRectReadOnly
  fromRect' = primJS $ DOMRectReadOnly.prim__fromRect undef
  
  export
  bottom :  JSType t1
         => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  bottom a = primJS $ DOMRectReadOnly.prim__bottom (up a)
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  height a = primJS $ DOMRectReadOnly.prim__height (up a)
  
  export
  left :  JSType t1
       => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
       -> (obj : t1)
       -> JSIO Double
  left a = primJS $ DOMRectReadOnly.prim__left (up a)
  
  export
  right :  JSType t1
        => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  right a = primJS $ DOMRectReadOnly.prim__right (up a)
  
  export
  top :  JSType t1
      => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
      -> (obj : t1)
      -> JSIO Double
  top a = primJS $ DOMRectReadOnly.prim__top (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  width a = primJS $ DOMRectReadOnly.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  x a = primJS $ DOMRectReadOnly.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem DOMRectReadOnly (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  y a = primJS $ DOMRectReadOnly.prim__y (up a)
  
  export
  toJSON :  JSType t1
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
  
  export
  new :  JSType t1
      => JSType t2
      => JSType t3
      => JSType t4
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
