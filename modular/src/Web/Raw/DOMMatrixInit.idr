module Web.Raw.DOMMatrixInit

import JS
import Web.Types.DOMMatrix2DInit
import Web.Types.DOMMatrixInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k)=> ({m13: a,m14: b,m23: c,m24: d,m31: e,m32: f,m33: g,m34: h,m43: i,m44: j,is2D: k})"
prim__new :
     UndefOr Double
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
prim__is2D : DOMMatrixInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.is2D = v}"
prim__setIs2D : DOMMatrixInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m13"
prim__m13 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m13 = v}"
prim__setM13 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m14"
prim__m14 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m14 = v}"
prim__setM14 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m23"
prim__m23 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m23 = v}"
prim__setM23 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m24"
prim__m24 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m24 = v}"
prim__setM24 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m31"
prim__m31 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m31 = v}"
prim__setM31 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m32"
prim__m32 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m32 = v}"
prim__setM32 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m33"
prim__m33 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m33 = v}"
prim__setM33 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m34"
prim__m34 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m34 = v}"
prim__setM34 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m43"
prim__m43 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m43 = v}"
prim__setM43 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m44"
prim__m44 : DOMMatrixInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m44 = v}"
prim__setM44 : DOMMatrixInit -> UndefOr Double -> PrimIO ()



export
new' :
     (m13 : Optional Double)
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
new' a b c d e f g h i j k = primJS $
  DOMMatrixInit.prim__new
    (toFFI a)
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
new : JSIO DOMMatrixInit
new = primJS $
  DOMMatrixInit.prim__new
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
is2D : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute False Optional Bool
is2D v = fromUndefOrPrimNoDefault
           "DOMMatrixInit.getis2D"
           prim__is2D
           prim__setIs2D
           (cast {to = DOMMatrixInit} v)


export
m13 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m13 v = fromUndefOrPrim
          "DOMMatrixInit.getm13"
          prim__m13
          prim__setM13
          0
          (cast {to = DOMMatrixInit} v)


export
m14 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m14 v = fromUndefOrPrim
          "DOMMatrixInit.getm14"
          prim__m14
          prim__setM14
          0
          (cast {to = DOMMatrixInit} v)


export
m23 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m23 v = fromUndefOrPrim
          "DOMMatrixInit.getm23"
          prim__m23
          prim__setM23
          0
          (cast {to = DOMMatrixInit} v)


export
m24 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m24 v = fromUndefOrPrim
          "DOMMatrixInit.getm24"
          prim__m24
          prim__setM24
          0
          (cast {to = DOMMatrixInit} v)


export
m31 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m31 v = fromUndefOrPrim
          "DOMMatrixInit.getm31"
          prim__m31
          prim__setM31
          0
          (cast {to = DOMMatrixInit} v)


export
m32 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m32 v = fromUndefOrPrim
          "DOMMatrixInit.getm32"
          prim__m32
          prim__setM32
          0
          (cast {to = DOMMatrixInit} v)


export
m33 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m33 v = fromUndefOrPrim
          "DOMMatrixInit.getm33"
          prim__m33
          prim__setM33
          1
          (cast {to = DOMMatrixInit} v)


export
m34 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m34 v = fromUndefOrPrim
          "DOMMatrixInit.getm34"
          prim__m34
          prim__setM34
          0
          (cast {to = DOMMatrixInit} v)


export
m43 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m43 v = fromUndefOrPrim
          "DOMMatrixInit.getm43"
          prim__m43
          prim__setM43
          0
          (cast {to = DOMMatrixInit} v)


export
m44 : {auto _ : Cast t DOMMatrixInit} -> t -> Attribute True Optional Double
m44 v = fromUndefOrPrim
          "DOMMatrixInit.getm44"
          prim__m44
          prim__setM44
          1
          (cast {to = DOMMatrixInit} v)

