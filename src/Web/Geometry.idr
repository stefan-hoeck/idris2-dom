module Web.Geometry
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrix
  
  public export
  JSType DOMMatrix where
    parents =  [ DOMMatrixReadOnly , JSObject ]

    mixins =  []

namespace DOMMatrixReadOnly
  
  public export
  JSType DOMMatrixReadOnly where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr

  export
  a : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr

  export
  b : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr

  export
  c : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr

  export
  d : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr

  export
  e : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr

  export
  f : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr

  export
  is2D : (obj : DOMMatrixReadOnly) -> IO Bool
  
  %foreign "browser:lambda:x=>x.isIdentity"
  prim__isIdentity : AnyPtr -> PrimIO AnyPtr

  export
  isIdentity : (obj : DOMMatrixReadOnly) -> IO Bool
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr

  export
  m11 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr

  export
  m12 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr

  export
  m13 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr

  export
  m14 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr

  export
  m21 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr

  export
  m22 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr

  export
  m23 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr

  export
  m24 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr

  export
  m31 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr

  export
  m32 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr

  export
  m33 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr

  export
  m34 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr

  export
  m41 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr

  export
  m42 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr

  export
  m43 : (obj : DOMMatrixReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

  export
  m44 : (obj : DOMMatrixReadOnly) -> IO Double

namespace DOMPoint
  
  public export
  JSType DOMPoint where
    parents =  [ DOMPointReadOnly , JSObject ]

    mixins =  []

namespace DOMPointReadOnly
  
  public export
  JSType DOMPointReadOnly where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr

  export
  w : (obj : DOMPointReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMPointReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMPointReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

  export
  z : (obj : DOMPointReadOnly) -> IO Double

namespace DOMQuad
  
  public export
  JSType DOMQuad where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr

  export
  p1 : (obj : DOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr

  export
  p2 : (obj : DOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr

  export
  p3 : (obj : DOMQuad) -> IO DOMPoint
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

  export
  p4 : (obj : DOMQuad) -> IO DOMPoint

namespace DOMRect
  
  public export
  JSType DOMRect where
    parents =  [ DOMRectReadOnly , JSObject ]

    mixins =  []

namespace DOMRectList
  
  public export
  JSType DOMRectList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : DOMRectList) -> IO UInt32

namespace DOMRectReadOnly
  
  public export
  JSType DOMRectReadOnly where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.bottom"
  prim__bottom : AnyPtr -> PrimIO AnyPtr

  export
  bottom : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.left"
  prim__left : AnyPtr -> PrimIO AnyPtr

  export
  left : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.right"
  prim__right : AnyPtr -> PrimIO AnyPtr

  export
  right : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr

  export
  top : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMRectReadOnly) -> IO Double
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMRectReadOnly) -> IO Double


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  public export
  JSType DOMMatrix2DInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr

  export
  a : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.a  = v}"
  prim__setA : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setA : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr

  export
  b : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.b  = v}"
  prim__setB : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setB : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr

  export
  c : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.c  = v}"
  prim__setC : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setC : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr

  export
  d : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.d  = v}"
  prim__setD : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setD : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr

  export
  e : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.e  = v}"
  prim__setE : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setE : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr

  export
  f : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.f  = v}"
  prim__setF : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setF : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr

  export
  m11 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m11  = v}"
  prim__setM11 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM11 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr

  export
  m12 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m12  = v}"
  prim__setM12 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM12 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr

  export
  m21 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m21  = v}"
  prim__setM21 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM21 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr

  export
  m22 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m22  = v}"
  prim__setM22 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM22 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr

  export
  m41 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m41  = v}"
  prim__setM41 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM41 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr

  export
  m42 : (obj : DOMMatrix2DInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m42  = v}"
  prim__setM42 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM42 : (obj : DOMMatrix2DInit) -> (v : Double) -> IO ()

namespace DOMMatrixInit
  
  public export
  JSType DOMMatrixInit where
    parents =  [ DOMMatrix2DInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr

  export
  is2D : (obj : DOMMatrixInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.is2D  = v}"
  prim__setIs2D : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIs2D : (obj : DOMMatrixInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr

  export
  m13 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m13  = v}"
  prim__setM13 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM13 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr

  export
  m14 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m14  = v}"
  prim__setM14 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM14 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr

  export
  m23 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m23  = v}"
  prim__setM23 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM23 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr

  export
  m24 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m24  = v}"
  prim__setM24 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM24 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr

  export
  m31 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m31  = v}"
  prim__setM31 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM31 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr

  export
  m32 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m32  = v}"
  prim__setM32 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM32 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr

  export
  m33 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m33  = v}"
  prim__setM33 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM33 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr

  export
  m34 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m34  = v}"
  prim__setM34 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM34 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr

  export
  m43 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m43  = v}"
  prim__setM43 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM43 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

  export
  m44 : (obj : DOMMatrixInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.m44  = v}"
  prim__setM44 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM44 : (obj : DOMMatrixInit) -> (v : Double) -> IO ()

namespace DOMPointInit
  
  public export
  JSType DOMPointInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr

  export
  w : (obj : DOMPointInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.w  = v}"
  prim__setW : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setW : (obj : DOMPointInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMPointInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.x  = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setX : (obj : DOMPointInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMPointInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.y  = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setY : (obj : DOMPointInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

  export
  z : (obj : DOMPointInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.z  = v}"
  prim__setZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setZ : (obj : DOMPointInit) -> (v : Double) -> IO ()

namespace DOMQuadInit
  
  public export
  JSType DOMQuadInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr

  export
  p1 : (obj : DOMQuadInit) -> IO DOMPointInit

  %foreign "browser:lambda:(x,v)=>{x.p1  = v}"
  prim__setP1 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP1 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr

  export
  p2 : (obj : DOMQuadInit) -> IO DOMPointInit

  %foreign "browser:lambda:(x,v)=>{x.p2  = v}"
  prim__setP2 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP2 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr

  export
  p3 : (obj : DOMQuadInit) -> IO DOMPointInit

  %foreign "browser:lambda:(x,v)=>{x.p3  = v}"
  prim__setP3 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP3 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> IO ()
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

  export
  p4 : (obj : DOMQuadInit) -> IO DOMPointInit

  %foreign "browser:lambda:(x,v)=>{x.p4  = v}"
  prim__setP4 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP4 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> IO ()

namespace DOMRectInit
  
  public export
  JSType DOMRectInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : DOMRectInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : DOMRectInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : DOMRectInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : DOMRectInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMRectInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.x  = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setX : (obj : DOMRectInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMRectInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.y  = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setY : (obj : DOMRectInit) -> (v : Double) -> IO ()

