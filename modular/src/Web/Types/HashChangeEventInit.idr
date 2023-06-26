module Web.Types.HashChangeEventInit

import JS
import Web.Types.EventInit


%default total

export data HashChangeEventInit : Type where [external]

export
ToFFI HashChangeEventInit HashChangeEventInit where toFFI = id

export
FromFFI HashChangeEventInit HashChangeEventInit where fromFFI = Just


export %inline
Cast HashChangeEventInit EventInit where cast = believe_me


export %inline
Cast HashChangeEventInit Object where cast = believe_me
