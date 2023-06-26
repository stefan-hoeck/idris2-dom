module Web.Types.MouseEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.UIEventInit


%default total

export data MouseEventInit : Type where [external]

export
ToFFI MouseEventInit MouseEventInit where toFFI = id

export
FromFFI MouseEventInit MouseEventInit where fromFFI = Just


export %inline
Cast MouseEventInit EventModifierInit where cast = believe_me


export %inline
Cast MouseEventInit UIEventInit where cast = believe_me


export %inline
Cast MouseEventInit EventInit where cast = believe_me


export %inline
Cast MouseEventInit Object where cast = believe_me
