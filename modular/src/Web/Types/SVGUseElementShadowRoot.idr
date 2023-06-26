module Web.Types.SVGUseElementShadowRoot

import JS
import Web.Types.DocumentFragment
import Web.Types.DocumentOrShadowRoot
import Web.Types.EventTarget
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode
import Web.Types.ShadowRoot


%default total

export data SVGUseElementShadowRoot : Type where [external]

export
ToFFI SVGUseElementShadowRoot SVGUseElementShadowRoot where toFFI = id

export
FromFFI SVGUseElementShadowRoot SVGUseElementShadowRoot where fromFFI = Just

export
SafeCast SVGUseElementShadowRoot where
  safeCast = unsafeCastOnPrototypeName "SVGUseElementShadowRoot"


export %inline
Cast SVGUseElementShadowRoot ShadowRoot where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot DocumentFragment where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot Node where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot EventTarget where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot Object where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot DocumentOrShadowRoot where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot InnerHTML where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot NonElementParentNode where cast = believe_me


export %inline
Cast SVGUseElementShadowRoot ParentNode where cast = believe_me
