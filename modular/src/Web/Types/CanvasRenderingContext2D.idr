module Web.Types.CanvasRenderingContext2D

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
import Web.Types.CanvasUserInterface


%default total

export data CanvasRenderingContext2D : Type where [external]

export
ToFFI CanvasRenderingContext2D CanvasRenderingContext2D where toFFI = id

export
FromFFI CanvasRenderingContext2D CanvasRenderingContext2D where fromFFI = Just

export
SafeCast CanvasRenderingContext2D where
  safeCast = unsafeCastOnPrototypeName "CanvasRenderingContext2D"


export %inline
Cast CanvasRenderingContext2D Object where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasCompositing where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasDrawImage where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasDrawPath where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasFillStrokeStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasFilters where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasImageData where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasImageSmoothing where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasPath where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasPathDrawingStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasRect where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasShadowStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasState where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasText where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasTextDrawingStyles where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasTransform where cast = believe_me


export %inline
Cast CanvasRenderingContext2D CanvasUserInterface where cast = believe_me
