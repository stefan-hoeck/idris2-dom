module Web.Types.KeyboardEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.UIEventInit


%default total

export data KeyboardEventInit : Type where [external]

export
ToFFI KeyboardEventInit KeyboardEventInit where toFFI = id

export
FromFFI KeyboardEventInit KeyboardEventInit where fromFFI = Just


export %inline
Cast KeyboardEventInit EventModifierInit where cast = believe_me


export %inline
Cast KeyboardEventInit UIEventInit where cast = believe_me


export %inline
Cast KeyboardEventInit EventInit where cast = believe_me


export %inline
Cast KeyboardEventInit Object where cast = believe_me

