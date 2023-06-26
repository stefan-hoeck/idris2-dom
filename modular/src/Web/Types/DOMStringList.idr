module Web.Types.DOMStringList

import JS


%default total

export data DOMStringList : Type where [external]

export
ToFFI DOMStringList DOMStringList where toFFI = id

export
FromFFI DOMStringList DOMStringList where fromFFI = Just

export
SafeCast DOMStringList where
  safeCast = unsafeCastOnPrototypeName "DOMStringList"


export %inline
Cast DOMStringList Object where cast = believe_me

