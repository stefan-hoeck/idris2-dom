module Web.Types.WritableStreamDefaultWriter

import JS


%default total

export data WritableStreamDefaultWriter : Type where [external]

export
ToFFI WritableStreamDefaultWriter WritableStreamDefaultWriter where toFFI = id

export
FromFFI WritableStreamDefaultWriter WritableStreamDefaultWriter where fromFFI = Just

export
SafeCast WritableStreamDefaultWriter where
  safeCast = unsafeCastOnPrototypeName "WritableStreamDefaultWriter"


export %inline
Cast WritableStreamDefaultWriter Object where cast = believe_me
