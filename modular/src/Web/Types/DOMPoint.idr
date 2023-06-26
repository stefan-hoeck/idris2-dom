module Web.Types.DOMPoint

import JS
import Web.Types.DOMPointReadOnly


%default total

export data DOMPoint : Type where [external]

export
ToFFI DOMPoint DOMPoint where toFFI = id

export
FromFFI DOMPoint DOMPoint where fromFFI = Just

export
SafeCast DOMPoint where
  safeCast = unsafeCastOnPrototypeName "DOMPoint"


export %inline
Cast DOMPoint DOMPointReadOnly where cast = believe_me


export %inline
Cast DOMPoint Object where cast = believe_me
