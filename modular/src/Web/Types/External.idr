module Web.Types.External

import JS


%default total

export data External : Type where [external]

export
ToFFI External External where toFFI = id

export
FromFFI External External where fromFFI = Just

export
SafeCast External where
  safeCast = unsafeCastOnPrototypeName "External"


export %inline
Cast External Object where cast = believe_me
