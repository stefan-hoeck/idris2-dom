module Web.Types.RadioNodeList

import JS
import Web.Types.NodeList


%default total

export data RadioNodeList : Type where [external]

export
ToFFI RadioNodeList RadioNodeList where toFFI = id

export
FromFFI RadioNodeList RadioNodeList where fromFFI = Just

export
SafeCast RadioNodeList where
  safeCast = unsafeCastOnPrototypeName "RadioNodeList"


export %inline
Cast RadioNodeList NodeList where cast = believe_me


export %inline
Cast RadioNodeList Object where cast = believe_me
