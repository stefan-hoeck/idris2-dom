module Web.Types.SubmitEvent

import JS
import Web.Types.Event


%default total

export data SubmitEvent : Type where [external]

export
ToFFI SubmitEvent SubmitEvent where toFFI = id

export
FromFFI SubmitEvent SubmitEvent where fromFFI = Just

export
SafeCast SubmitEvent where
  safeCast = unsafeCastOnPrototypeName "SubmitEvent"


export %inline
Cast SubmitEvent Event where cast = believe_me


export %inline
Cast SubmitEvent Object where cast = believe_me
