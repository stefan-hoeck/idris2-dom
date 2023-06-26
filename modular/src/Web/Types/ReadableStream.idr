module Web.Types.ReadableStream

import JS


%default total

export data ReadableStream : Type where [external]

export
ToFFI ReadableStream ReadableStream where toFFI = id

export
FromFFI ReadableStream ReadableStream where fromFFI = Just

export
SafeCast ReadableStream where
  safeCast = unsafeCastOnPrototypeName "ReadableStream"


export %inline
Cast ReadableStream Object where cast = believe_me

