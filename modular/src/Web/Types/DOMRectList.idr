module Web.Types.DOMRectList

import JS


%default total

export data DOMRectList : Type where [external]

export
ToFFI DOMRectList DOMRectList where toFFI = id

export
FromFFI DOMRectList DOMRectList where fromFFI = Just

export
SafeCast DOMRectList where
  safeCast = unsafeCastOnPrototypeName "DOMRectList"


export %inline
Cast DOMRectList Object where cast = believe_me

