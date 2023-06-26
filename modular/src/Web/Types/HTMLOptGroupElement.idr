module Web.Types.HTMLOptGroupElement

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

export data HTMLOptGroupElement : Type where [external]

export
ToFFI HTMLOptGroupElement HTMLOptGroupElement where toFFI = id

export
FromFFI HTMLOptGroupElement HTMLOptGroupElement where fromFFI = Just

export
SafeCast HTMLOptGroupElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOptGroupElement"


export %inline
Cast HTMLOptGroupElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOptGroupElement Element where cast = believe_me


export %inline
Cast HTMLOptGroupElement Node where cast = believe_me


export %inline
Cast HTMLOptGroupElement EventTarget where cast = believe_me


export %inline
Cast HTMLOptGroupElement Object where cast = believe_me


export %inline
Cast HTMLOptGroupElement Animatable where cast = believe_me


export %inline
Cast HTMLOptGroupElement ChildNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOptGroupElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOptGroupElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOptGroupElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOptGroupElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOptGroupElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOptGroupElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOptGroupElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement ParentNode where cast = believe_me


export %inline
Cast HTMLOptGroupElement Slottable where cast = believe_me

