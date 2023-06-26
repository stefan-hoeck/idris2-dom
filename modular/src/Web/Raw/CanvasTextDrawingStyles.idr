module Web.Raw.CanvasTextDrawingStyles

import JS
import Web.Types.CanvasDirection
import Web.Types.CanvasTextAlign
import Web.Types.CanvasTextBaseline
import Web.Types.CanvasTextDrawingStyles


%default total


export
%foreign "browser:lambda:x=>x.direction"
prim__direction : CanvasTextDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.direction = v}"
prim__setDirection : CanvasTextDrawingStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.font"
prim__font : CanvasTextDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.font = v}"
prim__setFont : CanvasTextDrawingStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.textAlign"
prim__textAlign : CanvasTextDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.textAlign = v}"
prim__setTextAlign : CanvasTextDrawingStyles -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.textBaseline"
prim__textBaseline : CanvasTextDrawingStyles -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.textBaseline = v}"
prim__setTextBaseline : CanvasTextDrawingStyles -> String -> PrimIO ()



export
direction :
     {auto _ : Cast t CanvasTextDrawingStyles}
  -> t
  -> Attribute True Prelude.id CanvasDirection
direction v = fromPrim
                "CanvasTextDrawingStyles.getdirection"
                prim__direction
                prim__setDirection
                (cast {to = CanvasTextDrawingStyles} v)


export
font :
     {auto _ : Cast t CanvasTextDrawingStyles}
  -> t
  -> Attribute True Prelude.id String
font v = fromPrim
           "CanvasTextDrawingStyles.getfont"
           prim__font
           prim__setFont
           (cast {to = CanvasTextDrawingStyles} v)


export
textAlign :
     {auto _ : Cast t CanvasTextDrawingStyles}
  -> t
  -> Attribute True Prelude.id CanvasTextAlign
textAlign v = fromPrim
                "CanvasTextDrawingStyles.gettextAlign"
                prim__textAlign
                prim__setTextAlign
                (cast {to = CanvasTextDrawingStyles} v)


export
textBaseline :
     {auto _ : Cast t CanvasTextDrawingStyles}
  -> t
  -> Attribute True Prelude.id CanvasTextBaseline
textBaseline v = fromPrim
                   "CanvasTextDrawingStyles.gettextBaseline"
                   prim__textBaseline
                   prim__setTextBaseline
                   (cast {to = CanvasTextDrawingStyles} v)

