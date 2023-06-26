module Web.Types.HTMLElement

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
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLElement : Type where [external]

export
ToFFI HTMLElement HTMLElement where toFFI = id

export
FromFFI HTMLElement HTMLElement where fromFFI = Just

export
SafeCast HTMLElement where
  safeCast = unsafeCastOnPrototypeName "HTMLElement"


export %inline
Cast HTMLElement Element where cast = believe_me


export %inline
Cast HTMLElement Node where cast = believe_me


export %inline
Cast HTMLElement EventTarget where cast = believe_me


export %inline
Cast HTMLElement Object where cast = believe_me


export %inline
Cast HTMLElement Animatable where cast = believe_me


export %inline
Cast HTMLElement ChildNode where cast = believe_me


export %inline
Cast HTMLElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLElement InnerHTML where cast = believe_me


export %inline
Cast HTMLElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLElement ParentNode where cast = believe_me


export %inline
Cast HTMLElement Slottable where cast = believe_me

