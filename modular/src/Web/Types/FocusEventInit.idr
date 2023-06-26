module Web.Types.FocusEventInit

import JS
import Web.Types.EventInit
import Web.Types.UIEventInit


%default total

export data FocusEventInit : Type where [external]

export
ToFFI FocusEventInit FocusEventInit where toFFI = id

export
FromFFI FocusEventInit FocusEventInit where fromFFI = Just


export %inline
Cast FocusEventInit UIEventInit where cast = believe_me


export %inline
Cast FocusEventInit EventInit where cast = believe_me


export %inline
Cast FocusEventInit Object where cast = believe_me
