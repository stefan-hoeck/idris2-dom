module Web.Types.AnimationTimeline

import JS


%default total

export data AnimationTimeline : Type where [external]

export
ToFFI AnimationTimeline AnimationTimeline where toFFI = id

export
FromFFI AnimationTimeline AnimationTimeline where fromFFI = Just

export
SafeCast AnimationTimeline where
  safeCast = unsafeCastOnPrototypeName "AnimationTimeline"


export %inline
Cast AnimationTimeline Object where cast = believe_me
