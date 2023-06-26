module Web.Types.CanvasImageData

import JS


%default total

export data CanvasImageData : Type where [external]

export
ToFFI CanvasImageData CanvasImageData where toFFI = id

export
FromFFI CanvasImageData CanvasImageData where fromFFI = Just

