module Web.Types.ExtendableMessageEvent

import JS
import Web.Types.Event
import Web.Types.ExtendableEvent


%default total

export data ExtendableMessageEvent : Type where [external]

export
ToFFI ExtendableMessageEvent ExtendableMessageEvent where toFFI = id

export
FromFFI ExtendableMessageEvent ExtendableMessageEvent where fromFFI = Just

export
SafeCast ExtendableMessageEvent where
  safeCast = unsafeCastOnPrototypeName "ExtendableMessageEvent"


export %inline
Cast ExtendableMessageEvent ExtendableEvent where cast = believe_me


export %inline
Cast ExtendableMessageEvent Event where cast = believe_me


export %inline
Cast ExtendableMessageEvent Object where cast = believe_me

