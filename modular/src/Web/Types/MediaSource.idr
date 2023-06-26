module Web.Types.MediaSource

import JS
import Web.Types.EventTarget


%default total

export data MediaSource : Type where [external]

export
ToFFI MediaSource MediaSource where toFFI = id

export
FromFFI MediaSource MediaSource where fromFFI = Just

export
SafeCast MediaSource where
  safeCast = unsafeCastOnPrototypeName "MediaSource"


export %inline
Cast MediaSource EventTarget where cast = believe_me


export %inline
Cast MediaSource Object where cast = believe_me

