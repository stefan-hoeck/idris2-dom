module Web.Types.CanvasDrawPath

import JS


%default total

export data CanvasDrawPath : Type where [external]

export
ToFFI CanvasDrawPath CanvasDrawPath where toFFI = id

export
FromFFI CanvasDrawPath CanvasDrawPath where fromFFI = Just

