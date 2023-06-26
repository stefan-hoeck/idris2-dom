module Web.Types.ReadableStreamDefaultReader

import JS
import Web.Types.ReadableStreamGenericReader


%default total

export data ReadableStreamDefaultReader : Type where [external]

export
ToFFI ReadableStreamDefaultReader ReadableStreamDefaultReader where toFFI = id

export
FromFFI ReadableStreamDefaultReader ReadableStreamDefaultReader where fromFFI = Just

export
SafeCast ReadableStreamDefaultReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamDefaultReader"


export %inline
Cast ReadableStreamDefaultReader Object where cast = believe_me


export %inline
Cast ReadableStreamDefaultReader ReadableStreamGenericReader where cast = believe_me

