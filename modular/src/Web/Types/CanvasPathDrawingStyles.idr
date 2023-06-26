module Web.Types.CanvasPathDrawingStyles

import JS


%default total

export data CanvasPathDrawingStyles : Type where [external]

export
ToFFI CanvasPathDrawingStyles CanvasPathDrawingStyles where toFFI = id

export
FromFFI CanvasPathDrawingStyles CanvasPathDrawingStyles where fromFFI = Just
