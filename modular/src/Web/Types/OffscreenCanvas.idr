module Web.Types.OffscreenCanvas

import JS
import Web.Types.EventTarget


%default total

export data OffscreenCanvas : Type where [external]

export
ToFFI OffscreenCanvas OffscreenCanvas where toFFI = id

export
FromFFI OffscreenCanvas OffscreenCanvas where fromFFI = Just

export
SafeCast OffscreenCanvas where
  safeCast = unsafeCastOnPrototypeName "OffscreenCanvas"


export %inline
Cast OffscreenCanvas EventTarget where cast = believe_me


export %inline
Cast OffscreenCanvas Object where cast = believe_me
