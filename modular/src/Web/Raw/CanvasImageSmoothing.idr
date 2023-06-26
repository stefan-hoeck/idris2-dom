module Web.Raw.CanvasImageSmoothing

import JS
import Web.Types.CanvasImageSmoothing
import Web.Types.ImageSmoothingQuality


%default total


export
%foreign "browser:lambda:x=>x.imageSmoothingEnabled"
prim__imageSmoothingEnabled : CanvasImageSmoothing -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.imageSmoothingEnabled = v}"
prim__setImageSmoothingEnabled : CanvasImageSmoothing -> Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.imageSmoothingQuality"
prim__imageSmoothingQuality : CanvasImageSmoothing -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.imageSmoothingQuality = v}"
prim__setImageSmoothingQuality : CanvasImageSmoothing -> String -> PrimIO ()



export
imageSmoothingEnabled :
     {auto _ : Cast t CanvasImageSmoothing}
  -> t
  -> Attribute True Prelude.id Bool
imageSmoothingEnabled v = fromPrim
                            "CanvasImageSmoothing.getimageSmoothingEnabled"
                            prim__imageSmoothingEnabled
                            prim__setImageSmoothingEnabled
                            (cast {to = CanvasImageSmoothing} v)


export
imageSmoothingQuality :
     {auto _ : Cast t CanvasImageSmoothing}
  -> t
  -> Attribute True Prelude.id ImageSmoothingQuality
imageSmoothingQuality v = fromPrim
                            "CanvasImageSmoothing.getimageSmoothingQuality"
                            prim__imageSmoothingQuality
                            prim__setImageSmoothingQuality
                            (cast {to = CanvasImageSmoothing} v)

