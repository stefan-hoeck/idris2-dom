module Web.Types.HTMLSelectElement

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

export data HTMLSelectElement : Type where [external]

export
ToFFI HTMLSelectElement HTMLSelectElement where toFFI = id

export
FromFFI HTMLSelectElement HTMLSelectElement where fromFFI = Just

export
SafeCast HTMLSelectElement where
  safeCast = unsafeCastOnPrototypeName "HTMLSelectElement"


export %inline
Cast HTMLSelectElement HTMLElement where cast = believe_me


export %inline
Cast HTMLSelectElement Element where cast = believe_me


export %inline
Cast HTMLSelectElement Node where cast = believe_me


export %inline
Cast HTMLSelectElement EventTarget where cast = believe_me


export %inline
Cast HTMLSelectElement Object where cast = believe_me


export %inline
Cast HTMLSelectElement Animatable where cast = believe_me


export %inline
Cast HTMLSelectElement ChildNode where cast = believe_me


export %inline
Cast HTMLSelectElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLSelectElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLSelectElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLSelectElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLSelectElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLSelectElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLSelectElement InnerHTML where cast = believe_me


export %inline
Cast HTMLSelectElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLSelectElement ParentNode where cast = believe_me


export %inline
Cast HTMLSelectElement Slottable where cast = believe_me
