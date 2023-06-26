module Web.Types.ReadableWritablePair

import JS


%default total

export data ReadableWritablePair : Type where [external]

export
ToFFI ReadableWritablePair ReadableWritablePair where toFFI = id

export
FromFFI ReadableWritablePair ReadableWritablePair where fromFFI = Just


export %inline
Cast ReadableWritablePair Object where cast = believe_me

