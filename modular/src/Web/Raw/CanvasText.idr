module Web.Raw.CanvasText

import JS
import Web.Types.CanvasText
import Web.Types.TextMetrics


%default total


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.fillText(a,b,c,d)"
prim__fillText :
     CanvasText
  -> String
  -> Double
  -> Double
  -> UndefOr Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.measureText(a)"
prim__measureText : CanvasText -> String -> PrimIO TextMetrics


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.strokeText(a,b,c,d)"
prim__strokeText :
     CanvasText
  -> String
  -> Double
  -> Double
  -> UndefOr Double
  -> PrimIO ()


export
fillText' :
     {auto _ : Cast t1 CanvasText}
  -> (obj : t1)
  -> (text : String)
  -> (x : Double)
  -> (y : Double)
  -> (maxWidth : Optional Double)
  -> JSIO ()
fillText' a b c d e = primJS $
  CanvasText.prim__fillText (cast a) b c d (toFFI e)

export
fillText :
     {auto _ : Cast t1 CanvasText}
  -> (obj : t1)
  -> (text : String)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
fillText a b c d = primJS $ CanvasText.prim__fillText (cast a) b c d undef


export
measureText :
     {auto _ : Cast t1 CanvasText}
  -> (obj : t1)
  -> (text : String)
  -> JSIO TextMetrics
measureText a b = primJS $ CanvasText.prim__measureText (cast a) b


export
strokeText' :
     {auto _ : Cast t1 CanvasText}
  -> (obj : t1)
  -> (text : String)
  -> (x : Double)
  -> (y : Double)
  -> (maxWidth : Optional Double)
  -> JSIO ()
strokeText' a b c d e = primJS $
  CanvasText.prim__strokeText (cast a) b c d (toFFI e)

export
strokeText :
     {auto _ : Cast t1 CanvasText}
  -> (obj : t1)
  -> (text : String)
  -> (x : Double)
  -> (y : Double)
  -> JSIO ()
strokeText a b c d = primJS $ CanvasText.prim__strokeText (cast a) b c d undef
