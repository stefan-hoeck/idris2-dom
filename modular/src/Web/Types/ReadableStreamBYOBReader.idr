module Web.Types.ReadableStreamBYOBReader

import JS
import Web.Types.ReadableStreamGenericReader


%default total

export data ReadableStreamBYOBReader : Type where [external]

export
ToFFI ReadableStreamBYOBReader ReadableStreamBYOBReader where toFFI = id

export
FromFFI ReadableStreamBYOBReader ReadableStreamBYOBReader where fromFFI = Just

export
SafeCast ReadableStreamBYOBReader where
  safeCast = unsafeCastOnPrototypeName "ReadableStreamBYOBReader"


export %inline
Cast ReadableStreamBYOBReader Object where cast = believe_me


export %inline
Cast ReadableStreamBYOBReader ReadableStreamGenericReader where cast = believe_me

