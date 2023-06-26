module Web.Types.DataTransferItem

import JS


%default total

export data DataTransferItem : Type where [external]

export
ToFFI DataTransferItem DataTransferItem where toFFI = id

export
FromFFI DataTransferItem DataTransferItem where fromFFI = Just

export
SafeCast DataTransferItem where
  safeCast = unsafeCastOnPrototypeName "DataTransferItem"


export %inline
Cast DataTransferItem Object where cast = believe_me

