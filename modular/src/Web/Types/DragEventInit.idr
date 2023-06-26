module Web.Types.DragEventInit

import JS
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.MouseEventInit
import Web.Types.UIEventInit


%default total

export data DragEventInit : Type where [external]

export
ToFFI DragEventInit DragEventInit where toFFI = id

export
FromFFI DragEventInit DragEventInit where fromFFI = Just


export %inline
Cast DragEventInit MouseEventInit where cast = believe_me


export %inline
Cast DragEventInit EventModifierInit where cast = believe_me


export %inline
Cast DragEventInit UIEventInit where cast = believe_me


export %inline
Cast DragEventInit EventInit where cast = believe_me


export %inline
Cast DragEventInit Object where cast = believe_me
