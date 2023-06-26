module Web.Types.HTMLSpanElement

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

export data HTMLSpanElement : Type where [external]

export
ToFFI HTMLSpanElement HTMLSpanElement where toFFI = id

export
FromFFI HTMLSpanElement HTMLSpanElement where fromFFI = Just

export
SafeCast HTMLSpanElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSpanElement"


export %inline
Cast HTMLSpanElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSpanElement Element where cast = believe_me


export %inline
Cast HTMLSpanElement Node where cast = believe_me


export %inline
Cast HTMLSpanElement EventTarget where cast = believe_me


export %inline
Cast HTMLSpanElement Object where cast = believe_me


export %inline
Cast HTMLSpanElement Animatable where cast = believe_me


export %inline
Cast HTMLSpanElement ChildNode where cast = believe_me


export %inline
Cast HTMLSpanElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSpanElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSpanElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSpanElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSpanElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSpanElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSpanElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSpanElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSpanElement ParentNode where cast = believe_me


export %inline
Cast HTMLSpanElement Slottable where cast = believe_me
