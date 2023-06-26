module Web.Raw.CanvasDrawPath

import JS
import Web.Types.CanvasDrawPath
import Web.Types.CanvasFillRule
import Web.Types.Path2D


%default total


export
%foreign "browser:lambda:x=>x.beginPath()"
prim__beginPath : CanvasDrawPath -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.clip(a)"
prim__clip : CanvasDrawPath -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.clip(a,b)"
prim__clip1 : CanvasDrawPath -> Path2D -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.fill(a)"
prim__fill : CanvasDrawPath -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.fill(a,b)"
prim__fill1 : CanvasDrawPath -> Path2D -> UndefOr String -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c)=>x.isPointInPath(a,b,c)"
prim__isPointInPath :
     CanvasDrawPath
  -> Double
  -> Double
  -> UndefOr String
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.isPointInPath(a,b,c,d)"
prim__isPointInPath1 :
     CanvasDrawPath
  -> Path2D
  -> Double
  -> Double
  -> UndefOr String
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.isPointInStroke(a,b)"
prim__isPointInStroke : CanvasDrawPath -> Double -> Double -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b,c)=>x.isPointInStroke(a,b,c)"
prim__isPointInStroke1 :
     CanvasDrawPath
  -> Path2D
  -> Double
  -> Double
  -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.stroke()"
prim__stroke : CanvasDrawPath -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.stroke(a)"
prim__stroke1 : CanvasDrawPath -> Path2D -> PrimIO ()


export
beginPath : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
beginPath a = primJS $ CanvasDrawPath.prim__beginPath (cast a)


export
clip' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO ()
clip' a b = primJS $ CanvasDrawPath.prim__clip (cast a) (toFFI b)

export
clip : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
clip a = primJS $ CanvasDrawPath.prim__clip (cast a) undef


export
clip1' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO ()
clip1' a b c = primJS $ CanvasDrawPath.prim__clip1 (cast a) b (toFFI c)

export
clip1 :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> JSIO ()
clip1 a b = primJS $ CanvasDrawPath.prim__clip1 (cast a) b undef


export
fill' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO ()
fill' a b = primJS $ CanvasDrawPath.prim__fill (cast a) (toFFI b)

export
fill : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
fill a = primJS $ CanvasDrawPath.prim__fill (cast a) undef


export
fill1' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO ()
fill1' a b c = primJS $ CanvasDrawPath.prim__fill1 (cast a) b (toFFI c)

export
fill1 :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> JSIO ()
fill1 a b = primJS $ CanvasDrawPath.prim__fill1 (cast a) b undef


export
isPointInPath' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO Bool
isPointInPath' a b c d = tryJS "CanvasDrawPath.isPointInPath'" $
  CanvasDrawPath.prim__isPointInPath (cast a) b c (toFFI d)

export
isPointInPath :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO Bool
isPointInPath a b c = tryJS "CanvasDrawPath.isPointInPath" $
  CanvasDrawPath.prim__isPointInPath (cast a) b c undef


export
isPointInPath1' :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> (x : Double)
  -> (y : Double)
  -> (fillRule : Optional CanvasFillRule)
  -> JSIO Bool
isPointInPath1' a b c d e = tryJS "CanvasDrawPath.isPointInPath1'" $
  CanvasDrawPath.prim__isPointInPath1 (cast a) b c d (toFFI e)

export
isPointInPath1 :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> (x : Double)
  -> (y : Double)
  -> JSIO Bool
isPointInPath1 a b c d = tryJS "CanvasDrawPath.isPointInPath1" $
  CanvasDrawPath.prim__isPointInPath1 (cast a) b c d undef


export
isPointInStroke :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO Bool
isPointInStroke a b c = tryJS "CanvasDrawPath.isPointInStroke" $
  CanvasDrawPath.prim__isPointInStroke (cast a) b c


export
isPointInStroke1 :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> (x : Double)
  -> (y : Double)
  -> JSIO Bool
isPointInStroke1 a b c d = tryJS "CanvasDrawPath.isPointInStroke1" $
  CanvasDrawPath.prim__isPointInStroke1 (cast a) b c d


export
stroke : {auto _ : Cast t1 CanvasDrawPath} -> (obj : t1) -> JSIO ()
stroke a = primJS $ CanvasDrawPath.prim__stroke (cast a)


export
stroke1 :
     {auto _ : Cast t1 CanvasDrawPath}
  -> (obj : t1)
  -> (path : Path2D)
  -> JSIO ()
stroke1 a b = primJS $ CanvasDrawPath.prim__stroke1 (cast a) b
