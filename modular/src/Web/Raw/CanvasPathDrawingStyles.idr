module Web.Raw.CanvasPathDrawingStyles

import JS
import Web.Types.CanvasLineCap
import Web.Types.CanvasLineJoin
import Web.Types.CanvasPathDrawingStyles


%default total


export
%foreign "browser:lambda:x=>x.lineCap"
prim__lineCap : CanvasPathDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.lineCap = v}"
prim__setLineCap : CanvasPathDrawingStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lineDashOffset"
prim__lineDashOffset : CanvasPathDrawingStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.lineDashOffset = v}"
prim__setLineDashOffset : CanvasPathDrawingStyles -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lineJoin"
prim__lineJoin : CanvasPathDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.lineJoin = v}"
prim__setLineJoin : CanvasPathDrawingStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.lineWidth"
prim__lineWidth : CanvasPathDrawingStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.lineWidth = v}"
prim__setLineWidth : CanvasPathDrawingStyles -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.miterLimit"
prim__miterLimit : CanvasPathDrawingStyles -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.miterLimit = v}"
prim__setMiterLimit : CanvasPathDrawingStyles -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.getLineDash()"
prim__getLineDash : CanvasPathDrawingStyles -> PrimIO (Array Double)


export
%foreign "browser:lambda:(x,a)=>x.setLineDash(a)"
prim__setLineDash : CanvasPathDrawingStyles -> Array Double -> PrimIO ()


export
lineCap :
     {auto _ : Cast t CanvasPathDrawingStyles}
  -> t
  -> Attribute True Prelude.id CanvasLineCap
lineCap v = fromPrim
              "CanvasPathDrawingStyles.getlineCap"
              prim__lineCap
              prim__setLineCap
              (cast {to = CanvasPathDrawingStyles} v)


export
lineDashOffset :
     {auto _ : Cast t CanvasPathDrawingStyles}
  -> t
  -> Attribute True Prelude.id Double
lineDashOffset v = fromPrim
                     "CanvasPathDrawingStyles.getlineDashOffset"
                     prim__lineDashOffset
                     prim__setLineDashOffset
                     (cast {to = CanvasPathDrawingStyles} v)


export
lineJoin :
     {auto _ : Cast t CanvasPathDrawingStyles}
  -> t
  -> Attribute True Prelude.id CanvasLineJoin
lineJoin v = fromPrim
               "CanvasPathDrawingStyles.getlineJoin"
               prim__lineJoin
               prim__setLineJoin
               (cast {to = CanvasPathDrawingStyles} v)


export
lineWidth :
     {auto _ : Cast t CanvasPathDrawingStyles}
  -> t
  -> Attribute True Prelude.id Double
lineWidth v = fromPrim
                "CanvasPathDrawingStyles.getlineWidth"
                prim__lineWidth
                prim__setLineWidth
                (cast {to = CanvasPathDrawingStyles} v)


export
miterLimit :
     {auto _ : Cast t CanvasPathDrawingStyles}
  -> t
  -> Attribute True Prelude.id Double
miterLimit v = fromPrim
                 "CanvasPathDrawingStyles.getmiterLimit"
                 prim__miterLimit
                 prim__setMiterLimit
                 (cast {to = CanvasPathDrawingStyles} v)


export
getLineDash :
     {auto _ : Cast t1 CanvasPathDrawingStyles}
  -> (obj : t1)
  -> JSIO (Array Double)
getLineDash a = primJS $ CanvasPathDrawingStyles.prim__getLineDash (cast a)


export
setLineDash :
     {auto _ : Cast t1 CanvasPathDrawingStyles}
  -> (obj : t1)
  -> (segments : Array Double)
  -> JSIO ()
setLineDash a b = primJS $ CanvasPathDrawingStyles.prim__setLineDash (cast a) b

