module Web.Types.Headers

import JS


%default total

export data Headers : Type where [external]

export
ToFFI Headers Headers where toFFI = id

export
FromFFI Headers Headers where fromFFI = Just

export
SafeCast Headers where
  safeCast = unsafeCastOnPrototypeName "Headers"


export %inline
Cast Headers Object where cast = believe_me

