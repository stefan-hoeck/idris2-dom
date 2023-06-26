module Web.Types.PromiseRejectionEvent

import JS
import Web.Types.Event


%default total

export data PromiseRejectionEvent : Type where [external]

export
ToFFI PromiseRejectionEvent PromiseRejectionEvent where toFFI = id

export
FromFFI PromiseRejectionEvent PromiseRejectionEvent where fromFFI = Just

export
SafeCast PromiseRejectionEvent where
  safeCast = unsafeCastOnPrototypeName "PromiseRejectionEvent"


export %inline
Cast PromiseRejectionEvent Event where cast = believe_me


export %inline
Cast PromiseRejectionEvent Object where cast = believe_me

