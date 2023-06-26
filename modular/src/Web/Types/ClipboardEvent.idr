module Web.Types.ClipboardEvent

import JS
import Web.Types.Event


%default total

export data ClipboardEvent : Type where [external]

export
ToFFI ClipboardEvent ClipboardEvent where toFFI = id

export
FromFFI ClipboardEvent ClipboardEvent where fromFFI = Just

export
SafeCast ClipboardEvent where
  safeCast = unsafeCastOnPrototypeName "ClipboardEvent"


export %inline
Cast ClipboardEvent Event where cast = believe_me


export %inline
Cast ClipboardEvent Object where cast = believe_me
