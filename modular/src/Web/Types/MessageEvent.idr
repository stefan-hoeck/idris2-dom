module Web.Types.MessageEvent

import JS
import Web.Types.Event


%default total

export data MessageEvent : Type where [external]

export
ToFFI MessageEvent MessageEvent where toFFI = id

export
FromFFI MessageEvent MessageEvent where fromFFI = Just

export
SafeCast MessageEvent where
  safeCast = unsafeCastOnPrototypeName "MessageEvent"


export %inline
Cast MessageEvent Event where cast = believe_me


export %inline
Cast MessageEvent Object where cast = believe_me
