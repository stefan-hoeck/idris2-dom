module Web.Types.Client

import JS


%default total

export data Client : Type where [external]

export
ToFFI Client Client where toFFI = id

export
FromFFI Client Client where fromFFI = Just

export
SafeCast Client where
  safeCast = unsafeCastOnPrototypeName "Client"


export %inline
Cast Client Object where cast = believe_me
