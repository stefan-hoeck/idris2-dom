module Web.Types.ValidityState

import JS


%default total

export data ValidityState : Type where [external]

export
ToFFI ValidityState ValidityState where toFFI = id

export
FromFFI ValidityState ValidityState where fromFFI = Just

export
SafeCast ValidityState where
  safeCast = unsafeCastOnPrototypeName "ValidityState"


export %inline
Cast ValidityState Object where cast = believe_me
