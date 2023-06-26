module Web.Types.HTMLSlotElement

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

export data HTMLSlotElement : Type where [external]

export
ToFFI HTMLSlotElement HTMLSlotElement where toFFI = id

export
FromFFI HTMLSlotElement HTMLSlotElement where fromFFI = Just

export
SafeCast HTMLSlotElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSlotElement"


export %inline
Cast HTMLSlotElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSlotElement Element where cast = believe_me


export %inline
Cast HTMLSlotElement Node where cast = believe_me


export %inline
Cast HTMLSlotElement EventTarget where cast = believe_me


export %inline
Cast HTMLSlotElement Object where cast = believe_me


export %inline
Cast HTMLSlotElement Animatable where cast = believe_me


export %inline
Cast HTMLSlotElement ChildNode where cast = believe_me


export %inline
Cast HTMLSlotElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSlotElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSlotElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSlotElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSlotElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSlotElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSlotElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSlotElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSlotElement ParentNode where cast = believe_me


export %inline
Cast HTMLSlotElement Slottable where cast = believe_me

