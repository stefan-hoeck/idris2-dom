module Web.Geometry

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrixReadOnly
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isIdentity"
  prim__isIdentity : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

namespace DOMPointReadOnly
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

namespace DOMQuad
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

namespace DOMRectList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

namespace DOMRectReadOnly
  
  %foreign "browser:lambda:x=>x.bottom"
  prim__bottom : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.left"
  prim__left : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.right"
  prim__right : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.top"
  prim__top : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  %foreign "browser:lambda:x=>x.a"
  prim__a : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.a = v}"
  prim__setA : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.b"
  prim__b : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.b = v}"
  prim__setB : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.c"
  prim__c : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.c = v}"
  prim__setC : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.d"
  prim__d : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.d = v}"
  prim__setD : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.e"
  prim__e : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.e = v}"
  prim__setE : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.f"
  prim__f : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.f = v}"
  prim__setF : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m11"
  prim__m11 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m11 = v}"
  prim__setM11 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m12"
  prim__m12 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m12 = v}"
  prim__setM12 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m21"
  prim__m21 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m21 = v}"
  prim__setM21 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m22"
  prim__m22 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m22 = v}"
  prim__setM22 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m41"
  prim__m41 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m41 = v}"
  prim__setM41 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m42"
  prim__m42 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m42 = v}"
  prim__setM42 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DOMMatrixInit
  
  %foreign "browser:lambda:x=>x.is2D"
  prim__is2D : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.is2D = v}"
  prim__setIs2D : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m13"
  prim__m13 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m13 = v}"
  prim__setM13 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m14"
  prim__m14 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m14 = v}"
  prim__setM14 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m23"
  prim__m23 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m23 = v}"
  prim__setM23 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m24"
  prim__m24 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m24 = v}"
  prim__setM24 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m31"
  prim__m31 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m31 = v}"
  prim__setM31 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m32"
  prim__m32 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m32 = v}"
  prim__setM32 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m33"
  prim__m33 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m33 = v}"
  prim__setM33 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m34"
  prim__m34 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m34 = v}"
  prim__setM34 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m43"
  prim__m43 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m43 = v}"
  prim__setM43 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.m44"
  prim__m44 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.m44 = v}"
  prim__setM44 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DOMPointInit
  
  %foreign "browser:lambda:x=>x.w"
  prim__w : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.w = v}"
  prim__setW : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.z"
  prim__z : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.z = v}"
  prim__setZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DOMQuadInit
  
  %foreign "browser:lambda:x=>x.p1"
  prim__p1 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.p1 = v}"
  prim__setP1 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p2"
  prim__p2 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.p2 = v}"
  prim__setP2 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p3"
  prim__p3 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.p3 = v}"
  prim__setP3 : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.p4"
  prim__p4 : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.p4 = v}"
  prim__setP4 : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace DOMRectInit
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.height = v}"
  prim__setHeight : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.width = v}"
  prim__setWidth : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.x = v}"
  prim__setX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.y = v}"
  prim__setY : AnyPtr -> AnyPtr -> PrimIO AnyPtr



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