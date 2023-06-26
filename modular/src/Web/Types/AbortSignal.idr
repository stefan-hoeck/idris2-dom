module Web.Types.AbortSignal

import JS
import Web.Types.EventTarget


%default total

export data AbortSignal : Type where [external]

export
ToFFI AbortSignal AbortSignal where toFFI = id

export
FromFFI AbortSignal AbortSignal where fromFFI = Just

export
SafeCast AbortSignal where
  safeCast = unsafeCastOnPrototypeName "AbortSignal"


export %inline
Cast AbortSignal EventTarget where cast = believe_me


export %inline
Cast AbortSignal Object where cast = believe_me

