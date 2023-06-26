module Web.Raw.OffscreenCanvas

import JS
import Web.Types.Blob
import Web.Types.EventTarget
import Web.Types.ImageBitmap
import Web.Types.ImageBitmapRenderingContext
import Web.Types.ImageEncodeOptions
import Web.Types.OffscreenCanvas
import Web.Types.OffscreenCanvasRenderingContext2D
import Web.Types.OffscreenRenderingContextId
import Web.Types.WebGL2RenderingContext
import Web.Types.WebGLRenderingContext


%default total


export
%foreign "browser:lambda:(a,b)=> new OffscreenCanvas(a,b)"
prim__new : JSBits64 -> JSBits64 -> PrimIO OffscreenCanvas


export
%foreign "browser:lambda:x=>x.height"
prim__height : OffscreenCanvas -> PrimIO JSBits64



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : OffscreenCanvas -> JSBits64 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : OffscreenCanvas -> PrimIO JSBits64



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : OffscreenCanvas -> JSBits64 -> PrimIO ()



export
%foreign "browser:lambda:(x,a)=>x.convertToBlob(a)"
prim__convertToBlob :
     OffscreenCanvas
  -> UndefOr ImageEncodeOptions
  -> PrimIO (Promise Blob)


export
%foreign "browser:lambda:(x,a,b)=>x.getContext(a,b)"
prim__getContext :
     OffscreenCanvas
  -> String
  -> UndefOr AnyPtr
  -> PrimIO
       (Nullable
          (Union4
             OffscreenCanvasRenderingContext2D
             ImageBitmapRenderingContext
             WebGLRenderingContext
             WebGL2RenderingContext))


export
%foreign "browser:lambda:x=>x.transferToImageBitmap()"
prim__transferToImageBitmap : OffscreenCanvas -> PrimIO ImageBitmap


export
new : (width : JSBits64) -> (height : JSBits64) -> JSIO OffscreenCanvas
new a b = primJS $ OffscreenCanvas.prim__new a b


export
height : OffscreenCanvas -> Attribute True Prelude.id JSBits64
height v = fromPrim "OffscreenCanvas.getheight" prim__height prim__setHeight v


export
width : OffscreenCanvas -> Attribute True Prelude.id JSBits64
width v = fromPrim "OffscreenCanvas.getwidth" prim__width prim__setWidth v


export
convertToBlob' :
     {auto _ : Cast t2 ImageEncodeOptions}
  -> (obj : OffscreenCanvas)
  -> (options : Optional t2)
  -> JSIO (Promise Blob)
convertToBlob' a b = primJS $ OffscreenCanvas.prim__convertToBlob a (optUp b)

export
convertToBlob : (obj : OffscreenCanvas) -> JSIO (Promise Blob)
convertToBlob a = primJS $ OffscreenCanvas.prim__convertToBlob a undef


export
getContext' :
     (obj : OffscreenCanvas)
  -> (contextId : OffscreenRenderingContextId)
  -> (options : Optional Any)
  -> JSIO
       (Maybe
          (HSum
             [ OffscreenCanvasRenderingContext2D
             , ImageBitmapRenderingContext
             , WebGLRenderingContext
             , WebGL2RenderingContext
             ]))
getContext' a b c = tryJS "OffscreenCanvas.getContext'" $
  OffscreenCanvas.prim__getContext a (toFFI b) (toFFI c)

export
getContext :
     (obj : OffscreenCanvas)
  -> (contextId : OffscreenRenderingContextId)
  -> JSIO
       (Maybe
          (HSum
             [ OffscreenCanvasRenderingContext2D
             , ImageBitmapRenderingContext
             , WebGLRenderingContext
             , WebGL2RenderingContext
             ]))
getContext a b = tryJS "OffscreenCanvas.getContext" $
  OffscreenCanvas.prim__getContext a (toFFI b) undef


export
transferToImageBitmap : (obj : OffscreenCanvas) -> JSIO ImageBitmap
transferToImageBitmap a = primJS $ OffscreenCanvas.prim__transferToImageBitmap a
