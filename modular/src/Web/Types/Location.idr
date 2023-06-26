module Web.Types.Location

import JS


%default total

export data Location : Type where [external]

export
ToFFI Location Location where toFFI = id

export
FromFFI Location Location where fromFFI = Just

export
SafeCast Location where
  safeCast = unsafeCastOnPrototypeName "Location"


export %inline
Cast Location Object where cast = believe_me
