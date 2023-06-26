module Web.Types.CanvasUserInterface

import JS


%default total

export data CanvasUserInterface : Type where [external]

export
ToFFI CanvasUserInterface CanvasUserInterface where toFFI = id

export
FromFFI CanvasUserInterface CanvasUserInterface where fromFFI = Just

