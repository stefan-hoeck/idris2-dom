module Web.Types.CanvasTextDrawingStyles

import JS


%default total

export data CanvasTextDrawingStyles : Type where [external]

export
ToFFI CanvasTextDrawingStyles CanvasTextDrawingStyles where toFFI = id

export
FromFFI CanvasTextDrawingStyles CanvasTextDrawingStyles where fromFFI = Just
