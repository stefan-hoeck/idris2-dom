module Web.Raw.CanvasFillStrokeStyles

import JS
import Web.Types.CanvasFillStrokeStyles
import Web.Types.CanvasGradient
import Web.Types.CanvasPattern
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.ImageBitmap
import Web.Types.OffscreenCanvas
import Web.Types.SVGImageElement


%default total


export
%foreign "browser:lambda:x=>x.fillStyle"
prim__fillStyle :
     CanvasFillStrokeStyles
  -> PrimIO (Union3 String CanvasGradient CanvasPattern)



export
%foreign "browser:lambda:(x,v)=>{x.fillStyle = v}"
prim__setFillStyle :
     CanvasFillStrokeStyles
  -> Union3 String CanvasGradient CanvasPattern
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.strokeStyle"
prim__strokeStyle :
     CanvasFillStrokeStyles
  -> PrimIO (Union3 String CanvasGradient CanvasPattern)



export
%foreign "browser:lambda:(x,v)=>{x.strokeStyle = v}"
prim__setStrokeStyle :
     CanvasFillStrokeStyles
  -> Union3 String CanvasGradient CanvasPattern
  -> PrimIO ()



export
%foreign "browser:lambda:(x,a,b,c,d)=>x.createLinearGradient(a,b,c,d)"
prim__createLinearGradient :
     CanvasFillStrokeStyles
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO CanvasGradient


export
%foreign "browser:lambda:(x,a,b)=>x.createPattern(a,b)"
prim__createPattern :
     CanvasFillStrokeStyles
  -> Union6
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
  -> String
  -> PrimIO (Nullable CanvasPattern)


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.createRadialGradient(a,b,c,d,e,f)"
prim__createRadialGradient :
     CanvasFillStrokeStyles
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO CanvasGradient


export
fillStyle :
     {auto _ : Cast t CanvasFillStrokeStyles}
  -> t
  -> Attribute True Prelude.id (HSum [String, CanvasGradient, CanvasPattern])
fillStyle v = fromPrim
                "CanvasFillStrokeStyles.getfillStyle"
                prim__fillStyle
                prim__setFillStyle
                (cast {to = CanvasFillStrokeStyles} v)


export
strokeStyle :
     {auto _ : Cast t CanvasFillStrokeStyles}
  -> t
  -> Attribute True Prelude.id (HSum [String, CanvasGradient, CanvasPattern])
strokeStyle v = fromPrim
                  "CanvasFillStrokeStyles.getstrokeStyle"
                  prim__strokeStyle
                  prim__setStrokeStyle
                  (cast {to = CanvasFillStrokeStyles} v)


export
createLinearGradient :
     {auto _ : Cast t1 CanvasFillStrokeStyles}
  -> (obj : t1)
  -> (x0 : Double)
  -> (y0 : Double)
  -> (x1 : Double)
  -> (y1 : Double)
  -> JSIO CanvasGradient
createLinearGradient a b c d e = primJS $
  CanvasFillStrokeStyles.prim__createLinearGradient (cast a) b c d e


export
createPattern :
     {auto _ : Cast t1 CanvasFillStrokeStyles}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                ])
  -> (repetition : String)
  -> JSIO (Maybe CanvasPattern)
createPattern a b c = tryJS "CanvasFillStrokeStyles.createPattern" $
  CanvasFillStrokeStyles.prim__createPattern (cast a) (toFFI b) c


export
createRadialGradient :
     {auto _ : Cast t1 CanvasFillStrokeStyles}
  -> (obj : t1)
  -> (x0 : Double)
  -> (y0 : Double)
  -> (r0 : Double)
  -> (x1 : Double)
  -> (y1 : Double)
  -> (r1 : Double)
  -> JSIO CanvasGradient
createRadialGradient a b c d e f g = primJS $
  CanvasFillStrokeStyles.prim__createRadialGradient (cast a) b c d e f g
