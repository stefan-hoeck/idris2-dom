module Web.Types.CanvasGradient

import JS


%default total

export data CanvasGradient : Type where [external]

export
ToFFI CanvasGradient CanvasGradient where toFFI = id

export
FromFFI CanvasGradient CanvasGradient where fromFFI = Just

export
SafeCast CanvasGradient where
  safeCast = unsafeCastOnPrototypeName "CanvasGradient"


export %inline
Cast CanvasGradient Object where cast = believe_me

