module Web.Types.BroadcastChannel

import JS
import Web.Types.EventTarget


%default total

export data BroadcastChannel : Type where [external]

export
ToFFI BroadcastChannel BroadcastChannel where toFFI = id

export
FromFFI BroadcastChannel BroadcastChannel where fromFFI = Just

export
SafeCast BroadcastChannel where
  safeCast = unsafeCastOnPrototypeName "BroadcastChannel"


export %inline
Cast BroadcastChannel EventTarget where cast = believe_me


export %inline
Cast BroadcastChannel Object where cast = believe_me
