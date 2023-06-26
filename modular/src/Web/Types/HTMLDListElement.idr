module Web.Types.HTMLDListElement

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

export data HTMLDListElement : Type where [external]

export
ToFFI HTMLDListElement HTMLDListElement where toFFI = id

export
FromFFI HTMLDListElement HTMLDListElement where fromFFI = Just

export
SafeCast HTMLDListElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDListElement"


export %inline
Cast HTMLDListElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDListElement Element where cast = believe_me


export %inline
Cast HTMLDListElement Node where cast = believe_me


export %inline
Cast HTMLDListElement EventTarget where cast = believe_me


export %inline
Cast HTMLDListElement Object where cast = believe_me


export %inline
Cast HTMLDListElement Animatable where cast = believe_me


export %inline
Cast HTMLDListElement ChildNode where cast = believe_me


export %inline
Cast HTMLDListElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDListElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDListElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDListElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDListElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDListElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDListElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDListElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDListElement ParentNode where cast = believe_me


export %inline
Cast HTMLDListElement Slottable where cast = believe_me
