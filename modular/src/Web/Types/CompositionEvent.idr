module Web.Types.CompositionEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent


%default total

export data CompositionEvent : Type where [external]

export
ToFFI CompositionEvent CompositionEvent where toFFI = id

export
FromFFI CompositionEvent CompositionEvent where fromFFI = Just

export
SafeCast CompositionEvent where
  safeCast = unsafeCastOnPrototypeName "CompositionEvent"


export %inline
Cast CompositionEvent UIEvent where cast = believe_me


export %inline
Cast CompositionEvent Event where cast = believe_me


export %inline
Cast CompositionEvent Object where cast = believe_me

