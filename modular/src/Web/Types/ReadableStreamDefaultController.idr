module Web.Types.ReadableStreamDefaultController

import JS


%default total

export data ReadableStreamDefaultController : Type where [external]

export
ToFFI ReadableStreamDefaultController ReadableStreamDefaultController where toFFI = id

export
FromFFI ReadableStreamDefaultController ReadableStreamDefaultController where fromFFI = Just

export
SafeCast ReadableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultController"


export %inline
Cast ReadableStreamDefaultController Object where cast = believe_me
