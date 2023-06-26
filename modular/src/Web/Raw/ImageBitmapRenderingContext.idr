module Web.Raw.ImageBitmapRenderingContext

import JS
import Web.Types.HTMLCanvasElement
import Web.Types.ImageBitmap
import Web.Types.ImageBitmapRenderingContext
import Web.Types.OffscreenCanvas


%default total


export
%foreign "browser:lambda:x=>x.canvas"
prim__canvas :
     ImageBitmapRenderingContext
  -> PrimIO (Union2 HTMLCanvasElement OffscreenCanvas)


export
%foreign "browser:lambda:(x,a)=>x.transferFromImageBitmap(a)"
prim__transferFromImageBitmap :
     ImageBitmapRenderingContext
  -> Nullable ImageBitmap
  -> PrimIO ()


export
canvas :
     (obj : ImageBitmapRenderingContext)
  -> JSIO (HSum [HTMLCanvasElement, OffscreenCanvas])
canvas a = tryJS "ImageBitmapRenderingContext.canvas" $
  ImageBitmapRenderingContext.prim__canvas a


export
transferFromImageBitmap :
     (obj : ImageBitmapRenderingContext)
  -> (bitmap : Maybe ImageBitmap)
  -> JSIO ()
transferFromImageBitmap a b = primJS $
  ImageBitmapRenderingContext.prim__transferFromImageBitmap a (toFFI b)
