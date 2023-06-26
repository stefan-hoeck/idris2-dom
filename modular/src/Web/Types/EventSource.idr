module Web.Types.EventSource

import JS
import Web.Types.EventTarget


%default total

export data EventSource : Type where [external]

export
ToFFI EventSource EventSource where toFFI = id

export
FromFFI EventSource EventSource where fromFFI = Just

export
SafeCast EventSource where
  safeCast = unsafeCastOnPrototypeName "EventSource"


export %inline
Cast EventSource EventTarget where cast = believe_me


export %inline
Cast EventSource Object where cast = believe_me

