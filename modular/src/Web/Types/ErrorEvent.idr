module Web.Types.ErrorEvent

import JS
import Web.Types.Event


%default total

export data ErrorEvent : Type where [external]

export
ToFFI ErrorEvent ErrorEvent where toFFI = id

export
FromFFI ErrorEvent ErrorEvent where fromFFI = Just

export
SafeCast ErrorEvent where
  safeCast = unsafeCastOnPrototypeName "ErrorEvent"


export %inline
Cast ErrorEvent Event where cast = believe_me


export %inline
Cast ErrorEvent Object where cast = believe_me
