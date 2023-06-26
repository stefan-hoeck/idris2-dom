module Web.Types.MediaError

import JS


%default total

export data MediaError : Type where [external]

export
ToFFI MediaError MediaError where toFFI = id

export
FromFFI MediaError MediaError where fromFFI = Just

export
SafeCast MediaError where
  safeCast = unsafeCastOnPrototypeName "MediaError"


export %inline
Cast MediaError Object where cast = believe_me
