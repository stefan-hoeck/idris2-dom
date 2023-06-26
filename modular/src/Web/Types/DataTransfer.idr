module Web.Types.DataTransfer

import JS


%default total

export data DataTransfer : Type where [external]

export
ToFFI DataTransfer DataTransfer where toFFI = id

export
FromFFI DataTransfer DataTransfer where fromFFI = Just

export
SafeCast DataTransfer where
  safeCast = unsafeCastOnPrototypeName "DataTransfer"


export %inline
Cast DataTransfer Object where cast = believe_me

