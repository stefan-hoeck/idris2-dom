module Web.Types.ReadableStreamDefaultReadResult

import JS


%default total

export data ReadableStreamDefaultReadResult : Type where [external]

export
ToFFI ReadableStreamDefaultReadResult ReadableStreamDefaultReadResult where toFFI = id

export
FromFFI ReadableStreamDefaultReadResult ReadableStreamDefaultReadResult where fromFFI = Just


export %inline
Cast ReadableStreamDefaultReadResult Object where cast = believe_me
