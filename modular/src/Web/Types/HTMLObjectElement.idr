module Web.Types.HTMLObjectElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.ElementContentEditable
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLObjectElement : Type where [external]

export
ToFFI HTMLObjectElement HTMLObjectElement where toFFI = id

export
FromFFI HTMLObjectElement HTMLObjectElement where fromFFI = Just

export
SafeCast HTMLObjectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLObjectElement"


export %inline
Cast HTMLObjectElement HTMLElement where cast = believe_me


export %inline
Cast HTMLObjectElement Element where cast = believe_me


export %inline
Cast HTMLObjectElement Node where cast = believe_me


export %inline
Cast HTMLObjectElement EventTarget where cast = believe_me


export %inline
Cast HTMLObjectElement Object where cast = believe_me


export %inline
Cast HTMLObjectElement Animatable where cast = believe_me


export %inline
Cast HTMLObjectElement ChildNode where cast = believe_me


export %inline
Cast HTMLObjectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLObjectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLObjectElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLObjectElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLObjectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLObjectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLObjectElement InnerHTML where cast = believe_me


export %inline
Cast HTMLObjectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLObjectElement ParentNode where cast = believe_me


export %inline
Cast HTMLObjectElement Slottable where cast = believe_me
