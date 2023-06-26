module Web.Types.DOMParser

import JS


%default total

export data DOMParser : Type where [external]

export
ToFFI DOMParser DOMParser where toFFI = id

export
FromFFI DOMParser DOMParser where fromFFI = Just

export
SafeCast DOMParser where
  safeCast = unsafeCastOnPrototypeName "DOMParser"


export %inline
Cast DOMParser Object where cast = believe_me
