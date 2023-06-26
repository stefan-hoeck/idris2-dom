module Web.Types.ShadowAnimation

import JS
import Web.Types.Animation
import Web.Types.EventTarget


%default total

export data ShadowAnimation : Type where [external]

export
ToFFI ShadowAnimation ShadowAnimation where toFFI = id

export
FromFFI ShadowAnimation ShadowAnimation where fromFFI = Just

export
SafeCast ShadowAnimation where
  safeCast = unsafeCastOnPrototypeName "ShadowAnimation"


export %inline
Cast ShadowAnimation Animation where cast = believe_me


export %inline
Cast ShadowAnimation EventTarget where cast = believe_me


export %inline
Cast ShadowAnimation Object where cast = believe_me
