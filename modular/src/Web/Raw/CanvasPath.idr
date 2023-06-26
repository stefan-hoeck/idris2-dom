module Web.Raw.CanvasPath

import JS
import Web.Types.CanvasPath


%default total


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.arc(a,b,c,d,e,f)"
prim__arc :
     CanvasPath
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> UndefOr Boolean
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.arcTo(a,b,c,d,e)"
prim__arcTo :
     CanvasPath
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.bezierCurveTo(a,b,c,d,e,f)"
prim__bezierCurveTo :
     CanvasPath
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:x=>x.closePath()"
prim__closePath : CanvasPath -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h)=>x.ellipse(a,b,c,d,e,f,g,h)"
prim__ellipse :
     CanvasPath
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> UndefOr Boolean
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.lineTo(a,b)"
prim__lineTo : CanvasPath -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b)=>x.moveTo(a,b)"
prim__moveTo : CanvasPath -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.quadraticCurveTo(a,b,c,d)"
prim__quadraticCurveTo :
     CanvasPath
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.rect(a,b,c,d)"
prim__rect : CanvasPath -> Double -> Double -> Double -> Double -> PrimIO ()


export
arc' :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (radius : Double)
  -> (startAngle : Double)
  -> (endAngle : Double)
  -> (counterclockwise : Optional Bool)
  -> JSIO ()
arc' a b c d e f g = primJS $ CanvasPath.prim__arc (cast a) b c d e f (toFFI g)

export
arc :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (radius : Double)
  -> (startAngle : Double)
  -> (endAngle : Double)
  -> JSIO ()
arc a b c d e f = primJS $ CanvasPath.prim__arc (cast a) b c d e f undef


export
arcTo :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x1 : Double)
  -> (y1 : Double)
  -> (x2 : Double)
  -> (y2 : Double)
  -> (radius : Double)
  -> JSIO ()
arcTo a b c d e f = primJS $ CanvasPath.prim__arcTo (cast a) b c d e f


export
bezierCurveTo :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (cp1x : Double)
  -> (cp1y : Double)
  -> (cp2x : Double)
  -> (cp2y : Double)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
bezierCurveTo a b c d e f g = primJS $
  CanvasPath.prim__bezierCurveTo (cast a) b c d e f g


export
closePath : {auto _ : Cast t1 CanvasPath} -> (obj : t1) -> JSIO ()
closePath a = primJS $ CanvasPath.prim__closePath (cast a)


export
ellipse' :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (radiusX : Double)
  -> (radiusY : Double)
  -> (rotation : Double)
  -> (startAngle : Double)
  -> (endAngle : Double)
  -> (counterclockwise : Optional Bool)
  -> JSIO ()
ellipse' a b c d e f g h i = primJS $
  CanvasPath.prim__ellipse (cast a) b c d e f g h (toFFI i)

export
ellipse :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (radiusX : Double)
  -> (radiusY : Double)
  -> (rotation : Double)
  -> (startAngle : Double)
  -> (endAngle : Double)
  -> JSIO ()
ellipse a b c d e f g h = primJS $
  CanvasPath.prim__ellipse (cast a) b c d e f g h undef


export
lineTo :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
lineTo a b c = primJS $ CanvasPath.prim__lineTo (cast a) b c


export
moveTo :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
moveTo a b c = primJS $ CanvasPath.prim__moveTo (cast a) b c


export
quadraticCurveTo :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (cpx : Double)
  -> (cpy : Double)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
quadraticCurveTo a b c d e = primJS $
  CanvasPath.prim__quadraticCurveTo (cast a) b c d e


export
rect :
     {auto _ : Cast t1 CanvasPath}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (w : Double)
  -> (h : Double)
  -> JSIO ()
rect a b c d e = primJS $ CanvasPath.prim__rect (cast a) b c d e

