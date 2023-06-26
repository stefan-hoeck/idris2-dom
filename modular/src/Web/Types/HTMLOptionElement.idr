module Web.Types.HTMLOptionElement

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

export data HTMLOptionElement : Type where [external]

export
ToFFI HTMLOptionElement HTMLOptionElement where toFFI = id

export
FromFFI HTMLOptionElement HTMLOptionElement where fromFFI = Just

export
SafeCast HTMLOptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptionElement"


export %inline
Cast HTMLOptionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOptionElement Element where cast = believe_me


export %inline
Cast HTMLOptionElement Node where cast = believe_me


export %inline
Cast HTMLOptionElement EventTarget where cast = believe_me


export %inline
Cast HTMLOptionElement Object where cast = believe_me


export %inline
Cast HTMLOptionElement Animatable where cast = believe_me


export %inline
Cast HTMLOptionElement ChildNode where cast = believe_me


export %inline
Cast HTMLOptionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOptionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOptionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOptionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOptionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOptionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOptionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOptionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOptionElement ParentNode where cast = believe_me


export %inline
Cast HTMLOptionElement Slottable where cast = believe_me
