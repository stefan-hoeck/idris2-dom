module Web.Types.DOMRect

import JS
import Web.Types.DOMRectReadOnly


%default total

export data DOMRect : Type where [external]

export
ToFFI DOMRect DOMRect where toFFI = id

export
FromFFI DOMRect DOMRect where fromFFI = Just

export
SafeCast DOMRect where
  safeCast = unsafeCastOnPrototypeName "DOMRect"


export %inline
Cast DOMRect DOMRectReadOnly where cast = believe_me


export %inline
Cast DOMRect Object where cast = believe_me

