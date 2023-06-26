module Web.Types.MediaQueryListEventInit

import JS
import Web.Types.EventInit


%default total

export data MediaQueryListEventInit : Type where [external]

export
ToFFI MediaQueryListEventInit MediaQueryListEventInit where toFFI = id

export
FromFFI MediaQueryListEventInit MediaQueryListEventInit where fromFFI = Just


export %inline
Cast MediaQueryListEventInit EventInit where cast = believe_me


export %inline
Cast MediaQueryListEventInit Object where cast = believe_me
