module Web.Types.HTMLTableRowElement

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

export data HTMLTableRowElement : Type where [external]

export
ToFFI HTMLTableRowElement HTMLTableRowElement where toFFI = id

export
FromFFI HTMLTableRowElement HTMLTableRowElement where fromFFI = Just

export
SafeCast HTMLTableRowElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableRowElement"


export %inline
Cast HTMLTableRowElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableRowElement Element where cast = believe_me


export %inline
Cast HTMLTableRowElement Node where cast = believe_me


export %inline
Cast HTMLTableRowElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableRowElement Object where cast = believe_me


export %inline
Cast HTMLTableRowElement Animatable where cast = believe_me


export %inline
Cast HTMLTableRowElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableRowElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableRowElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableRowElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableRowElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableRowElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableRowElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableRowElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableRowElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableRowElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableRowElement Slottable where cast = believe_me
