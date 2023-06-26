module Web.Types.HTMLTableCaptionElement

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

export data HTMLTableCaptionElement : Type where [external]

export
ToFFI HTMLTableCaptionElement HTMLTableCaptionElement where toFFI = id

export
FromFFI HTMLTableCaptionElement HTMLTableCaptionElement where fromFFI = Just

export
SafeCast HTMLTableCaptionElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTableCaptionElement"


export %inline
Cast HTMLTableCaptionElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Element where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Node where cast = believe_me


export %inline
Cast HTMLTableCaptionElement EventTarget where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Object where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Animatable where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ChildNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTableCaptionElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTableCaptionElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTableCaptionElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTableCaptionElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTableCaptionElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement ParentNode where cast = believe_me


export %inline
Cast HTMLTableCaptionElement Slottable where cast = believe_me
