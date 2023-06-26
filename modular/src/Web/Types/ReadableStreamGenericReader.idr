module Web.Types.ReadableStreamGenericReader

import JS


%default total

export data ReadableStreamGenericReader : Type where [external]

export
ToFFI ReadableStreamGenericReader ReadableStreamGenericReader where toFFI = id

export
FromFFI ReadableStreamGenericReader ReadableStreamGenericReader where fromFFI = Just
