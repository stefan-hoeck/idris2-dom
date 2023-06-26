module Web.Types.CustomEvent

import JS
import Web.Types.Event


%default total

export data CustomEvent : Type where [external]

export
ToFFI CustomEvent CustomEvent where toFFI = id

export
FromFFI CustomEvent CustomEvent where fromFFI = Just

export
SafeCast CustomEvent where
  safeCast = unsafeCastOnPrototypeName "CustomEvent"


export %inline
Cast CustomEvent Event where cast = believe_me


export %inline
Cast CustomEvent Object where cast = believe_me

