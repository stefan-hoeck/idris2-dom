module Web.Types.HTMLHeadElement

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

export data HTMLHeadElement : Type where [external]

export
ToFFI HTMLHeadElement HTMLHeadElement where toFFI = id

export
FromFFI HTMLHeadElement HTMLHeadElement where fromFFI = Just

export
SafeCast HTMLHeadElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadElement"


export %inline
Cast HTMLHeadElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHeadElement Element where cast = believe_me


export %inline
Cast HTMLHeadElement Node where cast = believe_me


export %inline
Cast HTMLHeadElement EventTarget where cast = believe_me


export %inline
Cast HTMLHeadElement Object where cast = believe_me


export %inline
Cast HTMLHeadElement Animatable where cast = believe_me


export %inline
Cast HTMLHeadElement ChildNode where cast = believe_me


export %inline
Cast HTMLHeadElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHeadElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHeadElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHeadElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHeadElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHeadElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHeadElement ParentNode where cast = believe_me


export %inline
Cast HTMLHeadElement Slottable where cast = believe_me
