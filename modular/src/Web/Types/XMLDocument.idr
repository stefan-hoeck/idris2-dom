module Web.Types.XMLDocument

import JS
import Web.Types.Document
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.DocumentOrShadowRoot
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.Node
import Web.Types.NonElementParentNode
import Web.Types.ParentNode
import Web.Types.XPathEvaluatorBase


%default total

export data XMLDocument : Type where [external]

export
ToFFI XMLDocument XMLDocument where toFFI = id

export
FromFFI XMLDocument XMLDocument where fromFFI = Just

export
SafeCast XMLDocument where
  safeCast = unsafeCastOnPrototypeName "XMLDocument"


export %inline
Cast XMLDocument Document where cast = believe_me


export %inline
Cast XMLDocument Node where cast = believe_me


export %inline
Cast XMLDocument EventTarget where cast = believe_me


export %inline
Cast XMLDocument Object where cast = believe_me


export %inline
Cast XMLDocument DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast XMLDocument DocumentOrShadowRoot where cast = believe_me


export %inline
Cast XMLDocument GeometryUtils where cast = believe_me


export %inline
Cast XMLDocument GlobalEventHandlers where cast = believe_me


export %inline
Cast XMLDocument NonElementParentNode where cast = believe_me


export %inline
Cast XMLDocument ParentNode where cast = believe_me


export %inline
Cast XMLDocument XPathEvaluatorBase where cast = believe_me
