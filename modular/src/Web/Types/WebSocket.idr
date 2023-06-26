module Web.Types.WebSocket

import JS
import Web.Types.EventTarget


%default total

export data WebSocket : Type where [external]

export
ToFFI WebSocket WebSocket where toFFI = id

export
FromFFI WebSocket WebSocket where fromFFI = Just

export
SafeCast WebSocket where
  safeCast = unsafeCastOnPrototypeName "WebSocket"


export %inline
Cast WebSocket EventTarget where cast = believe_me


export %inline
Cast WebSocket Object where cast = believe_me

