module Web.Types.Document

import JS
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

export data Document : Type where [external]

export
ToFFI Document Document where toFFI = id

export
FromFFI Document Document where fromFFI = Just

export
SafeCast Document where
  safeCast = unsafeCastOnPrototypeName "Document"


export %inline
Cast Document Node where cast = believe_me


export %inline
Cast Document EventTarget where cast = believe_me


export %inline
Cast Document Object where cast = believe_me


export %inline
Cast Document DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast Document DocumentOrShadowRoot where cast = believe_me


export %inline
Cast Document GeometryUtils where cast = believe_me


export %inline
Cast Document GlobalEventHandlers where cast = believe_me


export %inline
Cast Document NonElementParentNode where cast = believe_me


export %inline
Cast Document ParentNode where cast = believe_me


export %inline
Cast Document XPathEvaluatorBase where cast = believe_me
