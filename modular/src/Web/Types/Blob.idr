module Web.Types.Blob

import JS


%default total

export data Blob : Type where [external]

export
ToFFI Blob Blob where toFFI = id

export
FromFFI Blob Blob where fromFFI = Just

export
SafeCast Blob where
  safeCast = unsafeCastOnPrototypeName "Blob"


export %inline
Cast Blob Object where cast = believe_me

