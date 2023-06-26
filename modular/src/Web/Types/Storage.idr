module Web.Types.Storage

import JS


%default total

export data Storage : Type where [external]

export
ToFFI Storage Storage where toFFI = id

export
FromFFI Storage Storage where fromFFI = Just

export
SafeCast Storage where
  safeCast = unsafeCastOnPrototypeName "Storage"


export %inline
Cast Storage Object where cast = believe_me

