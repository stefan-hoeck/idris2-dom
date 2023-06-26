module Web.Types.CanvasText

import JS


%default total

export data CanvasText : Type where [external]

export
ToFFI CanvasText CanvasText where toFFI = id

export
FromFFI CanvasText CanvasText where fromFFI = Just

