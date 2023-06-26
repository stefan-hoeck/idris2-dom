module Web.Types.DOMQuad

import JS


%default total

export data DOMQuad : Type where [external]

export
ToFFI DOMQuad DOMQuad where toFFI = id

export
FromFFI DOMQuad DOMQuad where fromFFI = Just

export
SafeCast DOMQuad where
  safeCast = unsafeCastOnPrototypeName "DOMQuad"


export %inline
Cast DOMQuad Object where cast = believe_me

