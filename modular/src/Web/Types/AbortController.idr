module Web.Types.AbortController

import JS


%default total

export data AbortController : Type where [external]

export
ToFFI AbortController AbortController where toFFI = id

export
FromFFI AbortController AbortController where fromFFI = Just

export
SafeCast AbortController where
  safeCast = unsafeCastOnPrototypeName "AbortController"


export %inline
Cast AbortController Object where cast = believe_me
