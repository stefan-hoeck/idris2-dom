module Web.Types.WritableStreamDefaultController

import JS


%default total

export data WritableStreamDefaultController : Type where [external]

export
ToFFI WritableStreamDefaultController WritableStreamDefaultController where toFFI = id

export
FromFFI WritableStreamDefaultController WritableStreamDefaultController where fromFFI = Just

export
SafeCast WritableStreamDefaultController where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultController"


export %inline
Cast WritableStreamDefaultController Object where cast = believe_me
