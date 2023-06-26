module Web.Types.MouseEvent

import JS
import Web.Types.Event
import Web.Types.UIEvent


%default total

export data MouseEvent : Type where [external]

export
ToFFI MouseEvent MouseEvent where toFFI = id

export
FromFFI MouseEvent MouseEvent where fromFFI = Just

export
SafeCast MouseEvent where
  safeCast = unsafeCastOnPrototypeName "MouseEvent"


export %inline
Cast MouseEvent UIEvent where cast = believe_me


export %inline
Cast MouseEvent Event where cast = believe_me


export %inline
Cast MouseEvent Object where cast = believe_me
