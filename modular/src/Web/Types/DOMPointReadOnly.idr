module Web.Types.DOMPointReadOnly

import JS


%default total

export data DOMPointReadOnly : Type where [external]

export
ToFFI DOMPointReadOnly DOMPointReadOnly where toFFI = id

export
FromFFI DOMPointReadOnly DOMPointReadOnly where fromFFI = Just

export
SafeCast DOMPointReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMPointReadOnly"


export %inline
Cast DOMPointReadOnly Object where cast = believe_me

