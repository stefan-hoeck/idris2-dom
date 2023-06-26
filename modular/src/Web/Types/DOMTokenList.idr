module Web.Types.DOMTokenList

import JS


%default total

export data DOMTokenList : Type where [external]

export
ToFFI DOMTokenList DOMTokenList where toFFI = id

export
FromFFI DOMTokenList DOMTokenList where fromFFI = Just

export
SafeCast DOMTokenList where
  safeCast = unsafeCastOnPrototypeName "DOMTokenList"


export %inline
Cast DOMTokenList Object where cast = believe_me
