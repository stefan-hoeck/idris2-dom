module Web.Types.FocusEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent


%default total

export data FocusEvent : Type where [external]

export
ToFFI FocusEvent FocusEvent where toFFI = id

export
FromFFI FocusEvent FocusEvent where fromFFI = Just

export
SafeCast FocusEvent where
  safeCast = unsafeCastOnPrototypeName "FocusEvent"


export %inline
Cast FocusEvent UIEvent where cast = believe_me


export %inline
Cast FocusEvent Event where cast = believe_me


export %inline
Cast FocusEvent Object where cast = believe_me

