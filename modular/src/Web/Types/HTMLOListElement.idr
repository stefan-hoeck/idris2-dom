module Web.Types.HTMLOListElement

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

export data HTMLOListElement : Type where [external]

export
ToFFI HTMLOListElement HTMLOListElement where toFFI = id

export
FromFFI HTMLOListElement HTMLOListElement where fromFFI = Just

export
SafeCast HTMLOListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLOListElement"


export %inline
Cast HTMLOListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLOListElement Element where cast = believe_me


export %inline
Cast HTMLOListElement Node where cast = believe_me


export %inline
Cast HTMLOListElement EventTarget where cast = believe_me


export %inline
Cast HTMLOListElement Object where cast = believe_me


export %inline
Cast HTMLOListElement Animatable where cast = believe_me


export %inline
Cast HTMLOListElement ChildNode where cast = believe_me


export %inline
Cast HTMLOListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLOListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLOListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLOListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLOListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLOListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLOListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLOListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLOListElement ParentNode where cast = believe_me


export %inline
Cast HTMLOListElement Slottable where cast = believe_me
