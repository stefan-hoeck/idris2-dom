module Web.Types.OffscreenCanvasRenderingContext2D

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


%default total

export data OffscreenCanvasRenderingContext2D : Type where [external]

export
ToFFI OffscreenCanvasRenderingContext2D OffscreenCanvasRenderingContext2D where toFFI = id

export
FromFFI OffscreenCanvasRenderingContext2D OffscreenCanvasRenderingContext2D where fromFFI = Just

export
SafeCast OffscreenCanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvasRenderingContext2D"


export %inline
Cast OffscreenCanvasRenderingContext2D Object where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasCompositing where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasDrawImage where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasDrawPath where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasFillStrokeStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasFilters where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasImageData where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasImageSmoothing where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasPath where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasPathDrawingStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasRect where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasShadowStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasState where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasText where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasTextDrawingStyles where cast = believe_me


export %inline
Cast OffscreenCanvasRenderingContext2D CanvasTransform where cast = believe_me
