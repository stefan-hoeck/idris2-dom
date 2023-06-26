module Web.Types.CanvasTransform

import JS


%default total

export data CanvasTransform : Type where [external]

export
ToFFI CanvasTransform CanvasTransform where toFFI = id

export
FromFFI CanvasTransform CanvasTransform where fromFFI = Just

