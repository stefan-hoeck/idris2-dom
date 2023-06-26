module Web.Types.ErrorEventInit

import JS
import Web.Types.EventInit


%default total

export data ErrorEventInit : Type where [external]

export
ToFFI ErrorEventInit ErrorEventInit where toFFI = id

export
FromFFI ErrorEventInit ErrorEventInit where fromFFI = Just


export %inline
Cast ErrorEventInit EventInit where cast = believe_me


export %inline
Cast ErrorEventInit Object where cast = believe_me
