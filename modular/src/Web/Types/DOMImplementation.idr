module Web.Types.DOMImplementation

import JS


%default total

export data DOMImplementation : Type where [external]

export
ToFFI DOMImplementation DOMImplementation where toFFI = id

export
FromFFI DOMImplementation DOMImplementation where fromFFI = Just

export
SafeCast DOMImplementation where
  safeCast = unsafeCastOnPrototypeName "DOMImplementation"


export %inline
Cast DOMImplementation Object where cast = believe_me

