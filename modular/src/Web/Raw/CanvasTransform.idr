module Web.Raw.CanvasTransform

import JS
import Web.Types.CanvasTransform
import Web.Types.DOMMatrix
import Web.Types.DOMMatrix2DInit


%default total


export
%foreign "browser:lambda:x=>x.getTransform()"
prim__getTransform : CanvasTransform -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.resetTransform()"
prim__resetTransform : CanvasTransform -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.rotate(a)"
prim__rotate : CanvasTransform -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.scale(a,b)"
prim__scale : CanvasTransform -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.setTransform(a,b,c,d,e,f)"
prim__setTransform :
     CanvasTransform
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.setTransform(a)"
prim__setTransform1 : CanvasTransform -> UndefOr DOMMatrix2DInit -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.transform(a,b,c,d,e,f)"
prim__transform :
     CanvasTransform
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.translate(a,b)"
prim__translate : CanvasTransform -> Double -> Double -> PrimIO ()


export
getTransform :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> JSIO DOMMatrix
getTransform a = primJS $ CanvasTransform.prim__getTransform (cast a)


export
resetTransform : {auto _ : Cast t1 CanvasTransform} -> (obj : t1) -> JSIO ()
resetTransform a = primJS $ CanvasTransform.prim__resetTransform (cast a)


export
rotate :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> (angle : Double)
  -> JSIO ()
rotate a b = primJS $ CanvasTransform.prim__rotate (cast a) b


export
scale :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
scale a b c = primJS $ CanvasTransform.prim__scale (cast a) b c


export
setTransform :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> (a : Double)
  -> (b : Double)
  -> (c : Double)
  -> (d : Double)
  -> (e : Double)
  -> (f : Double)
  -> JSIO ()
setTransform a b c d e f g = primJS $
  CanvasTransform.prim__setTransform (cast a) b c d e f g


export
setTransform1' :
     {auto _ : Cast t1 CanvasTransform}
  -> {auto _ : Cast t2 DOMMatrix2DInit}
  -> (obj : t1)
  -> (transform : Optional t2)
  -> JSIO ()
setTransform1' a b = primJS $
  CanvasTransform.prim__setTransform1 (cast a) (optUp b)

export
setTransform1 : {auto _ : Cast t1 CanvasTransform} -> (obj : t1) -> JSIO ()
setTransform1 a = primJS $ CanvasTransform.prim__setTransform1 (cast a) undef


export
transform :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> (a : Double)
  -> (b : Double)
  -> (c : Double)
  -> (d : Double)
  -> (e : Double)
  -> (f : Double)
  -> JSIO ()
transform a b c d e f g = primJS $
  CanvasTransform.prim__transform (cast a) b c d e f g


export
translate :
     {auto _ : Cast t1 CanvasTransform}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
translate a b c = primJS $ CanvasTransform.prim__translate (cast a) b c

