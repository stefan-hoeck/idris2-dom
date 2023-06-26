module Web.Types.HTMLUListElement

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

export data HTMLUListElement : Type where [external]

export
ToFFI HTMLUListElement HTMLUListElement where toFFI = id

export
FromFFI HTMLUListElement HTMLUListElement where fromFFI = Just

export
SafeCast HTMLUListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLUListElement"


export %inline
Cast HTMLUListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLUListElement Element where cast = believe_me


export %inline
Cast HTMLUListElement Node where cast = believe_me


export %inline
Cast HTMLUListElement EventTarget where cast = believe_me


export %inline
Cast HTMLUListElement Object where cast = believe_me


export %inline
Cast HTMLUListElement Animatable where cast = believe_me


export %inline
Cast HTMLUListElement ChildNode where cast = believe_me


export %inline
Cast HTMLUListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLUListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLUListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLUListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLUListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLUListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLUListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLUListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLUListElement ParentNode where cast = believe_me


export %inline
Cast HTMLUListElement Slottable where cast = believe_me

