module Web.Types.EventModifierInit

import JS
import Web.Types.EventInit
import Web.Types.UIEventInit


%default total

export data EventModifierInit : Type where [external]

export
ToFFI EventModifierInit EventModifierInit where toFFI = id

export
FromFFI EventModifierInit EventModifierInit where fromFFI = Just


export %inline
Cast EventModifierInit UIEventInit where cast = believe_me


export %inline
Cast EventModifierInit EventInit where cast = believe_me


export %inline
Cast EventModifierInit Object where cast = believe_me
