module Web.Types.Cache

import JS


%default total

export data Cache : Type where [external]

export
ToFFI Cache Cache where toFFI = id

export
FromFFI Cache Cache where fromFFI = Just

export
SafeCast Cache where
  safeCast = unsafeCastOnPrototypeName "Cache"


export %inline
Cast Cache Object where cast = believe_me

