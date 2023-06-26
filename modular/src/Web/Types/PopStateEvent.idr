module Web.Types.PopStateEvent

import JS
import Web.Types.Event


%default total

export data PopStateEvent : Type where [external]

export
ToFFI PopStateEvent PopStateEvent where toFFI = id

export
FromFFI PopStateEvent PopStateEvent where fromFFI = Just

export
SafeCast PopStateEvent where
  safeCast = unsafeCastOnPrototypeName "PopStateEvent"


export %inline
Cast PopStateEvent Event where cast = believe_me


export %inline
Cast PopStateEvent Object where cast = believe_me

