module Web.Types.Animation

import JS
import Web.Types.EventTarget


%default total

export data Animation : Type where [external]

export
ToFFI Animation Animation where toFFI = id

export
FromFFI Animation Animation where fromFFI = Just

export
SafeCast Animation where
  safeCast = unsafeCastOnPrototypeName "Animation"


export %inline
Cast Animation EventTarget where cast = believe_me


export %inline
Cast Animation Object where cast = believe_me

