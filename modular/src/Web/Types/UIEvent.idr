module Web.Types.UIEvent

import JS
import Web.Types.Event


%default total

export data UIEvent : Type where [external]

export
ToFFI UIEvent UIEvent where toFFI = id

export
FromFFI UIEvent UIEvent where fromFFI = Just

export
SafeCast UIEvent where
  safeCast = unsafeCastOnPrototypeName "UIEvent"


export %inline
Cast UIEvent Event where cast = believe_me


export %inline
Cast UIEvent Object where cast = believe_me

