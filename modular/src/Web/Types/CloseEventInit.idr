module Web.Types.CloseEventInit

import JS
import Web.Types.EventInit


%default total

export data CloseEventInit : Type where [external]

export
ToFFI CloseEventInit CloseEventInit where toFFI = id

export
FromFFI CloseEventInit CloseEventInit where fromFFI = Just


export %inline
Cast CloseEventInit EventInit where cast = believe_me


export %inline
Cast CloseEventInit Object where cast = believe_me

