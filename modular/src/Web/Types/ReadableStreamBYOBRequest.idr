module Web.Types.ReadableStreamBYOBRequest

import JS


%default total

export data ReadableStreamBYOBRequest : Type where [external]

export
ToFFI ReadableStreamBYOBRequest ReadableStreamBYOBRequest where toFFI = id

export
FromFFI ReadableStreamBYOBRequest ReadableStreamBYOBRequest where fromFFI = Just

export
SafeCast ReadableStreamBYOBRequest where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBRequest"


export %inline
Cast ReadableStreamBYOBRequest Object where cast = believe_me
