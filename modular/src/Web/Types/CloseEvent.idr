module Web.Types.CloseEvent

import JS
import Web.Types.Event


%default total

export data CloseEvent : Type where [external]

export
ToFFI CloseEvent CloseEvent where toFFI = id

export
FromFFI CloseEvent CloseEvent where fromFFI = Just

export
SafeCast CloseEvent where
  safeCast = unsafeCastOnPrototypeName "CloseEvent"


export %inline
Cast CloseEvent Event where cast = believe_me


export %inline
Cast CloseEvent Object where cast = believe_me
