module Web.Types.HTMLFieldSetElement

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

export data HTMLFieldSetElement : Type where [external]

export
ToFFI HTMLFieldSetElement HTMLFieldSetElement where toFFI = id

export
FromFFI HTMLFieldSetElement HTMLFieldSetElement where fromFFI = Just

export
SafeCast HTMLFieldSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFieldSetElement"


export %inline
Cast HTMLFieldSetElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFieldSetElement Element where cast = believe_me


export %inline
Cast HTMLFieldSetElement Node where cast = believe_me


export %inline
Cast HTMLFieldSetElement EventTarget where cast = believe_me


export %inline
Cast HTMLFieldSetElement Object where cast = believe_me


export %inline
Cast HTMLFieldSetElement Animatable where cast = believe_me


export %inline
Cast HTMLFieldSetElement ChildNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFieldSetElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFieldSetElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFieldSetElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFieldSetElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFieldSetElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFieldSetElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFieldSetElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement ParentNode where cast = believe_me


export %inline
Cast HTMLFieldSetElement Slottable where cast = believe_me

