module Web.Raw.CanvasRect

import JS
import Web.Types.CanvasRect


%default total


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.clearRect(a,b,c,d)"
prim__clearRect :
     CanvasRect
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.fillRect(a,b,c,d)"
prim__fillRect : CanvasRect -> Double -> Double -> Double -> Double -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.strokeRect(a,b,c,d)"
prim__strokeRect :
     CanvasRect
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
clearRect :
     {auto _ : Cast t1 CanvasRect}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (w : Double)
  -> (h : Double)
  -> JSIO ()
clearRect a b c d e = primJS $ CanvasRect.prim__clearRect (cast a) b c d e


export
fillRect :
     {auto _ : Cast t1 CanvasRect}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (w : Double)
  -> (h : Double)
  -> JSIO ()
fillRect a b c d e = primJS $ CanvasRect.prim__fillRect (cast a) b c d e


export
strokeRect :
     {auto _ : Cast t1 CanvasRect}
  -> (obj : t1)
  -> (x : Double)
  -> (y : Double)
  -> (w : Double)
  -> (h : Double)
  -> JSIO ()
strokeRect a b c d e = primJS $ CanvasRect.prim__strokeRect (cast a) b c d e

