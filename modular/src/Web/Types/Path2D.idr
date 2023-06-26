module Web.Types.Path2D

import JS
import Web.Types.CanvasPath


%default total

export data Path2D : Type where [external]

export
ToFFI Path2D Path2D where toFFI = id

export
FromFFI Path2D Path2D where fromFFI = Just

export
SafeCast Path2D where
  safeCast = unsafeCastOnPrototypeName "Path2D"


export %inline
Cast Path2D Object where cast = believe_me


export %inline
Cast Path2D CanvasPath where cast = believe_me

