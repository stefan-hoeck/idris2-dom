module Web.Types.BeforeUnloadEvent

import JS
import Web.Types.Event


%default total

export data BeforeUnloadEvent : Type where [external]

export
ToFFI BeforeUnloadEvent BeforeUnloadEvent where toFFI = id

export
FromFFI BeforeUnloadEvent BeforeUnloadEvent where fromFFI = Just

export
SafeCast BeforeUnloadEvent where
  safeCast = unsafeCastOnPrototypeName "BeforeUnloadEvent"


export %inline
Cast BeforeUnloadEvent Event where cast = believe_me


export %inline
Cast BeforeUnloadEvent Object where cast = believe_me

