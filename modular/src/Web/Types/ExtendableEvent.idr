module Web.Types.ExtendableEvent

import JS
import Web.Types.Event


%default total

export data ExtendableEvent : Type where [external]

export
ToFFI ExtendableEvent ExtendableEvent where toFFI = id

export
FromFFI ExtendableEvent ExtendableEvent where fromFFI = Just

export
SafeCast ExtendableEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableEvent"


export %inline
Cast ExtendableEvent Event where cast = believe_me


export %inline
Cast ExtendableEvent Object where cast = believe_me

