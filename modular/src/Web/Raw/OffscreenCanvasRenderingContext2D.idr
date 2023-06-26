module Web.Raw.OffscreenCanvasRenderingContext2D

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
import Web.Types.CanvasShadowStyles
import Web.Types.CanvasState
import Web.Types.CanvasText
import Web.Types.CanvasTextDrawingStyles
import Web.Types.CanvasTransform
import Web.Types.OffscreenCanvas
import Web.Types.OffscreenCanvasRenderingContext2D


%default total


export
%foreign "browser:lambda:x=>x.canvas"
prim__canvas : OffscreenCanvasRenderingContext2D -> PrimIO OffscreenCanvas


export
%foreign "browser:lambda:x=>x.commit()"
prim__commit : OffscreenCanvasRenderingContext2D -> PrimIO ()


export
canvas : (obj : OffscreenCanvasRenderingContext2D) -> JSIO OffscreenCanvas
canvas a = primJS $ OffscreenCanvasRenderingContext2D.prim__canvas a


export
commit : (obj : OffscreenCanvasRenderingContext2D) -> JSIO ()
commit a = primJS $ OffscreenCanvasRenderingContext2D.prim__commit a

