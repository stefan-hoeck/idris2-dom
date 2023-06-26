module Web.Types.ClipboardItemOptions

import JS


%default total

export data ClipboardItemOptions : Type where [external]

export
ToFFI ClipboardItemOptions ClipboardItemOptions where toFFI = id

export
FromFFI ClipboardItemOptions ClipboardItemOptions where fromFFI = Just


export %inline
Cast ClipboardItemOptions Object where cast = believe_me
