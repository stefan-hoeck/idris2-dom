module Web.Types.CustomEventInit

import JS
import Web.Types.EventInit


%default total

export data CustomEventInit : Type where [external]

export
ToFFI CustomEventInit CustomEventInit where toFFI = id

export
FromFFI CustomEventInit CustomEventInit where fromFFI = Just


export %inline
Cast CustomEventInit EventInit where cast = believe_me


export %inline
Cast CustomEventInit Object where cast = believe_me
