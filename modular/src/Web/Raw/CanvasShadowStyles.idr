module Web.Raw.CanvasShadowStyles

import JS
import Web.Types.CanvasShadowStyles


%default total


export
%foreign "browser:lambda:x=>x.shadowBlur"
prim__shadowBlur : CanvasShadowStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.shadowBlur = v}"
prim__setShadowBlur : CanvasShadowStyles -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.shadowColor"
prim__shadowColor : CanvasShadowStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.shadowColor = v}"
prim__setShadowColor : CanvasShadowStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.shadowOffsetX"
prim__shadowOffsetX : CanvasShadowStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.shadowOffsetX = v}"
prim__setShadowOffsetX : CanvasShadowStyles -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.shadowOffsetY"
prim__shadowOffsetY : CanvasShadowStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.shadowOffsetY = v}"
prim__setShadowOffsetY : CanvasShadowStyles -> Double -> PrimIO ()



export
shadowBlur :
     {auto _ : Cast t CanvasShadowStyles}
  -> t
  -> Attribute True Prelude.id Double
shadowBlur v = fromPrim
                 "CanvasShadowStyles.getshadowBlur"
                 prim__shadowBlur
                 prim__setShadowBlur
                 (cast {to = CanvasShadowStyles} v)


export
shadowColor :
     {auto _ : Cast t CanvasShadowStyles}
  -> t
  -> Attribute True Prelude.id String
shadowColor v = fromPrim
                  "CanvasShadowStyles.getshadowColor"
                  prim__shadowColor
                  prim__setShadowColor
                  (cast {to = CanvasShadowStyles} v)


export
shadowOffsetX :
     {auto _ : Cast t CanvasShadowStyles}
  -> t
  -> Attribute True Prelude.id Double
shadowOffsetX v = fromPrim
                    "CanvasShadowStyles.getshadowOffsetX"
                    prim__shadowOffsetX
                    prim__setShadowOffsetX
                    (cast {to = CanvasShadowStyles} v)


export
shadowOffsetY :
     {auto _ : Cast t CanvasShadowStyles}
  -> t
  -> Attribute True Prelude.id Double
shadowOffsetY v = fromPrim
                    "CanvasShadowStyles.getshadowOffsetY"
                    prim__shadowOffsetY
                    prim__setShadowOffsetY
                    (cast {to = CanvasShadowStyles} v)
