module Web.Types.HTMLMenuElement

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

export data HTMLMenuElement : Type where [external]

export
ToFFI HTMLMenuElement HTMLMenuElement where toFFI = id

export
FromFFI HTMLMenuElement HTMLMenuElement where fromFFI = Just

export
SafeCast HTMLMenuElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMenuElement"


export %inline
Cast HTMLMenuElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMenuElement Element where cast = believe_me


export %inline
Cast HTMLMenuElement Node where cast = believe_me


export %inline
Cast HTMLMenuElement EventTarget where cast = believe_me


export %inline
Cast HTMLMenuElement Object where cast = believe_me


export %inline
Cast HTMLMenuElement Animatable where cast = believe_me


export %inline
Cast HTMLMenuElement ChildNode where cast = believe_me


export %inline
Cast HTMLMenuElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMenuElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMenuElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMenuElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMenuElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMenuElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMenuElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMenuElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMenuElement ParentNode where cast = believe_me


export %inline
Cast HTMLMenuElement Slottable where cast = believe_me
