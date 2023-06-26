module Web.Types.CanvasPattern

import JS


%default total

export data CanvasPattern : Type where [external]

export
ToFFI CanvasPattern CanvasPattern where toFFI = id

export
FromFFI CanvasPattern CanvasPattern where fromFFI = Just

export
SafeCast CanvasPattern where
  safeCast = unsafeCastOnPrototypeName "CanvasPattern"


export %inline
Cast CanvasPattern Object where cast = believe_me

