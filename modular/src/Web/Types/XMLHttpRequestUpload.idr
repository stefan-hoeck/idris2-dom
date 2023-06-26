module Web.Types.XMLHttpRequestUpload

import JS
import Web.Types.EventTarget
import Web.Types.XMLHttpRequestEventTarget


%default total

export data XMLHttpRequestUpload : Type where [external]

export
ToFFI XMLHttpRequestUpload XMLHttpRequestUpload where toFFI = id

export
FromFFI XMLHttpRequestUpload XMLHttpRequestUpload where fromFFI = Just

export
SafeCast XMLHttpRequestUpload where
  safeCast = unsafeCastOnPrototypeName "XMLHttpRequestUpload"


export %inline
Cast XMLHttpRequestUpload XMLHttpRequestEventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestUpload EventTarget where cast = believe_me


export %inline
Cast XMLHttpRequestUpload Object where cast = believe_me
