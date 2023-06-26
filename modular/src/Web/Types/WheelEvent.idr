module Web.Types.WheelEvent

import JS
import Web.Types.Event
import Web.Types.MouseEvent
import Web.Types.UIEvent


%default total

export data WheelEvent : Type where [external]

export
ToFFI WheelEvent WheelEvent where toFFI = id

export
FromFFI WheelEvent WheelEvent where fromFFI = Just

export
SafeCast WheelEvent where
  safeCast = unsafeCastOnPrototypeName "WheelEvent"


export %inline
Cast WheelEvent MouseEvent where cast = believe_me


export %inline
Cast WheelEvent UIEvent where cast = believe_me


export %inline
Cast WheelEvent Event where cast = believe_me


export %inline
Cast WheelEvent Object where cast = believe_me
