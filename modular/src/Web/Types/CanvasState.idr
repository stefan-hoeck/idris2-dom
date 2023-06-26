module Web.Types.CanvasState

import JS


%default total

export data CanvasState : Type where [external]

export
ToFFI CanvasState CanvasState where toFFI = id

export
FromFFI CanvasState CanvasState where fromFFI = Just
