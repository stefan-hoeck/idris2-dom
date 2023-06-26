module Web.Types.MediaQueryList

import JS
import Web.Types.EventTarget


%default total

export data MediaQueryList : Type where [external]

export
ToFFI MediaQueryList MediaQueryList where toFFI = id

export
FromFFI MediaQueryList MediaQueryList where fromFFI = Just

export
SafeCast MediaQueryList where
  safeCast = unsafeCastOnPrototypeName "MediaQueryList"


export %inline
Cast MediaQueryList EventTarget where cast = believe_me


export %inline
Cast MediaQueryList Object where cast = believe_me
