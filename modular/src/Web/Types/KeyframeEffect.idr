module Web.Types.KeyframeEffect

import JS
import Web.Types.AnimationEffect


%default total

export data KeyframeEffect : Type where [external]

export
ToFFI KeyframeEffect KeyframeEffect where toFFI = id

export
FromFFI KeyframeEffect KeyframeEffect where fromFFI = Just

export
SafeCast KeyframeEffect where
  safeCast = unsafeCastOnPrototypeName "KeyframeEffect"


export %inline
Cast KeyframeEffect AnimationEffect where cast = believe_me


export %inline
Cast KeyframeEffect Object where cast = believe_me
