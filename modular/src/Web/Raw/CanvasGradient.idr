module Web.Raw.CanvasGradient

import JS
import Web.Types.CanvasGradient


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.addColorStop(a,b)"
prim__addColorStop : CanvasGradient -> Double -> String -> PrimIO ()


export
addColorStop :
     (obj : CanvasGradient)
  -> (offset : Double)
  -> (color : String)
  -> JSIO ()
addColorStop a b c = primJS $ CanvasGradient.prim__addColorStop a b c

