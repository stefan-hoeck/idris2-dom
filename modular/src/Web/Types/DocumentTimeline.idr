module Web.Types.DocumentTimeline

import JS
import Web.Types.AnimationTimeline


%default total

export data DocumentTimeline : Type where [external]

export
ToFFI DocumentTimeline DocumentTimeline where toFFI = id

export
FromFFI DocumentTimeline DocumentTimeline where fromFFI = Just

export
SafeCast DocumentTimeline where
  safeCast = unsafeCastOnPrototypeName "DocumentTimeline"


export %inline
Cast DocumentTimeline AnimationTimeline where cast = believe_me


export %inline
Cast DocumentTimeline Object where cast = believe_me
