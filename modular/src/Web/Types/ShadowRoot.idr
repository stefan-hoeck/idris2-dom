module Web.Types.ShadowRoot

import JS
import Web.Types.DocumentFragment
import Web.Types.DocumentOrShadowRoot
import Web.Types.EventTarget
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode


%default total

export data ShadowRoot : Type where [external]

export
ToFFI ShadowRoot ShadowRoot where toFFI = id

export
FromFFI ShadowRoot ShadowRoot where fromFFI = Just

export
SafeCast ShadowRoot where
  safeCast = unsafeCastOnPrototypeName "ShadowRoot"


export %inline
Cast ShadowRoot DocumentFragment where cast = believe_me


export %inline
Cast ShadowRoot Node where cast = believe_me


export %inline
Cast ShadowRoot EventTarget where cast = believe_me


export %inline
Cast ShadowRoot Object where cast = believe_me


export %inline
Cast ShadowRoot DocumentOrShadowRoot where cast = believe_me


export %inline
Cast ShadowRoot InnerHTML where cast = believe_me


export %inline
Cast ShadowRoot NonElementParentNode where cast = believe_me


export %inline
Cast ShadowRoot ParentNode where cast = believe_me
