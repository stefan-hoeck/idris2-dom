module Web.Types.HTMLTableCellElement

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

export data HTMLTableCellElement : Type where [external]

export
ToFFI HTMLTableCellElement HTMLTableCellElement where toFFI = id

export
FromFFI HTMLTableCellElement HTMLTableCellElement where fromFFI = Just

export
SafeCast HTMLTableCellElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCellElement"


export %inline
Cast HTMLTableCellElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableCellElement Element where cast = believe_me


export %inline
Cast HTMLTableCellElement Node where cast = believe_me


export %inline
Cast HTMLTableCellElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableCellElement Object where cast = believe_me


export %inline
Cast HTMLTableCellElement Animatable where cast = believe_me


export %inline
Cast HTMLTableCellElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableCellElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCellElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableCellElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableCellElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableCellElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCellElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableCellElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableCellElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableCellElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableCellElement Slottable where cast = believe_me
