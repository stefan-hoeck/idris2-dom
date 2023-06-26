module Web.Raw.CanvasCompositing

import JS
import Web.Types.CanvasCompositing


%default total


export
%foreign "browser:lambda:x=>x.globalAlpha"
prim__globalAlpha : CanvasCompositing -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.globalAlpha = v}"
prim__setGlobalAlpha : CanvasCompositing -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.globalCompositeOperation"
prim__globalCompositeOperation : CanvasCompositing -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.globalCompositeOperation = v}"
prim__setGlobalCompositeOperation : CanvasCompositing -> String -> PrimIO ()



export
globalAlpha :
     {auto _ : Cast t CanvasCompositing}
  -> t
  -> Attribute True Prelude.id Double
globalAlpha v = fromPrim
                  "CanvasCompositing.getglobalAlpha"
                  prim__globalAlpha
                  prim__setGlobalAlpha
                  (cast {to = CanvasCompositing} v)


export
globalCompositeOperation :
     {auto _ : Cast t CanvasCompositing}
  -> t
  -> Attribute True Prelude.id String
globalCompositeOperation v = fromPrim
                               "CanvasCompositing.getglobalCompositeOperation"
                               prim__globalCompositeOperation
                               prim__setGlobalCompositeOperation
                               (cast {to = CanvasCompositing} v)

