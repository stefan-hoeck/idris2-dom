module Web.Types.TextMetrics

import JS


%default total

export data TextMetrics : Type where [external]

export
ToFFI TextMetrics TextMetrics where toFFI = id

export
FromFFI TextMetrics TextMetrics where fromFFI = Just

export
SafeCast TextMetrics where
  safeCast = unsafeCastOnPrototypeName "TextMetrics"


export %inline
Cast TextMetrics Object where cast = believe_me
