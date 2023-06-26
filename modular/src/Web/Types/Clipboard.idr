module Web.Types.Clipboard

import JS
import Web.Types.EventTarget


%default total

export data Clipboard : Type where [external]

export
ToFFI Clipboard Clipboard where toFFI = id

export
FromFFI Clipboard Clipboard where fromFFI = Just

export
SafeCast Clipboard where
  safeCast = unsafeCastOnPrototypeName "Clipboard"


export %inline
Cast Clipboard EventTarget where cast = believe_me


export %inline
Cast Clipboard Object where cast = believe_me
