module Web.Types.HTMLTextAreaElement

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

export data HTMLTextAreaElement : Type where [external]

export
ToFFI HTMLTextAreaElement HTMLTextAreaElement where toFFI = id

export
FromFFI HTMLTextAreaElement HTMLTextAreaElement where fromFFI = Just

export
SafeCast HTMLTextAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTextAreaElement"


export %inline
Cast HTMLTextAreaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTextAreaElement Element where cast = believe_me


export %inline
Cast HTMLTextAreaElement Node where cast = believe_me


export %inline
Cast HTMLTextAreaElement EventTarget where cast = believe_me


export %inline
Cast HTMLTextAreaElement Object where cast = believe_me


export %inline
Cast HTMLTextAreaElement Animatable where cast = believe_me


export %inline
Cast HTMLTextAreaElement ChildNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTextAreaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTextAreaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTextAreaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTextAreaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTextAreaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTextAreaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTextAreaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement ParentNode where cast = believe_me


export %inline
Cast HTMLTextAreaElement Slottable where cast = believe_me
