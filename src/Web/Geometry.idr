module Web.Geometry

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrixReadOnly
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr
  
  export
  a :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr
  
  export
  b :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr
  
  export
  c :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr
  
  export
  d :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr
  
  export
  e :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr
  
  export
  f :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
    => ToJS DOMMatrixReadOnly
    => (obj : dOMMatrixReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr
  
  export
  is2D :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
       => ToJS DOMMatrixReadOnly
       => (obj : dOMMatrixReadOnly)
       -> IO Bool
  
  %foreign "browser:lambda:x=>x.isIdentity"
  prim__isIdentity : AnyPtr -> PrimIO AnyPtr
  
  export
  isIdentity :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
             => ToJS DOMMatrixReadOnly
             => (obj : dOMMatrixReadOnly)
             -> IO Bool
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr
  
  export
  m11 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr
  
  export
  m12 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr
  
  export
  m13 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr
  
  export
  m14 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr
  
  export
  m21 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr
  
  export
  m22 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr
  
  export
  m23 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr
  
  export
  m24 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr
  
  export
  m31 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr
  
  export
  m32 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr
  
  export
  m33 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr
  
  export
  m34 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr
  
  export
  m41 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr
  
  export
  m42 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr
  
  export
  m43 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr
  
  export
  m44 :  Cast dOMMatrixReadOnly DOMMatrixReadOnly
      => ToJS DOMMatrixReadOnly
      => (obj : dOMMatrixReadOnly)
      -> IO Double

namespace DOMPointReadOnly
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr
  
  export
  w :  Cast dOMPointReadOnly DOMPointReadOnly
    => ToJS DOMPointReadOnly
    => (obj : dOMPointReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast dOMPointReadOnly DOMPointReadOnly
    => ToJS DOMPointReadOnly
    => (obj : dOMPointReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast dOMPointReadOnly DOMPointReadOnly
    => ToJS DOMPointReadOnly
    => (obj : dOMPointReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr
  
  export
  z :  Cast dOMPointReadOnly DOMPointReadOnly
    => ToJS DOMPointReadOnly
    => (obj : dOMPointReadOnly)
    -> IO Double

namespace DOMQuad
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr
  
  export
  p1 : Cast dOMQuad DOMQuad => ToJS DOMQuad => (obj : dOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr
  
  export
  p2 : Cast dOMQuad DOMQuad => ToJS DOMQuad => (obj : dOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr
  
  export
  p3 : Cast dOMQuad DOMQuad => ToJS DOMQuad => (obj : dOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr
  
  export
  p4 : Cast dOMQuad DOMQuad => ToJS DOMQuad => (obj : dOMQuad) -> IO DOMPoint

namespace DOMRectList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast dOMRectList DOMRectList
         => ToJS DOMRectList
         => (obj : dOMRectList)
         -> IO UInt32

namespace DOMRectReadOnly
  
  %foreign "browser:lambda:x=>x.bottom"
  prim__bottom : AnyPtr -> PrimIO AnyPtr
  
  export
  bottom :  Cast dOMRectReadOnly DOMRectReadOnly
         => ToJS DOMRectReadOnly
         => (obj : dOMRectReadOnly)
         -> IO Double
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast dOMRectReadOnly DOMRectReadOnly
         => ToJS DOMRectReadOnly
         => (obj : dOMRectReadOnly)
         -> IO Double
  
  %foreign "browser:lambda:x=>x.left"
  prim__left : AnyPtr -> PrimIO AnyPtr
  
  export
  left :  Cast dOMRectReadOnly DOMRectReadOnly
       => ToJS DOMRectReadOnly
       => (obj : dOMRectReadOnly)
       -> IO Double
  
  %foreign "browser:lambda:x=>x.right"
  prim__right : AnyPtr -> PrimIO AnyPtr
  
  export
  right :  Cast dOMRectReadOnly DOMRectReadOnly
        => ToJS DOMRectReadOnly
        => (obj : dOMRectReadOnly)
        -> IO Double
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr
  
  export
  top :  Cast dOMRectReadOnly DOMRectReadOnly
      => ToJS DOMRectReadOnly
      => (obj : dOMRectReadOnly)
      -> IO Double
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast dOMRectReadOnly DOMRectReadOnly
        => ToJS DOMRectReadOnly
        => (obj : dOMRectReadOnly)
        -> IO Double
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast dOMRectReadOnly DOMRectReadOnly
    => ToJS DOMRectReadOnly
    => (obj : dOMRectReadOnly)
    -> IO Double
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast dOMRectReadOnly DOMRectReadOnly
    => ToJS DOMRectReadOnly
    => (obj : dOMRectReadOnly)
    -> IO Double


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr
  
  export
  a :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.a = v}"
  prim__setA : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setA :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr
  
  export
  b :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.b = v}"
  prim__setB : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setB :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr
  
  export
  c :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.c = v}"
  prim__setC : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setC :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr
  
  export
  d :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.d = v}"
  prim__setD : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setD :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr
  
  export
  e :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.e = v}"
  prim__setE : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setE :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr
  
  export
  f :  Cast dOMMatrix2DInit DOMMatrix2DInit
    => ToJS DOMMatrix2DInit
    => (obj : dOMMatrix2DInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.f = v}"
  prim__setF : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setF :  Cast dOMMatrix2DInit DOMMatrix2DInit
       => ToJS DOMMatrix2DInit
       => (obj : dOMMatrix2DInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr
  
  export
  m11 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m11 = v}"
  prim__setM11 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM11 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr
  
  export
  m12 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m12 = v}"
  prim__setM12 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM12 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr
  
  export
  m21 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m21 = v}"
  prim__setM21 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM21 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr
  
  export
  m22 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m22 = v}"
  prim__setM22 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM22 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr
  
  export
  m41 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m41 = v}"
  prim__setM41 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM41 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr
  
  export
  m42 :  Cast dOMMatrix2DInit DOMMatrix2DInit
      => ToJS DOMMatrix2DInit
      => (obj : dOMMatrix2DInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m42 = v}"
  prim__setM42 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM42 :  Cast dOMMatrix2DInit DOMMatrix2DInit
         => ToJS DOMMatrix2DInit
         => (obj : dOMMatrix2DInit)
         -> (v : Double)
         -> IO ()

namespace DOMMatrixInit
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr
  
  export
  is2D :  Cast dOMMatrixInit DOMMatrixInit
       => ToJS DOMMatrixInit
       => (obj : dOMMatrixInit)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.is2D = v}"
  prim__setIs2D : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIs2D :  Cast dOMMatrixInit DOMMatrixInit
          => ToJS DOMMatrixInit
          => (obj : dOMMatrixInit)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr
  
  export
  m13 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m13 = v}"
  prim__setM13 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM13 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr
  
  export
  m14 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m14 = v}"
  prim__setM14 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM14 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr
  
  export
  m23 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m23 = v}"
  prim__setM23 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM23 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr
  
  export
  m24 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m24 = v}"
  prim__setM24 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM24 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr
  
  export
  m31 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m31 = v}"
  prim__setM31 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM31 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr
  
  export
  m32 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m32 = v}"
  prim__setM32 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM32 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr
  
  export
  m33 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m33 = v}"
  prim__setM33 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM33 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr
  
  export
  m34 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m34 = v}"
  prim__setM34 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM34 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr
  
  export
  m43 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m43 = v}"
  prim__setM43 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM43 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr
  
  export
  m44 :  Cast dOMMatrixInit DOMMatrixInit
      => ToJS DOMMatrixInit
      => (obj : dOMMatrixInit)
      -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.m44 = v}"
  prim__setM44 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setM44 :  Cast dOMMatrixInit DOMMatrixInit
         => ToJS DOMMatrixInit
         => (obj : dOMMatrixInit)
         -> (v : Double)
         -> IO ()

namespace DOMPointInit
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr
  
  export
  w :  Cast dOMPointInit DOMPointInit
    => ToJS DOMPointInit
    => (obj : dOMPointInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.w = v}"
  prim__setW : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setW :  Cast dOMPointInit DOMPointInit
       => ToJS DOMPointInit
       => (obj : dOMPointInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast dOMPointInit DOMPointInit
    => ToJS DOMPointInit
    => (obj : dOMPointInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setX :  Cast dOMPointInit DOMPointInit
       => ToJS DOMPointInit
       => (obj : dOMPointInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast dOMPointInit DOMPointInit
    => ToJS DOMPointInit
    => (obj : dOMPointInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setY :  Cast dOMPointInit DOMPointInit
       => ToJS DOMPointInit
       => (obj : dOMPointInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr
  
  export
  z :  Cast dOMPointInit DOMPointInit
    => ToJS DOMPointInit
    => (obj : dOMPointInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.z = v}"
  prim__setZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setZ :  Cast dOMPointInit DOMPointInit
       => ToJS DOMPointInit
       => (obj : dOMPointInit)
       -> (v : Double)
       -> IO ()

namespace DOMQuadInit
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr
  
  export
  p1 :  Cast dOMQuadInit DOMQuadInit
     => ToJS DOMQuadInit
     => (obj : dOMQuadInit)
     -> IO DOMPointInit
  
  %foreign "browser:lambda:(x,v)=>{x.p1 = v}"
  prim__setP1 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setP1 :  Cast dOMPointInit DOMPointInit
        => ToJS DOMPointInit
        => Cast dOMQuadInit DOMQuadInit
        => ToJS DOMQuadInit
        => (obj : dOMQuadInit)
        -> (v : dOMPointInit)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr
  
  export
  p2 :  Cast dOMQuadInit DOMQuadInit
     => ToJS DOMQuadInit
     => (obj : dOMQuadInit)
     -> IO DOMPointInit
  
  %foreign "browser:lambda:(x,v)=>{x.p2 = v}"
  prim__setP2 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setP2 :  Cast dOMPointInit DOMPointInit
        => ToJS DOMPointInit
        => Cast dOMQuadInit DOMQuadInit
        => ToJS DOMQuadInit
        => (obj : dOMQuadInit)
        -> (v : dOMPointInit)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr
  
  export
  p3 :  Cast dOMQuadInit DOMQuadInit
     => ToJS DOMQuadInit
     => (obj : dOMQuadInit)
     -> IO DOMPointInit
  
  %foreign "browser:lambda:(x,v)=>{x.p3 = v}"
  prim__setP3 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setP3 :  Cast dOMPointInit DOMPointInit
        => ToJS DOMPointInit
        => Cast dOMQuadInit DOMQuadInit
        => ToJS DOMQuadInit
        => (obj : dOMQuadInit)
        -> (v : dOMPointInit)
        -> IO ()
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr
  
  export
  p4 :  Cast dOMQuadInit DOMQuadInit
     => ToJS DOMQuadInit
     => (obj : dOMQuadInit)
     -> IO DOMPointInit
  
  %foreign "browser:lambda:(x,v)=>{x.p4 = v}"
  prim__setP4 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setP4 :  Cast dOMPointInit DOMPointInit
        => ToJS DOMPointInit
        => Cast dOMQuadInit DOMQuadInit
        => ToJS DOMQuadInit
        => (obj : dOMQuadInit)
        -> (v : dOMPointInit)
        -> IO ()

namespace DOMRectInit
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast dOMRectInit DOMRectInit
         => ToJS DOMRectInit
         => (obj : dOMRectInit)
         -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHeight :  Cast dOMRectInit DOMRectInit
            => ToJS DOMRectInit
            => (obj : dOMRectInit)
            -> (v : Double)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast dOMRectInit DOMRectInit
        => ToJS DOMRectInit
        => (obj : dOMRectInit)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setWidth :  Cast dOMRectInit DOMRectInit
           => ToJS DOMRectInit
           => (obj : dOMRectInit)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast dOMRectInit DOMRectInit
    => ToJS DOMRectInit
    => (obj : dOMRectInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setX :  Cast dOMRectInit DOMRectInit
       => ToJS DOMRectInit
       => (obj : dOMRectInit)
       -> (v : Double)
       -> IO ()
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast dOMRectInit DOMRectInit
    => ToJS DOMRectInit
    => (obj : dOMRectInit)
    -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setY :  Cast dOMRectInit DOMRectInit
       => ToJS DOMRectInit
       => (obj : dOMRectInit)
       -> (v : Double)
       -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast DOMMatrix DOMMatrixReadOnly where
  cast = believe_me

export
Cast DOMMatrixInit DOMMatrix2DInit where
  cast = believe_me

export
Cast DOMPoint DOMPointReadOnly where
  cast = believe_me

export
Cast DOMRect DOMRectReadOnly where
  cast = believe_me