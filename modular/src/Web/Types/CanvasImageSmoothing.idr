module Web.Types.CanvasImageSmoothing

import JS


%default total

export data CanvasImageSmoothing : Type where [external]

export
ToFFI CanvasImageSmoothing CanvasImageSmoothing where toFFI = id

export
FromFFI CanvasImageSmoothing CanvasImageSmoothing where fromFFI = Just
