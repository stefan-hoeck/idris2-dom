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
  a : (obj : DOMMatrixReadOnly) -> JSIO Double
  a a =   primToJSIO "a" $ prim__a (toJS a)
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr

  export
  b : (obj : DOMMatrixReadOnly) -> JSIO Double
  b a =   primToJSIO "b" $ prim__b (toJS a)
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr

  export
  c : (obj : DOMMatrixReadOnly) -> JSIO Double
  c a =   primToJSIO "c" $ prim__c (toJS a)
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr

  export
  d : (obj : DOMMatrixReadOnly) -> JSIO Double
  d a =   primToJSIO "d" $ prim__d (toJS a)
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr

  export
  e : (obj : DOMMatrixReadOnly) -> JSIO Double
  e a =   primToJSIO "e" $ prim__e (toJS a)
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr

  export
  f : (obj : DOMMatrixReadOnly) -> JSIO Double
  f a =   primToJSIO "f" $ prim__f (toJS a)
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr

  export
  is2D : (obj : DOMMatrixReadOnly) -> JSIO Bool
  is2D a =   primToJSIO "is2D" $ prim__is2D (toJS a)
  
  %foreign "browser:lambda:x=>x.isIdentity"
  prim__isIdentity : AnyPtr -> PrimIO AnyPtr

  export
  isIdentity : (obj : DOMMatrixReadOnly) -> JSIO Bool
  isIdentity a =   primToJSIO "isIdentity" $ prim__isIdentity (toJS a)
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr

  export
  m11 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m11 a =   primToJSIO "m11" $ prim__m11 (toJS a)
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr

  export
  m12 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m12 a =   primToJSIO "m12" $ prim__m12 (toJS a)
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr

  export
  m13 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m13 a =   primToJSIO "m13" $ prim__m13 (toJS a)
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr

  export
  m14 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m14 a =   primToJSIO "m14" $ prim__m14 (toJS a)
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr

  export
  m21 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m21 a =   primToJSIO "m21" $ prim__m21 (toJS a)
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr

  export
  m22 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m22 a =   primToJSIO "m22" $ prim__m22 (toJS a)
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr

  export
  m23 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m23 a =   primToJSIO "m23" $ prim__m23 (toJS a)
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr

  export
  m24 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m24 a =   primToJSIO "m24" $ prim__m24 (toJS a)
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr

  export
  m31 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m31 a =   primToJSIO "m31" $ prim__m31 (toJS a)
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr

  export
  m32 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m32 a =   primToJSIO "m32" $ prim__m32 (toJS a)
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr

  export
  m33 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m33 a =   primToJSIO "m33" $ prim__m33 (toJS a)
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr

  export
  m34 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m34 a =   primToJSIO "m34" $ prim__m34 (toJS a)
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr

  export
  m41 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m41 a =   primToJSIO "m41" $ prim__m41 (toJS a)
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr

  export
  m42 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m42 a =   primToJSIO "m42" $ prim__m42 (toJS a)
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr

  export
  m43 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m43 a =   primToJSIO "m43" $ prim__m43 (toJS a)
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

  export
  m44 : (obj : DOMMatrixReadOnly) -> JSIO Double
  m44 a =   primToJSIO "m44" $ prim__m44 (toJS a)

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
  w : (obj : DOMPointReadOnly) -> JSIO Double
  w a =   primToJSIO "w" $ prim__w (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMPointReadOnly) -> JSIO Double
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMPointReadOnly) -> JSIO Double
  y a =   primToJSIO "y" $ prim__y (toJS a)
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

  export
  z : (obj : DOMPointReadOnly) -> JSIO Double
  z a =   primToJSIO "z" $ prim__z (toJS a)

namespace DOMQuad
  
  public export
  JSType DOMQuad where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr

  export
  p1 : (obj : DOMQuad) -> JSIO DOMPoint
  p1 a =   primToJSIO "p1" $ prim__p1 (toJS a)
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr

  export
  p2 : (obj : DOMQuad) -> JSIO DOMPoint
  p2 a =   primToJSIO "p2" $ prim__p2 (toJS a)
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr

  export
  p3 : (obj : DOMQuad) -> JSIO DOMPoint
  p3 a =   primToJSIO "p3" $ prim__p3 (toJS a)
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

  export
  p4 : (obj : DOMQuad) -> JSIO DOMPoint
  p4 a =   primToJSIO "p4" $ prim__p4 (toJS a)

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
  length : (obj : DOMRectList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)

namespace DOMRectReadOnly
  
  public export
  JSType DOMRectReadOnly where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.bottom"
  prim__bottom : AnyPtr -> PrimIO AnyPtr

  export
  bottom : (obj : DOMRectReadOnly) -> JSIO Double
  bottom a =   primToJSIO "bottom" $ prim__bottom (toJS a)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : DOMRectReadOnly) -> JSIO Double
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.left"
  prim__left : AnyPtr -> PrimIO AnyPtr

  export
  left : (obj : DOMRectReadOnly) -> JSIO Double
  left a =   primToJSIO "left" $ prim__left (toJS a)
  
  %foreign "browser:lambda:x=>x.right"
  prim__right : AnyPtr -> PrimIO AnyPtr

  export
  right : (obj : DOMRectReadOnly) -> JSIO Double
  right a =   primToJSIO "right" $ prim__right (toJS a)
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr

  export
  top : (obj : DOMRectReadOnly) -> JSIO Double
  top a =   primToJSIO "top" $ prim__top (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : DOMRectReadOnly) -> JSIO Double
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMRectReadOnly) -> JSIO Double
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMRectReadOnly) -> JSIO Double
  y a =   primToJSIO "y" $ prim__y (toJS a)


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
  a : (obj : DOMMatrix2DInit) -> JSIO Double
  a a =   primToJSIO "a" $ prim__a (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.a  = v}"
  prim__setA : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setA : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setA a b =   primToJSIO "setA" $ prim__setA (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr

  export
  b : (obj : DOMMatrix2DInit) -> JSIO Double
  b a =   primToJSIO "b" $ prim__b (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.b  = v}"
  prim__setB : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setB : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setB a b =   primToJSIO "setB" $ prim__setB (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr

  export
  c : (obj : DOMMatrix2DInit) -> JSIO Double
  c a =   primToJSIO "c" $ prim__c (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.c  = v}"
  prim__setC : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setC : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setC a b =   primToJSIO "setC" $ prim__setC (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr

  export
  d : (obj : DOMMatrix2DInit) -> JSIO Double
  d a =   primToJSIO "d" $ prim__d (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.d  = v}"
  prim__setD : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setD : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setD a b =   primToJSIO "setD" $ prim__setD (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr

  export
  e : (obj : DOMMatrix2DInit) -> JSIO Double
  e a =   primToJSIO "e" $ prim__e (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.e  = v}"
  prim__setE : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setE : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setE a b =   primToJSIO "setE" $ prim__setE (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr

  export
  f : (obj : DOMMatrix2DInit) -> JSIO Double
  f a =   primToJSIO "f" $ prim__f (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.f  = v}"
  prim__setF : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setF : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setF a b =   primToJSIO "setF" $ prim__setF (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr

  export
  m11 : (obj : DOMMatrix2DInit) -> JSIO Double
  m11 a =   primToJSIO "m11" $ prim__m11 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m11  = v}"
  prim__setM11 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM11 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM11 a b =   primToJSIO "setM11" $ prim__setM11 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr

  export
  m12 : (obj : DOMMatrix2DInit) -> JSIO Double
  m12 a =   primToJSIO "m12" $ prim__m12 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m12  = v}"
  prim__setM12 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM12 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM12 a b =   primToJSIO "setM12" $ prim__setM12 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr

  export
  m21 : (obj : DOMMatrix2DInit) -> JSIO Double
  m21 a =   primToJSIO "m21" $ prim__m21 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m21  = v}"
  prim__setM21 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM21 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM21 a b =   primToJSIO "setM21" $ prim__setM21 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr

  export
  m22 : (obj : DOMMatrix2DInit) -> JSIO Double
  m22 a =   primToJSIO "m22" $ prim__m22 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m22  = v}"
  prim__setM22 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM22 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM22 a b =   primToJSIO "setM22" $ prim__setM22 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr

  export
  m41 : (obj : DOMMatrix2DInit) -> JSIO Double
  m41 a =   primToJSIO "m41" $ prim__m41 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m41  = v}"
  prim__setM41 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM41 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM41 a b =   primToJSIO "setM41" $ prim__setM41 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr

  export
  m42 : (obj : DOMMatrix2DInit) -> JSIO Double
  m42 a =   primToJSIO "m42" $ prim__m42 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m42  = v}"
  prim__setM42 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM42 : (obj : DOMMatrix2DInit) -> (v : Double) -> JSIO ()
  setM42 a b =   primToJSIO "setM42" $ prim__setM42 (toJS a) (toJS b)

namespace DOMMatrixInit
  
  public export
  JSType DOMMatrixInit where
    parents =  [ DOMMatrix2DInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr

  export
  is2D : (obj : DOMMatrixInit) -> JSIO Bool
  is2D a =   primToJSIO "is2D" $ prim__is2D (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.is2D  = v}"
  prim__setIs2D : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIs2D : (obj : DOMMatrixInit) -> (v : Bool) -> JSIO ()
  setIs2D a b =   primToJSIO "setIs2D" $ prim__setIs2D (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr

  export
  m13 : (obj : DOMMatrixInit) -> JSIO Double
  m13 a =   primToJSIO "m13" $ prim__m13 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m13  = v}"
  prim__setM13 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM13 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM13 a b =   primToJSIO "setM13" $ prim__setM13 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr

  export
  m14 : (obj : DOMMatrixInit) -> JSIO Double
  m14 a =   primToJSIO "m14" $ prim__m14 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m14  = v}"
  prim__setM14 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM14 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM14 a b =   primToJSIO "setM14" $ prim__setM14 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr

  export
  m23 : (obj : DOMMatrixInit) -> JSIO Double
  m23 a =   primToJSIO "m23" $ prim__m23 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m23  = v}"
  prim__setM23 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM23 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM23 a b =   primToJSIO "setM23" $ prim__setM23 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr

  export
  m24 : (obj : DOMMatrixInit) -> JSIO Double
  m24 a =   primToJSIO "m24" $ prim__m24 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m24  = v}"
  prim__setM24 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM24 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM24 a b =   primToJSIO "setM24" $ prim__setM24 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr

  export
  m31 : (obj : DOMMatrixInit) -> JSIO Double
  m31 a =   primToJSIO "m31" $ prim__m31 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m31  = v}"
  prim__setM31 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM31 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM31 a b =   primToJSIO "setM31" $ prim__setM31 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr

  export
  m32 : (obj : DOMMatrixInit) -> JSIO Double
  m32 a =   primToJSIO "m32" $ prim__m32 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m32  = v}"
  prim__setM32 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM32 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM32 a b =   primToJSIO "setM32" $ prim__setM32 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr

  export
  m33 : (obj : DOMMatrixInit) -> JSIO Double
  m33 a =   primToJSIO "m33" $ prim__m33 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m33  = v}"
  prim__setM33 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM33 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM33 a b =   primToJSIO "setM33" $ prim__setM33 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr

  export
  m34 : (obj : DOMMatrixInit) -> JSIO Double
  m34 a =   primToJSIO "m34" $ prim__m34 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m34  = v}"
  prim__setM34 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM34 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM34 a b =   primToJSIO "setM34" $ prim__setM34 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr

  export
  m43 : (obj : DOMMatrixInit) -> JSIO Double
  m43 a =   primToJSIO "m43" $ prim__m43 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m43  = v}"
  prim__setM43 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM43 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM43 a b =   primToJSIO "setM43" $ prim__setM43 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

  export
  m44 : (obj : DOMMatrixInit) -> JSIO Double
  m44 a =   primToJSIO "m44" $ prim__m44 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.m44  = v}"
  prim__setM44 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setM44 : (obj : DOMMatrixInit) -> (v : Double) -> JSIO ()
  setM44 a b =   primToJSIO "setM44" $ prim__setM44 (toJS a) (toJS b)

namespace DOMPointInit
  
  public export
  JSType DOMPointInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr

  export
  w : (obj : DOMPointInit) -> JSIO Double
  w a =   primToJSIO "w" $ prim__w (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.w  = v}"
  prim__setW : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setW : (obj : DOMPointInit) -> (v : Double) -> JSIO ()
  setW a b =   primToJSIO "setW" $ prim__setW (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMPointInit) -> JSIO Double
  x a =   primToJSIO "x" $ prim__x (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.x  = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setX : (obj : DOMPointInit) -> (v : Double) -> JSIO ()
  setX a b =   primToJSIO "setX" $ prim__setX (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMPointInit) -> JSIO Double
  y a =   primToJSIO "y" $ prim__y (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.y  = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setY : (obj : DOMPointInit) -> (v : Double) -> JSIO ()
  setY a b =   primToJSIO "setY" $ prim__setY (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

  export
  z : (obj : DOMPointInit) -> JSIO Double
  z a =   primToJSIO "z" $ prim__z (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.z  = v}"
  prim__setZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setZ : (obj : DOMPointInit) -> (v : Double) -> JSIO ()
  setZ a b =   primToJSIO "setZ" $ prim__setZ (toJS a) (toJS b)

namespace DOMQuadInit
  
  public export
  JSType DOMQuadInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr

  export
  p1 : (obj : DOMQuadInit) -> JSIO DOMPointInit
  p1 a =   primToJSIO "p1" $ prim__p1 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.p1  = v}"
  prim__setP1 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP1 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> JSIO ()
  setP1 a b =   primToJSIO "setP1" $ prim__setP1 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr

  export
  p2 : (obj : DOMQuadInit) -> JSIO DOMPointInit
  p2 a =   primToJSIO "p2" $ prim__p2 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.p2  = v}"
  prim__setP2 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP2 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> JSIO ()
  setP2 a b =   primToJSIO "setP2" $ prim__setP2 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr

  export
  p3 : (obj : DOMQuadInit) -> JSIO DOMPointInit
  p3 a =   primToJSIO "p3" $ prim__p3 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.p3  = v}"
  prim__setP3 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP3 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> JSIO ()
  setP3 a b =   primToJSIO "setP3" $ prim__setP3 (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

  export
  p4 : (obj : DOMQuadInit) -> JSIO DOMPointInit
  p4 a =   primToJSIO "p4" $ prim__p4 (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.p4  = v}"
  prim__setP4 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setP4 : (obj : DOMQuadInit) -> (v : DOMPointInit) -> JSIO ()
  setP4 a b =   primToJSIO "setP4" $ prim__setP4 (toJS a) (toJS b)

namespace DOMRectInit
  
  public export
  JSType DOMRectInit where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : DOMRectInit) -> JSIO Double
  height a =   primToJSIO "height" $ prim__height (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.height  = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHeight : (obj : DOMRectInit) -> (v : Double) -> JSIO ()
  setHeight a b =   primToJSIO "setHeight" $ prim__setHeight (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : DOMRectInit) -> JSIO Double
  width a =   primToJSIO "width" $ prim__width (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.width  = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setWidth : (obj : DOMRectInit) -> (v : Double) -> JSIO ()
  setWidth a b =   primToJSIO "setWidth" $ prim__setWidth (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : DOMRectInit) -> JSIO Double
  x a =   primToJSIO "x" $ prim__x (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.x  = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setX : (obj : DOMRectInit) -> (v : Double) -> JSIO ()
  setX a b =   primToJSIO "setX" $ prim__setX (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : DOMRectInit) -> JSIO Double
  y a =   primToJSIO "y" $ prim__y (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.y  = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setY : (obj : DOMRectInit) -> (v : Double) -> JSIO ()
  setY a b =   primToJSIO "setY" $ prim__setY (toJS a) (toJS b)

