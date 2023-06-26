module Web.Raw.ImageBitmapRenderingContextSettings

import JS
import Web.Types.ImageBitmapRenderingContextSettings


%default total


export
%foreign "browser:lambda:(a)=> ({alpha: a})"
prim__new : UndefOr Boolean -> PrimIO ImageBitmapRenderingContextSettings


export
%foreign "browser:lambda:x=>x.alpha"
prim__alpha : ImageBitmapRenderingContextSettings -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.alpha = v}"
prim__setAlpha :
     ImageBitmapRenderingContextSettings
  -> UndefOr Boolean
  -> PrimIO ()



export
new' : (alpha : Optional Bool) -> JSIO ImageBitmapRenderingContextSettings
new' a = primJS $ ImageBitmapRenderingContextSettings.prim__new (toFFI a)

export
new : JSIO ImageBitmapRenderingContextSettings
new = primJS $ ImageBitmapRenderingContextSettings.prim__new undef


export
alpha :
     {auto _ : Cast t ImageBitmapRenderingContextSettings}
  -> t
  -> Attribute True Optional Bool
alpha v = fromUndefOrPrim
            "ImageBitmapRenderingContextSettings.getalpha"
            prim__alpha
            prim__setAlpha
            True
            (cast {to = ImageBitmapRenderingContextSettings} v)
