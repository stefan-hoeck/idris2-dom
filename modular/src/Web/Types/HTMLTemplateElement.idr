module Web.Types.HTMLTemplateElement

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

export data HTMLTemplateElement : Type where [external]

export
ToFFI HTMLTemplateElement HTMLTemplateElement where toFFI = id

export
FromFFI HTMLTemplateElement HTMLTemplateElement where fromFFI = Just

export
SafeCast HTMLTemplateElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTemplateElement"


export %inline
Cast HTMLTemplateElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTemplateElement Element where cast = believe_me


export %inline
Cast HTMLTemplateElement Node where cast = believe_me


export %inline
Cast HTMLTemplateElement EventTarget where cast = believe_me


export %inline
Cast HTMLTemplateElement Object where cast = believe_me


export %inline
Cast HTMLTemplateElement Animatable where cast = believe_me


export %inline
Cast HTMLTemplateElement ChildNode where cast = believe_me


export %inline
Cast HTMLTemplateElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTemplateElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTemplateElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTemplateElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTemplateElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTemplateElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTemplateElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTemplateElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTemplateElement ParentNode where cast = believe_me


export %inline
Cast HTMLTemplateElement Slottable where cast = believe_me
