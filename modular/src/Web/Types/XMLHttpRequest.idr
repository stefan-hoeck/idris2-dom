module Web.Types.XMLHttpRequest

import JS
import Web.Types.EventTarget
import Web.Types.XMLHttpRequestEventTarget


%default total

export data XMLHttpRequest : Type where [external]

export
ToFFI XMLHttpRequest XMLHttpRequest where toFFI = id

export
FromFFI XMLHttpRequest XMLHttpRequest where fromFFI = Just

export
SafeCast XMLHttpRequest where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequest"


export %inline
Cast XMLHttpRequest XMLHttpRequestEventTarget where cast = believe_me


export %inline
Cast XMLHttpRequest EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequest Object where cast = believe_me
