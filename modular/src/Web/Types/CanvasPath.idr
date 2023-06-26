module Web.Types.CanvasPath

import JS


%default total

export data CanvasPath : Type where [external]

export
ToFFI CanvasPath CanvasPath where toFFI = id

export
FromFFI CanvasPath CanvasPath where fromFFI = Just

