module Web.Types.KeyboardEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent


%default total

export data KeyboardEvent : Type where [external]

export
ToFFI KeyboardEvent KeyboardEvent where toFFI = id

export
FromFFI KeyboardEvent KeyboardEvent where fromFFI = Just

export
SafeCast KeyboardEvent where
  safeCast = unsafeCastOnPrototypeName "KeyboardEvent"


export %inline
Cast KeyboardEvent UIEvent where cast = believe_me


export %inline
Cast KeyboardEvent Event where cast = believe_me


export %inline
Cast KeyboardEvent Object where cast = believe_me
