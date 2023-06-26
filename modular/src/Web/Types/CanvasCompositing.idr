module Web.Types.CanvasCompositing

import JS


%default total

export data CanvasCompositing : Type where [external]

export
ToFFI CanvasCompositing CanvasCompositing where toFFI = id

export
FromFFI CanvasCompositing CanvasCompositing where fromFFI = Just

