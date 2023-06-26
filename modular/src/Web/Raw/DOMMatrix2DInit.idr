module Web.Raw.DOMMatrix2DInit

import JS
import Web.Types.DOMMatrix2DInit


%default total


export
%foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l)=> ({a: a,b: b,c: c,d: d,e: e,f: f,m11: g,m12: h,m21: i,m22: j,m41: k,m42: l})"
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
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix2DInit


export
%foreign "browser:lambda:x=>x.a"
prim__a : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.a = v}"
prim__setA : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.b"
prim__b : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.b = v}"
prim__setB : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.c"
prim__c : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.c = v}"
prim__setC : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.d"
prim__d : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.d = v}"
prim__setD : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.e"
prim__e : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.e = v}"
prim__setE : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.f"
prim__f : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.f = v}"
prim__setF : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m11"
prim__m11 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m11 = v}"
prim__setM11 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m12"
prim__m12 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m12 = v}"
prim__setM12 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m21"
prim__m21 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m21 = v}"
prim__setM21 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m22"
prim__m22 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m22 = v}"
prim__setM22 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m41"
prim__m41 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m41 = v}"
prim__setM41 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.m42"
prim__m42 : DOMMatrix2DInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.m42 = v}"
prim__setM42 : DOMMatrix2DInit -> UndefOr Double -> PrimIO ()



export
new' :
     (a : Optional Double)
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
new' a b c d e f g h i j k l = primJS $
  DOMMatrix2DInit.prim__new
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
    (toFFI l)

export
new : JSIO DOMMatrix2DInit
new = primJS $
  DOMMatrix2DInit.prim__new
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
    undef


export
a : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
a v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.geta"
        prim__a
        prim__setA
        (cast {to = DOMMatrix2DInit} v)


export
b : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
b v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.getb"
        prim__b
        prim__setB
        (cast {to = DOMMatrix2DInit} v)


export
c : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
c v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.getc"
        prim__c
        prim__setC
        (cast {to = DOMMatrix2DInit} v)


export
d : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
d v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.getd"
        prim__d
        prim__setD
        (cast {to = DOMMatrix2DInit} v)


export
e : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
e v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.gete"
        prim__e
        prim__setE
        (cast {to = DOMMatrix2DInit} v)


export
f : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
f v = fromUndefOrPrimNoDefault
        "DOMMatrix2DInit.getf"
        prim__f
        prim__setF
        (cast {to = DOMMatrix2DInit} v)


export
m11 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m11 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm11"
          prim__m11
          prim__setM11
          (cast {to = DOMMatrix2DInit} v)


export
m12 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m12 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm12"
          prim__m12
          prim__setM12
          (cast {to = DOMMatrix2DInit} v)


export
m21 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m21 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm21"
          prim__m21
          prim__setM21
          (cast {to = DOMMatrix2DInit} v)


export
m22 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m22 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm22"
          prim__m22
          prim__setM22
          (cast {to = DOMMatrix2DInit} v)


export
m41 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m41 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm41"
          prim__m41
          prim__setM41
          (cast {to = DOMMatrix2DInit} v)


export
m42 : {auto _ : Cast t DOMMatrix2DInit} -> t -> Attribute False Optional Double
m42 v = fromUndefOrPrimNoDefault
          "DOMMatrix2DInit.getm42"
          prim__m42
          prim__setM42
          (cast {to = DOMMatrix2DInit} v)

