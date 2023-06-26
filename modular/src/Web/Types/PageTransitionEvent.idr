module Web.Types.PageTransitionEvent

import JS
import Web.Types.Event


%default total

export data PageTransitionEvent : Type where [external]

export
ToFFI PageTransitionEvent PageTransitionEvent where toFFI = id

export
FromFFI PageTransitionEvent PageTransitionEvent where fromFFI = Just

export
SafeCast PageTransitionEvent where
  safeCast = unsafeCastOnPrototypeName "PageTransitionEvent"


export %inline
Cast PageTransitionEvent Event where cast = believe_me


export %inline
Cast PageTransitionEvent Object where cast = believe_me

