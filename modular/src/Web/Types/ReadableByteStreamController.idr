module Web.Types.ReadableByteStreamController

import JS


%default total

export data ReadableByteStreamController : Type where [external]

export
ToFFI ReadableByteStreamController ReadableByteStreamController where toFFI = id

export
FromFFI ReadableByteStreamController ReadableByteStreamController where fromFFI = Just

export
SafeCast ReadableByteStreamController where
  safeCast = unsafeCastOnPrototypeName "ReadableByteStreamController"


export %inline
Cast ReadableByteStreamController Object where cast = believe_me
