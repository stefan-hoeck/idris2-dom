module Web.Internal.GeometryPrim
 
import JS
import Web.Internal.Types
 

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrix
  
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
  %foreign "browser:lambda:(x,a,b,c,d)=>x.rotateAxisAngleSelf(a b c d)"
  prim__rotateAxisAngleSelf :  DOMMatrix
                            -> UndefOr Double
                            -> UndefOr Double
                            -> UndefOr Double
                            -> UndefOr Double
                            -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.rotateFromVectorSelf(a b)"
  prim__rotateFromVectorSelf :  DOMMatrix
                             -> UndefOr Double
                             -> UndefOr Double
                             -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.rotateSelf(a b c)"
  prim__rotateSelf :  DOMMatrix
                   -> UndefOr Double
                   -> UndefOr Double
                   -> UndefOr Double
                   -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.scale3dSelf(a b c d)"
  prim__scale3dSelf :  DOMMatrix
                    -> UndefOr Double
                    -> UndefOr Double
                    -> UndefOr Double
                    -> UndefOr Double
                    -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.scaleSelf(a b c d e f)"
  prim__scaleSelf :  DOMMatrix
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
  %foreign "browser:lambda:(x,a,b,c)=>x.translateSelf(a b c)"
  prim__translateSelf :  DOMMatrix
                      -> UndefOr Double
                      -> UndefOr Double
                      -> UndefOr Double
                      -> PrimIO DOMMatrix

namespace DOMMatrixReadOnly
  
  export
  %foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromFloat32Array(a)"
  prim__fromFloat32Array : Float32Array -> PrimIO DOMMatrixReadOnly
  
  export
  %foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromFloat64Array(a)"
  prim__fromFloat64Array : Float64Array -> PrimIO DOMMatrixReadOnly
  
  export
  %foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromMatrix(a)"
  prim__fromMatrix : UndefOr DOMMatrixInit -> PrimIO DOMMatrixReadOnly
  
  export
  %foreign "browser:lambda:x=>x.a"
  prim__a : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.b"
  prim__b : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.c"
  prim__c : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.d"
  prim__d : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.e"
  prim__e : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.f"
  prim__f : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : DOMMatrixReadOnly -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.isIdentity"
  prim__isIdentity : DOMMatrixReadOnly -> PrimIO Boolean
  
  export
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : DOMMatrixReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.flipX()"
  prim__flipX : DOMMatrixReadOnly -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:x=>x.flipY()"
  prim__flipY : DOMMatrixReadOnly -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:x=>x.inverse()"
  prim__inverse : DOMMatrixReadOnly -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a)=>x.multiply(a)"
  prim__multiply :  DOMMatrixReadOnly
                 -> UndefOr DOMMatrixInit
                 -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.rotateAxisAngle(a b c d)"
  prim__rotateAxisAngle :  DOMMatrixReadOnly
                        -> UndefOr Double
                        -> UndefOr Double
                        -> UndefOr Double
                        -> UndefOr Double
                        -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.rotate(a b c)"
  prim__rotate :  DOMMatrixReadOnly
               -> UndefOr Double
               -> UndefOr Double
               -> UndefOr Double
               -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.rotateFromVector(a b)"
  prim__rotateFromVector :  DOMMatrixReadOnly
                         -> UndefOr Double
                         -> UndefOr Double
                         -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c,d)=>x.scale3d(a b c d)"
  prim__scale3d :  DOMMatrixReadOnly
                -> UndefOr Double
                -> UndefOr Double
                -> UndefOr Double
                -> UndefOr Double
                -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.scale(a b c d e f)"
  prim__scale :  DOMMatrixReadOnly
              -> UndefOr Double
              -> UndefOr Double
              -> UndefOr Double
              -> UndefOr Double
              -> UndefOr Double
              -> UndefOr Double
              -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a,b)=>x.scaleNonUniform(a b)"
  prim__scaleNonUniform :  DOMMatrixReadOnly
                        -> UndefOr Double
                        -> UndefOr Double
                        -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a)=>x.skewX(a)"
  prim__skewX : DOMMatrixReadOnly -> UndefOr Double -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:(x,a)=>x.skewY(a)"
  prim__skewY : DOMMatrixReadOnly -> UndefOr Double -> PrimIO DOMMatrix
  
  export
  %foreign "browser:lambda:x=>x.toFloat32Array()"
  prim__toFloat32Array : DOMMatrixReadOnly -> PrimIO Float32Array
  
  export
  %foreign "browser:lambda:x=>x.toFloat64Array()"
  prim__toFloat64Array : DOMMatrixReadOnly -> PrimIO Float64Array
  
  export
  %foreign "browser:lambda:x=>x.toJSON()"
  prim__toJSON : DOMMatrixReadOnly -> PrimIO Object
  
  export
  %foreign "browser:lambda:x=>x.toString()"
  prim__toString : DOMMatrixReadOnly -> PrimIO String
  
  export
  %foreign "browser:lambda:(x,a)=>x.transformPoint(a)"
  prim__transformPoint :  DOMMatrixReadOnly
                       -> UndefOr DOMPointInit
                       -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.translate(a b c)"
  prim__translate :  DOMMatrixReadOnly
                  -> UndefOr Double
                  -> UndefOr Double
                  -> UndefOr Double
                  -> PrimIO DOMMatrix

namespace DOMPoint
  
  export
  %foreign "browser:lambda:(a)=>DOMPoint.fromPoint(a)"
  prim__fromPoint : UndefOr DOMPointInit -> PrimIO DOMPoint

namespace DOMPointReadOnly
  
  export
  %foreign "browser:lambda:(a)=>DOMPointReadOnly.fromPoint(a)"
  prim__fromPoint : UndefOr DOMPointInit -> PrimIO DOMPointReadOnly
  
  export
  %foreign "browser:lambda:x=>x.w"
  prim__w : DOMPointReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : DOMPointReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : DOMPointReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.z"
  prim__z : DOMPointReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:(x,a)=>x.matrixTransform(a)"
  prim__matrixTransform :  DOMPointReadOnly
                        -> UndefOr DOMMatrixInit
                        -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:x=>x.toJSON()"
  prim__toJSON : DOMPointReadOnly -> PrimIO Object

namespace DOMQuad
  
  export
  %foreign "browser:lambda:(a)=>DOMQuad.fromQuad(a)"
  prim__fromQuad : UndefOr DOMQuadInit -> PrimIO DOMQuad
  
  export
  %foreign "browser:lambda:(a)=>DOMQuad.fromRect(a)"
  prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMQuad
  
  export
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : DOMQuad -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : DOMQuad -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : DOMQuad -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : DOMQuad -> PrimIO DOMPoint
  
  export
  %foreign "browser:lambda:x=>x.getBounds()"
  prim__getBounds : DOMQuad -> PrimIO DOMRect
  
  export
  %foreign "browser:lambda:x=>x.toJSON()"
  prim__toJSON : DOMQuad -> PrimIO Object

namespace DOMRect
  
  export
  %foreign "browser:lambda:(a)=>DOMRect.fromRect(a)"
  prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMRect

namespace DOMRectList
  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : DOMRectList -> PrimIO UInt32
  
  export
  %foreign "browser:lambda:(x,a)=>x.item(a)"
  prim__item : DOMRectList -> UInt32 -> PrimIO (Nullable DOMRect)

namespace DOMRectReadOnly
  
  export
  %foreign "browser:lambda:(a)=>DOMRectReadOnly.fromRect(a)"
  prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMRectReadOnly
  
  export
  %foreign "browser:lambda:x=>x.bottom"
  prim__bottom : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.left"
  prim__left : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.right"
  prim__right : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.top"
  prim__top : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : DOMRectReadOnly -> PrimIO Double
  
  export
  %foreign "browser:lambda:x=>x.toJSON()"
  prim__toJSON : DOMRectReadOnly -> PrimIO Object


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l)=> {a: a,b: b,c: c,d: d,e: e,f: f,m11: g,m12: h,m21: i,m22: j,m41: k,m42: l}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> PrimIO DOMMatrix2DInit
  
  export
  %foreign "browser:lambda:x=>x.a"
  prim__a : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.a = v}"
  prim__setA : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.b"
  prim__b : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.b = v}"
  prim__setB : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.c"
  prim__c : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.c = v}"
  prim__setC : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.d"
  prim__d : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.d = v}"
  prim__setD : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.e"
  prim__e : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.e = v}"
  prim__setE : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.f"
  prim__f : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.f = v}"
  prim__setF : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m11 = v}"
  prim__setM11 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m12 = v}"
  prim__setM12 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m21 = v}"
  prim__setM21 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m22 = v}"
  prim__setM22 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m41 = v}"
  prim__setM41 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : DOMMatrix2DInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m42 = v}"
  prim__setM42 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()

namespace DOMMatrixInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k)=> {m13: a,m14: b,m23: c,m24: d,m31: e,m32: f,m33: g,m34: h,m43: i,m44: j,is2D: k}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Boolean
            -> PrimIO DOMMatrixInit
  
  export
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : DOMMatrixInit -> PrimIO $ UndefOr Boolean
  
  export
  %foreign "browser:lambda:(x,v)=>{x.is2D = v}"
  prim__setIs2D : DOMMatrixInit -> UndefOr Boolean -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m13 = v}"
  prim__setM13 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m14 = v}"
  prim__setM14 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m23 = v}"
  prim__setM23 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m24 = v}"
  prim__setM24 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m31 = v}"
  prim__setM31 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m32 = v}"
  prim__setM32 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m33 = v}"
  prim__setM33 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m34 = v}"
  prim__setM34 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m43 = v}"
  prim__setM43 : DOMMatrixInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : DOMMatrixInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.m44 = v}"
  prim__setM44 : DOMMatrixInit -> UndefOr Double -> PrimIO ()

namespace DOMPointInit
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> {x: a,y: b,z: c,w: d}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> PrimIO DOMPointInit
  
  export
  %foreign "browser:lambda:x=>x.w"
  prim__w : DOMPointInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.w = v}"
  prim__setW : DOMPointInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : DOMPointInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : DOMPointInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : DOMPointInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : DOMPointInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.z"
  prim__z : DOMPointInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.z = v}"
  prim__setZ : DOMPointInit -> UndefOr Double -> PrimIO ()

namespace DOMQuadInit
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> {p1: a,p2: b,p3: c,p4: d}"
  prim__new :  UndefOr DOMPointInit
            -> UndefOr DOMPointInit
            -> UndefOr DOMPointInit
            -> UndefOr DOMPointInit
            -> PrimIO DOMQuadInit
  
  export
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : DOMQuadInit -> PrimIO $ UndefOr DOMPointInit
  
  export
  %foreign "browser:lambda:(x,v)=>{x.p1 = v}"
  prim__setP1 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : DOMQuadInit -> PrimIO $ UndefOr DOMPointInit
  
  export
  %foreign "browser:lambda:(x,v)=>{x.p2 = v}"
  prim__setP2 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : DOMQuadInit -> PrimIO $ UndefOr DOMPointInit
  
  export
  %foreign "browser:lambda:(x,v)=>{x.p3 = v}"
  prim__setP3 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : DOMQuadInit -> PrimIO $ UndefOr DOMPointInit
  
  export
  %foreign "browser:lambda:(x,v)=>{x.p4 = v}"
  prim__setP4 : DOMQuadInit -> UndefOr DOMPointInit -> PrimIO ()

namespace DOMRectInit
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> {x: a,y: b,width: c,height: d}"
  prim__new :  UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> UndefOr Double
            -> PrimIO DOMRectInit
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : DOMRectInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : DOMRectInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : DOMRectInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : DOMRectInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : DOMRectInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : DOMRectInit -> UndefOr Double -> PrimIO ()
  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : DOMRectInit -> PrimIO $ UndefOr Double
  
  export
  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : DOMRectInit -> UndefOr Double -> PrimIO ()
