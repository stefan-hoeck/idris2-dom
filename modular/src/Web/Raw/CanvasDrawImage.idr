module Web.Raw.CanvasDrawImage

import JS
import Web.Types.CanvasDrawImage
import Web.Types.HTMLCanvasElement
import Web.Types.HTMLImageElement
import Web.Types.HTMLVideoElement
import Web.Types.ImageBitmap
import Web.Types.OffscreenCanvas
import Web.Types.SVGImageElement


%default total


export
%foreign "browser:lambda:(x,a,b,c)=>x.drawImage(a,b,c)"
prim__drawImage :
     CanvasDrawImage
  -> Union6
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e)=>x.drawImage(a,b,c,d,e)"
prim__drawImage1 :
     CanvasDrawImage
  -> Union6
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
%foreign "browser:lambda:(x,a,b,c,d,e,f,g,h,i)=>x.drawImage(a,b,c,d,e,f,g,h,i)"
prim__drawImage2 :
     CanvasDrawImage
  -> Union6
       HTMLImageElement
       SVGImageElement
       HTMLVideoElement
       HTMLCanvasElement
       ImageBitmap
       OffscreenCanvas
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> PrimIO ()


export
drawImage :
     {auto _ : Cast t1 CanvasDrawImage}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                ])
  -> (dx : Double)
  -> (dy : Double)
  -> JSIO ()
drawImage a b c d = primJS $
  CanvasDrawImage.prim__drawImage (cast a) (toFFI b) c d


export
drawImage1 :
     {auto _ : Cast t1 CanvasDrawImage}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                ])
  -> (dx : Double)
  -> (dy : Double)
  -> (dw : Double)
  -> (dh : Double)
  -> JSIO ()
drawImage1 a b c d e f = primJS $
  CanvasDrawImage.prim__drawImage1 (cast a) (toFFI b) c d e f


export
drawImage2 :
     {auto _ : Cast t1 CanvasDrawImage}
  -> (obj : t1)
  -> (image : HSum
                [ HTMLImageElement
                , SVGImageElement
                , HTMLVideoElement
                , HTMLCanvasElement
                , ImageBitmap
                , OffscreenCanvas
                ])
  -> (sx : Double)
  -> (sy : Double)
  -> (sw : Double)
  -> (sh : Double)
  -> (dx : Double)
  -> (dy : Double)
  -> (dw : Double)
  -> (dh : Double)
  -> JSIO ()
drawImage2 a b c d e f g h i j = primJS $
  CanvasDrawImage.prim__drawImage2 (cast a) (toFFI b) c d e f g h i j
