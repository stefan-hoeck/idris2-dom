module Web.Types.DOMException

import JS


%default total

export data DOMException : Type where [external]

export
ToFFI DOMException DOMException where toFFI = id

export
FromFFI DOMException DOMException where fromFFI = Just

export
SafeCast DOMException where
  safeCast = unsafeCastOnPrototypeName "DOMException"


export %inline
Cast DOMException Object where cast = believe_me

