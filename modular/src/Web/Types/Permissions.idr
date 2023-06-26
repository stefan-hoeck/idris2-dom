module Web.Types.Permissions

import JS


%default total

export data Permissions : Type where [external]

export
ToFFI Permissions Permissions where toFFI = id

export
FromFFI Permissions Permissions where fromFFI = Just

export
SafeCast Permissions where
  safeCast = unsafeCastOnPrototypeName "Permissions"


export %inline
Cast Permissions Object where cast = believe_me
