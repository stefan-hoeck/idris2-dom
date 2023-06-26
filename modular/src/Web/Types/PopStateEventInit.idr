module Web.Types.PopStateEventInit

import JS
import Web.Types.EventInit


%default total

export data PopStateEventInit : Type where [external]

export
ToFFI PopStateEventInit PopStateEventInit where toFFI = id

export
FromFFI PopStateEventInit PopStateEventInit where fromFFI = Just


export %inline
Cast PopStateEventInit EventInit where cast = believe_me


export %inline
Cast PopStateEventInit Object where cast = believe_me

