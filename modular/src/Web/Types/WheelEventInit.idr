module Web.Types.WheelEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.MouseEventInit
import Web.Types.UIEventInit


%default total

export data WheelEventInit : Type where [external]

export
ToFFI WheelEventInit WheelEventInit where toFFI = id

export
FromFFI WheelEventInit WheelEventInit where fromFFI = Just


export %inline
Cast WheelEventInit MouseEventInit where cast = believe_me


export %inline
Cast WheelEventInit EventModifierInit where cast = believe_me


export %inline
Cast WheelEventInit UIEventInit where cast = believe_me


export %inline
Cast WheelEventInit EventInit where cast = believe_me


export %inline
Cast WheelEventInit Object where cast = believe_me

