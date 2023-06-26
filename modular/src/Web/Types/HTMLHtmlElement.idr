module Web.Types.HTMLHtmlElement

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

export data HTMLHtmlElement : Type where [external]

export
ToFFI HTMLHtmlElement HTMLHtmlElement where toFFI = id

export
FromFFI HTMLHtmlElement HTMLHtmlElement where fromFFI = Just

export
SafeCast HTMLHtmlElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHtmlElement"


export %inline
Cast HTMLHtmlElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHtmlElement Element where cast = believe_me


export %inline
Cast HTMLHtmlElement Node where cast = believe_me


export %inline
Cast HTMLHtmlElement EventTarget where cast = believe_me


export %inline
Cast HTMLHtmlElement Object where cast = believe_me


export %inline
Cast HTMLHtmlElement Animatable where cast = believe_me


export %inline
Cast HTMLHtmlElement ChildNode where cast = believe_me


export %inline
Cast HTMLHtmlElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHtmlElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHtmlElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHtmlElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHtmlElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHtmlElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHtmlElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHtmlElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHtmlElement ParentNode where cast = believe_me


export %inline
Cast HTMLHtmlElement Slottable where cast = believe_me
