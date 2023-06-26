module Web.Types.InputEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent


%default total

export data InputEvent : Type where [external]

export
ToFFI InputEvent InputEvent where toFFI = id

export
FromFFI InputEvent InputEvent where fromFFI = Just

export
SafeCast InputEvent where
  safeCast = unsafeCastOnPrototypeName "InputEvent"


export %inline
Cast InputEvent UIEvent where cast = believe_me


export %inline
Cast InputEvent Event where cast = believe_me


export %inline
Cast InputEvent Object where cast = believe_me

