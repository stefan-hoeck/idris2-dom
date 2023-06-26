module Web.Types.HTMLDivElement

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

export data HTMLDivElement : Type where [external]

export
ToFFI HTMLDivElement HTMLDivElement where toFFI = id

export
FromFFI HTMLDivElement HTMLDivElement where fromFFI = Just

export
SafeCast HTMLDivElement where
  safeCast = unsafeCastOnPrototypeName "HTMLDivElement"


export %inline
Cast HTMLDivElement HTMLElement where cast = believe_me


export %inline
Cast HTMLDivElement Element where cast = believe_me


export %inline
Cast HTMLDivElement Node where cast = believe_me


export %inline
Cast HTMLDivElement EventTarget where cast = believe_me


export %inline
Cast HTMLDivElement Object where cast = believe_me


export %inline
Cast HTMLDivElement Animatable where cast = believe_me


export %inline
Cast HTMLDivElement ChildNode where cast = believe_me


export %inline
Cast HTMLDivElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLDivElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLDivElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLDivElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLDivElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLDivElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLDivElement InnerHTML where cast = believe_me


export %inline
Cast HTMLDivElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLDivElement ParentNode where cast = believe_me


export %inline
Cast HTMLDivElement Slottable where cast = believe_me
