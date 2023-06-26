module Web.Types.FormDataEvent

import JS
import Web.Types.Event


%default total

export data FormDataEvent : Type where [external]

export
ToFFI FormDataEvent FormDataEvent where toFFI = id

export
FromFFI FormDataEvent FormDataEvent where fromFFI = Just

export
SafeCast FormDataEvent where
  safeCast = unsafeCastOnPrototypeName "FormDataEvent"


export %inline
Cast FormDataEvent Event where cast = believe_me


export %inline
Cast FormDataEvent Object where cast = believe_me
