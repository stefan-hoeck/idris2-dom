module Web.Types.MessagePort

import JS
import Web.Types.EventTarget


%default total

export data MessagePort : Type where [external]

export
ToFFI MessagePort MessagePort where toFFI = id

export
FromFFI MessagePort MessagePort where fromFFI = Just

export
SafeCast MessagePort where
  safeCast = unsafeCastOnPrototypeName "MessagePort"


export %inline
Cast MessagePort EventTarget where cast = believe_me


export %inline
Cast MessagePort Object where cast = believe_me
