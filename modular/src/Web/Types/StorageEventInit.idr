module Web.Types.StorageEventInit

import JS
import Web.Types.EventInit


%default total

export data StorageEventInit : Type where [external]

export
ToFFI StorageEventInit StorageEventInit where toFFI = id

export
FromFFI StorageEventInit StorageEventInit where fromFFI = Just


export %inline
Cast StorageEventInit EventInit where cast = believe_me


export %inline
Cast StorageEventInit Object where cast = believe_me

