module Web.Types.HTMLInputElement

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

export data HTMLInputElement : Type where [external]

export
ToFFI HTMLInputElement HTMLInputElement where toFFI = id

export
FromFFI HTMLInputElement HTMLInputElement where fromFFI = Just

export
SafeCast HTMLInputElement where
  safeCast = unsafeCastOnPrototypeName "HTMLInputElement"


export %inline
Cast HTMLInputElement HTMLElement where cast = believe_me


export %inline
Cast HTMLInputElement Element where cast = believe_me


export %inline
Cast HTMLInputElement Node where cast = believe_me


export %inline
Cast HTMLInputElement EventTarget where cast = believe_me


export %inline
Cast HTMLInputElement Object where cast = believe_me


export %inline
Cast HTMLInputElement Animatable where cast = believe_me


export %inline
Cast HTMLInputElement ChildNode where cast = believe_me


export %inline
Cast HTMLInputElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLInputElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLInputElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLInputElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLInputElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLInputElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLInputElement InnerHTML where cast = believe_me


export %inline
Cast HTMLInputElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLInputElement ParentNode where cast = believe_me


export %inline
Cast HTMLInputElement Slottable where cast = believe_me

