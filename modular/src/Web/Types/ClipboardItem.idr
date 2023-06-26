module Web.Types.ClipboardItem

import JS


%default total

export data ClipboardItem : Type where [external]

export
ToFFI ClipboardItem ClipboardItem where toFFI = id

export
FromFFI ClipboardItem ClipboardItem where fromFFI = Just

export
SafeCast ClipboardItem where
  safeCast = unsafeCastOnPrototypeName "ClipboardItem"


export %inline
Cast ClipboardItem Object where cast = believe_me

