module Web.Types.XMLHttpRequestEventTarget

import JS
import Web.Types.EventTarget


%default total

export data XMLHttpRequestEventTarget : Type where [external]

export
ToFFI XMLHttpRequestEventTarget XMLHttpRequestEventTarget where toFFI = id

export
FromFFI XMLHttpRequestEventTarget XMLHttpRequestEventTarget where fromFFI = Just

export
SafeCast XMLHttpRequestEventTarget where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestEventTarget"


export %inline
Cast XMLHttpRequestEventTarget EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestEventTarget Object where cast = believe_me
