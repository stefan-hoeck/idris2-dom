module Web.Types.NodeList

import JS


%default total

export data NodeList : Type where [external]

export
ToFFI NodeList NodeList where toFFI = id

export
FromFFI NodeList NodeList where fromFFI = Just

export
SafeCast NodeList where
  safeCast = unsafeCastOnPrototypeName "NodeList"


export %inline
Cast NodeList Object where cast = believe_me
