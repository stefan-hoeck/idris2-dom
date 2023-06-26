module Web.Types.FormData

import JS


%default total

export data FormData : Type where [external]

export
ToFFI FormData FormData where toFFI = id

export
FromFFI FormData FormData where fromFFI = Just

export
SafeCast FormData where
  safeCast = unsafeCastOnPrototypeName "FormData"


export %inline
Cast FormData Object where cast = believe_me
