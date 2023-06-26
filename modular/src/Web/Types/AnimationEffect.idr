module Web.Types.AnimationEffect

import JS


%default total

export data AnimationEffect : Type where [external]

export
ToFFI AnimationEffect AnimationEffect where toFFI = id

export
FromFFI AnimationEffect AnimationEffect where fromFFI = Just

export
SafeCast AnimationEffect where
  safeCast = unsafeCastOnPrototypeName "AnimationEffect"


export %inline
Cast AnimationEffect Object where cast = believe_me
