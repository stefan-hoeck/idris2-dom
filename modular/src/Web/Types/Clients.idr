module Web.Types.Clients

import JS


%default total

export data Clients : Type where [external]

export
ToFFI Clients Clients where toFFI = id

export
FromFFI Clients Clients where fromFFI = Just

export
SafeCast Clients where
  safeCast = unsafeCastOnPrototypeName "Clients"


export %inline
Cast Clients Object where cast = believe_me

