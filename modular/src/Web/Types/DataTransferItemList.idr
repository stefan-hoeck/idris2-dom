module Web.Types.DataTransferItemList

import JS


%default total

export data DataTransferItemList : Type where [external]

export
ToFFI DataTransferItemList DataTransferItemList where toFFI = id

export
FromFFI DataTransferItemList DataTransferItemList where fromFFI = Just

export
SafeCast DataTransferItemList where
  safeCast = unsafeCastOnPrototypeName "DataTransferItemList"


export %inline
Cast DataTransferItemList Object where cast = believe_me
