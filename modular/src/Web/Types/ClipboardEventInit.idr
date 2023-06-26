module Web.Types.ClipboardEventInit

import JS
import Web.Types.EventInit


%default total

export data ClipboardEventInit : Type where [external]

export
ToFFI ClipboardEventInit ClipboardEventInit where toFFI = id

export
FromFFI ClipboardEventInit ClipboardEventInit where fromFFI = Just


export %inline
Cast ClipboardEventInit EventInit where cast = believe_me


export %inline
Cast ClipboardEventInit Object where cast = believe_me
