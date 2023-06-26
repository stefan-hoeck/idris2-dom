module Web.Types.Node

import JS
import Web.Types.EventTarget


%default total

export data Node : Type where [external]

export
ToFFI Node Node where toFFI = id

export
FromFFI Node Node where fromFFI = Just

export
SafeCast Node where
  safeCast = unsafeCastOnPrototypeName "Node"


export %inline
Cast Node EventTarget where cast = believe_me


export %inline
Cast Node Object where cast = believe_me

