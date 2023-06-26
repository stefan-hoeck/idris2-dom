module Web.Raw.CanvasRenderingContext2D

import JS
import Web.Types.CanvasCompositing
import Web.Types.CanvasDrawImage
import Web.Types.CanvasDrawPath
import Web.Types.CanvasFillStrokeStyles
import Web.Types.CanvasFilters
import Web.Types.CanvasImageData
import Web.Types.CanvasImageSmoothing
import Web.Types.CanvasPath
import Web.Types.CanvasPathDrawingStyles
import Web.Types.CanvasRect
import Web.Types.CanvasRenderingContext2D
import Web.Types.CanvasRenderingContext2DSettings
import Web.Types.CanvasShadowStyles
import Web.Types.CanvasState
import Web.Types.CanvasText
import Web.Types.CanvasTextDrawingStyles
import Web.Types.CanvasTransform
import Web.Types.CanvasUserInterface
import Web.Types.HTMLCanvasElement


%default total


export
%foreign "browser:lambda:x=>x.canvas"
prim__canvas : CanvasRenderingContext2D -> PrimIO HTMLCanvasElement


export
%foreign "browser:lambda:x=>x.getContextAttributes()"
prim__getContextAttributes :
     CanvasRenderingContext2D
  -> PrimIO CanvasRenderingContext2DSettings


export
canvas : (obj : CanvasRenderingContext2D) -> JSIO HTMLCanvasElement
canvas a = primJS $ CanvasRenderingContext2D.prim__canvas a


export
getContextAttributes :
     (obj : CanvasRenderingContext2D)
  -> JSIO CanvasRenderingContext2DSettings
getContextAttributes a = primJS $
  CanvasRenderingContext2D.prim__getContextAttributes a

