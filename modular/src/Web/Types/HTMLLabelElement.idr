module Web.Types.HTMLLabelElement

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

export data HTMLLabelElement : Type where [external]

export
ToFFI HTMLLabelElement HTMLLabelElement where toFFI = id

export
FromFFI HTMLLabelElement HTMLLabelElement where fromFFI = Just

export
SafeCast HTMLLabelElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLabelElement"


export %inline
Cast HTMLLabelElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLabelElement Element where cast = believe_me


export %inline
Cast HTMLLabelElement Node where cast = believe_me


export %inline
Cast HTMLLabelElement EventTarget where cast = believe_me


export %inline
Cast HTMLLabelElement Object where cast = believe_me


export %inline
Cast HTMLLabelElement Animatable where cast = believe_me


export %inline
Cast HTMLLabelElement ChildNode where cast = believe_me


export %inline
Cast HTMLLabelElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLabelElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLabelElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLabelElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLabelElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLabelElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLabelElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLabelElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLabelElement ParentNode where cast = believe_me


export %inline
Cast HTMLLabelElement Slottable where cast = believe_me

