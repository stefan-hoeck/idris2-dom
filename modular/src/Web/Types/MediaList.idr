module Web.Types.MediaList

import JS


%default total

export data MediaList : Type where [external]

export
ToFFI MediaList MediaList where toFFI = id

export
FromFFI MediaList MediaList where fromFFI = Just

export
SafeCast MediaList where
  safeCast = unsafeCastOnPrototypeName "MediaList"


export %inline
Cast MediaList Object where cast = believe_me
