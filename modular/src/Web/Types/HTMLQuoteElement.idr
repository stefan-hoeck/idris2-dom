module Web.Types.HTMLQuoteElement

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

export data HTMLQuoteElement : Type where [external]

export
ToFFI HTMLQuoteElement HTMLQuoteElement where toFFI = id

export
FromFFI HTMLQuoteElement HTMLQuoteElement where fromFFI = Just

export
SafeCast HTMLQuoteElement where
  safeCast = unsafeCastOnPrototypeName "HTMLQuoteElement"


export %inline
Cast HTMLQuoteElement HTMLElement where cast = believe_me


export %inline
Cast HTMLQuoteElement Element where cast = believe_me


export %inline
Cast HTMLQuoteElement Node where cast = believe_me


export %inline
Cast HTMLQuoteElement EventTarget where cast = believe_me


export %inline
Cast HTMLQuoteElement Object where cast = believe_me


export %inline
Cast HTMLQuoteElement Animatable where cast = believe_me


export %inline
Cast HTMLQuoteElement ChildNode where cast = believe_me


export %inline
Cast HTMLQuoteElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLQuoteElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLQuoteElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLQuoteElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLQuoteElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLQuoteElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLQuoteElement InnerHTML where cast = believe_me


export %inline
Cast HTMLQuoteElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLQuoteElement ParentNode where cast = believe_me


export %inline
Cast HTMLQuoteElement Slottable where cast = believe_me

