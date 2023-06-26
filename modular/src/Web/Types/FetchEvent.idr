module Web.Types.FetchEvent

import JS
import Web.Types.Event
import Web.Types.ExtendableEvent


%default total

export data FetchEvent : Type where [external]

export
ToFFI FetchEvent FetchEvent where toFFI = id

export
FromFFI FetchEvent FetchEvent where fromFFI = Just

export
SafeCast FetchEvent where
  safeCast = unsafeCastOnPrototypeName "FetchEvent"


export %inline
Cast FetchEvent ExtendableEvent where cast = believe_me


export %inline
Cast FetchEvent Event where cast = believe_me


export %inline
Cast FetchEvent Object where cast = believe_me
