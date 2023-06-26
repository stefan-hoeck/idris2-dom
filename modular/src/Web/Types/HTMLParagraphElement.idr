module Web.Types.HTMLParagraphElement

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

export data HTMLParagraphElement : Type where [external]

export
ToFFI HTMLParagraphElement HTMLParagraphElement where toFFI = id

export
FromFFI HTMLParagraphElement HTMLParagraphElement where fromFFI = Just

export
SafeCast HTMLParagraphElement where
  safeCast = unsafeCastOnPrototypeName "HTMLParagraphElement"


export %inline
Cast HTMLParagraphElement HTMLElement where cast = believe_me


export %inline
Cast HTMLParagraphElement Element where cast = believe_me


export %inline
Cast HTMLParagraphElement Node where cast = believe_me


export %inline
Cast HTMLParagraphElement EventTarget where cast = believe_me


export %inline
Cast HTMLParagraphElement Object where cast = believe_me


export %inline
Cast HTMLParagraphElement Animatable where cast = believe_me


export %inline
Cast HTMLParagraphElement ChildNode where cast = believe_me


export %inline
Cast HTMLParagraphElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLParagraphElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLParagraphElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLParagraphElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLParagraphElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLParagraphElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLParagraphElement InnerHTML where cast = believe_me


export %inline
Cast HTMLParagraphElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLParagraphElement ParentNode where cast = believe_me


export %inline
Cast HTMLParagraphElement Slottable where cast = believe_me

