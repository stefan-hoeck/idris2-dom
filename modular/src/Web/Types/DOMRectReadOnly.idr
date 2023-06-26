module Web.Types.DOMRectReadOnly

import JS


%default total

export data DOMRectReadOnly : Type where [external]

export
ToFFI DOMRectReadOnly DOMRectReadOnly where toFFI = id

export
FromFFI DOMRectReadOnly DOMRectReadOnly where fromFFI = Just

export
SafeCast DOMRectReadOnly where
  safeCast = unsafeCastOnPrototypeName "DOMRectReadOnly"


export %inline
Cast DOMRectReadOnly Object where cast = believe_me

