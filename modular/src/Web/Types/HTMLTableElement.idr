module Web.Types.HTMLTableElement

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

export data HTMLTableElement : Type where [external]

export
ToFFI HTMLTableElement HTMLTableElement where toFFI = id

export
FromFFI HTMLTableElement HTMLTableElement where fromFFI = Just

export
SafeCast HTMLTableElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableElement"


export %inline
Cast HTMLTableElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableElement Element where cast = believe_me


export %inline
Cast HTMLTableElement Node where cast = believe_me


export %inline
Cast HTMLTableElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableElement Object where cast = believe_me


export %inline
Cast HTMLTableElement Animatable where cast = believe_me


export %inline
Cast HTMLTableElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableElement Slottable where cast = believe_me

