module Web.Types.CanvasRect

import JS


%default total

export data CanvasRect : Type where [external]

export
ToFFI CanvasRect CanvasRect where toFFI = id

export
FromFFI CanvasRect CanvasRect where fromFFI = Just

