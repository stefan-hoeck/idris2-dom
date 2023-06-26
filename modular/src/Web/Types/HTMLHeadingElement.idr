module Web.Types.HTMLHeadingElement

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

export data HTMLHeadingElement : Type where [external]

export
ToFFI HTMLHeadingElement HTMLHeadingElement where toFFI = id

export
FromFFI HTMLHeadingElement HTMLHeadingElement where fromFFI = Just

export
SafeCast HTMLHeadingElement where
  safeCast = unsafeCastOnPrototypeName "HTMLHeadingElement"


export %inline
Cast HTMLHeadingElement HTMLElement where cast = believe_me


export %inline
Cast HTMLHeadingElement Element where cast = believe_me


export %inline
Cast HTMLHeadingElement Node where cast = believe_me


export %inline
Cast HTMLHeadingElement EventTarget where cast = believe_me


export %inline
Cast HTMLHeadingElement Object where cast = believe_me


export %inline
Cast HTMLHeadingElement Animatable where cast = believe_me


export %inline
Cast HTMLHeadingElement ChildNode where cast = believe_me


export %inline
Cast HTMLHeadingElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadingElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLHeadingElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLHeadingElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLHeadingElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLHeadingElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLHeadingElement InnerHTML where cast = believe_me


export %inline
Cast HTMLHeadingElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLHeadingElement ParentNode where cast = believe_me


export %inline
Cast HTMLHeadingElement Slottable where cast = believe_me

