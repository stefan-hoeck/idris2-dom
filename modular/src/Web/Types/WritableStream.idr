module Web.Types.WritableStream

import JS


%default total

export data WritableStream : Type where [external]

export
ToFFI WritableStream WritableStream where toFFI = id

export
FromFFI WritableStream WritableStream where fromFFI = Just

export
SafeCast WritableStream where
  safeCast = unsafeCastOnPrototypeName "WritableStream"


export %inline
Cast WritableStream Object where cast = believe_me

