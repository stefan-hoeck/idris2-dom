module Web.Types.HTMLEmbedElement

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

export data HTMLEmbedElement : Type where [external]

export
ToFFI HTMLEmbedElement HTMLEmbedElement where toFFI = id

export
FromFFI HTMLEmbedElement HTMLEmbedElement where fromFFI = Just

export
SafeCast HTMLEmbedElement where
  safeCast = unsafeCastOnPrototypeName "HTMLEmbedElement"


export %inline
Cast HTMLEmbedElement HTMLElement where cast = believe_me


export %inline
Cast HTMLEmbedElement Element where cast = believe_me


export %inline
Cast HTMLEmbedElement Node where cast = believe_me


export %inline
Cast HTMLEmbedElement EventTarget where cast = believe_me


export %inline
Cast HTMLEmbedElement Object where cast = believe_me


export %inline
Cast HTMLEmbedElement Animatable where cast = believe_me


export %inline
Cast HTMLEmbedElement ChildNode where cast = believe_me


export %inline
Cast HTMLEmbedElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLEmbedElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLEmbedElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLEmbedElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLEmbedElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLEmbedElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLEmbedElement InnerHTML where cast = believe_me


export %inline
Cast HTMLEmbedElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLEmbedElement ParentNode where cast = believe_me


export %inline
Cast HTMLEmbedElement Slottable where cast = believe_me
