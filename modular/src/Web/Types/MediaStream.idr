module Web.Types.MediaStream

import JS
import Web.Types.EventTarget


%default total

export data MediaStream : Type where [external]

export
ToFFI MediaStream MediaStream where toFFI = id

export
FromFFI MediaStream MediaStream where fromFFI = Just

export
SafeCast MediaStream where
  safeCast = unsafeCastOnPrototypeName "MediaStream"


export %inline
Cast MediaStream EventTarget where cast = believe_me


export %inline
Cast MediaStream Object where cast = believe_me
