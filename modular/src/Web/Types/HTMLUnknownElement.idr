module Web.Types.HTMLUnknownElement

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

export data HTMLUnknownElement : Type where [external]

export
ToFFI HTMLUnknownElement HTMLUnknownElement where toFFI = id

export
FromFFI HTMLUnknownElement HTMLUnknownElement where fromFFI = Just

export
SafeCast HTMLUnknownElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUnknownElement"


export %inline
Cast HTMLUnknownElement HTMLElement where cast = believe_me


export %inline
Cast HTMLUnknownElement Element where cast = believe_me


export %inline
Cast HTMLUnknownElement Node where cast = believe_me


export %inline
Cast HTMLUnknownElement EventTarget where cast = believe_me


export %inline
Cast HTMLUnknownElement Object where cast = believe_me


export %inline
Cast HTMLUnknownElement Animatable where cast = believe_me


export %inline
Cast HTMLUnknownElement ChildNode where cast = believe_me


export %inline
Cast HTMLUnknownElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLUnknownElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLUnknownElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLUnknownElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLUnknownElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLUnknownElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLUnknownElement InnerHTML where cast = believe_me


export %inline
Cast HTMLUnknownElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLUnknownElement ParentNode where cast = believe_me


export %inline
Cast HTMLUnknownElement Slottable where cast = believe_me
