module Web.Types.HashChangeEvent

import JS
import Web.Types.Event


%default total

export data HashChangeEvent : Type where [external]

export
ToFFI HashChangeEvent HashChangeEvent where toFFI = id

export
FromFFI HashChangeEvent HashChangeEvent where fromFFI = Just

export
SafeCast HashChangeEvent where
  safeCast = unsafeCastOnPrototypeName "HashChangeEvent"


export %inline
Cast HashChangeEvent Event where cast = believe_me


export %inline
Cast HashChangeEvent Object where cast = believe_me

