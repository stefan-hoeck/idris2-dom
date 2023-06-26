module Web.Types.ReadableStreamIteratorOptions

import JS


%default total

export data ReadableStreamIteratorOptions : Type where [external]

export
ToFFI ReadableStreamIteratorOptions ReadableStreamIteratorOptions where toFFI = id

export
FromFFI ReadableStreamIteratorOptions ReadableStreamIteratorOptions where fromFFI = Just


export %inline
Cast ReadableStreamIteratorOptions Object where cast = believe_me
