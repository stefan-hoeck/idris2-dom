module Web.Types.MessageEventInit

import JS
import Web.Types.EventInit


%default total

export data MessageEventInit : Type where [external]

export
ToFFI MessageEventInit MessageEventInit where toFFI = id

export
FromFFI MessageEventInit MessageEventInit where fromFFI = Just


export %inline
Cast MessageEventInit EventInit where cast = believe_me


export %inline
Cast MessageEventInit Object where cast = believe_me

