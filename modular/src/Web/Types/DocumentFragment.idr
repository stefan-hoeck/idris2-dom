module Web.Types.DocumentFragment

import JS
import Web.Types.EventTarget
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode


%default total

export data DocumentFragment : Type where [external]

export
ToFFI DocumentFragment DocumentFragment where toFFI = id

export
FromFFI DocumentFragment DocumentFragment where fromFFI = Just

export
SafeCast DocumentFragment where
  safeCast = unsafeCastOnPrototypeName "DocumentFragment"


export %inline
Cast DocumentFragment Node where cast = believe_me


export %inline
Cast DocumentFragment EventTarget where cast = believe_me


export %inline
Cast DocumentFragment Object where cast = believe_me


export %inline
Cast DocumentFragment NonElementParentNode where cast = believe_me


export %inline
Cast DocumentFragment ParentNode where cast = believe_me
