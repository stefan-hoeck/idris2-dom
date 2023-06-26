module Web.Types.HTMLButtonElement

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

export data HTMLButtonElement : Type where [external]

export
ToFFI HTMLButtonElement HTMLButtonElement where toFFI = id

export
FromFFI HTMLButtonElement HTMLButtonElement where fromFFI = Just

export
SafeCast HTMLButtonElement where
  safeCast = unsafeCastOnPrototypeName "HTMLButtonElement"


export %inline
Cast HTMLButtonElement HTMLElement where cast = believe_me


export %inline
Cast HTMLButtonElement Element where cast = believe_me


export %inline
Cast HTMLButtonElement Node where cast = believe_me


export %inline
Cast HTMLButtonElement EventTarget where cast = believe_me


export %inline
Cast HTMLButtonElement Object where cast = believe_me


export %inline
Cast HTMLButtonElement Animatable where cast = believe_me


export %inline
Cast HTMLButtonElement ChildNode where cast = believe_me


export %inline
Cast HTMLButtonElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLButtonElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLButtonElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLButtonElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLButtonElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLButtonElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLButtonElement InnerHTML where cast = believe_me


export %inline
Cast HTMLButtonElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLButtonElement ParentNode where cast = believe_me


export %inline
Cast HTMLButtonElement Slottable where cast = believe_me
