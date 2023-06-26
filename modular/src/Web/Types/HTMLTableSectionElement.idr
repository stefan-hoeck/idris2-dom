module Web.Types.HTMLTableSectionElement

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

export data HTMLTableSectionElement : Type where [external]

export
ToFFI HTMLTableSectionElement HTMLTableSectionElement where toFFI = id

export
FromFFI HTMLTableSectionElement HTMLTableSectionElement where fromFFI = Just

export
SafeCast HTMLTableSectionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableSectionElement"


export %inline
Cast HTMLTableSectionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableSectionElement Element where cast = believe_me


export %inline
Cast HTMLTableSectionElement Node where cast = believe_me


export %inline
Cast HTMLTableSectionElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableSectionElement Object where cast = believe_me


export %inline
Cast HTMLTableSectionElement Animatable where cast = believe_me


export %inline
Cast HTMLTableSectionElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableSectionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableSectionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableSectionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableSectionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableSectionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableSectionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableSectionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableSectionElement Slottable where cast = believe_me
