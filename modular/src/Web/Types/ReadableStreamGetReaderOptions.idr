module Web.Types.ReadableStreamGetReaderOptions

import JS


%default total

export data ReadableStreamGetReaderOptions : Type where [external]

export
ToFFI ReadableStreamGetReaderOptions ReadableStreamGetReaderOptions where toFFI = id

export
FromFFI ReadableStreamGetReaderOptions ReadableStreamGetReaderOptions where fromFFI = Just


export %inline
Cast ReadableStreamGetReaderOptions Object where cast = believe_me

