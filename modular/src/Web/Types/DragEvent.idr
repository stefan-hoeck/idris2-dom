module Web.Types.DragEvent

import JS
import Web.Types.Event
import Web.Types.MouseEvent
import Web.Types.UIEvent


%default total

export data DragEvent : Type where [external]

export
ToFFI DragEvent DragEvent where toFFI = id

export
FromFFI DragEvent DragEvent where fromFFI = Just

export
SafeCast DragEvent where
  safeCast = unsafeCastOnPrototypeName "DragEvent"


export %inline
Cast DragEvent MouseEvent where cast = believe_me


export %inline
Cast DragEvent UIEvent where cast = believe_me


export %inline
Cast DragEvent Event where cast = believe_me


export %inline
Cast DragEvent Object where cast = believe_me
