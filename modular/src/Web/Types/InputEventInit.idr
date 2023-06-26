module Web.Types.InputEventInit

import JS
import Web.Types.EventInit
import Web.Types.UIEventInit


%default total

export data InputEventInit : Type where [external]

export
ToFFI InputEventInit InputEventInit where toFFI = id

export
FromFFI InputEventInit InputEventInit where fromFFI = Just


export %inline
Cast InputEventInit UIEventInit where cast = believe_me


export %inline
Cast InputEventInit EventInit where cast = believe_me


export %inline
Cast InputEventInit Object where cast = believe_me

