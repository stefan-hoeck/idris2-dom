module Web.Types.ReadableStreamBYOBReadResult

import JS


%default total

export data ReadableStreamBYOBReadResult : Type where [external]

export
ToFFI ReadableStreamBYOBReadResult ReadableStreamBYOBReadResult where toFFI = id

export
FromFFI ReadableStreamBYOBReadResult ReadableStreamBYOBReadResult where fromFFI = Just


export %inline
Cast ReadableStreamBYOBReadResult Object where cast = believe_me

