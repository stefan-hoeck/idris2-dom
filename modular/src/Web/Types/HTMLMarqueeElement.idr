module Web.Types.HTMLMarqueeElement

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

export data HTMLMarqueeElement : Type where [external]

export
ToFFI HTMLMarqueeElement HTMLMarqueeElement where toFFI = id

export
FromFFI HTMLMarqueeElement HTMLMarqueeElement where fromFFI = Just

export
SafeCast HTMLMarqueeElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMarqueeElement"


export %inline
Cast HTMLMarqueeElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMarqueeElement Element where cast = believe_me


export %inline
Cast HTMLMarqueeElement Node where cast = believe_me


export %inline
Cast HTMLMarqueeElement EventTarget where cast = believe_me


export %inline
Cast HTMLMarqueeElement Object where cast = believe_me


export %inline
Cast HTMLMarqueeElement Animatable where cast = believe_me


export %inline
Cast HTMLMarqueeElement ChildNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMarqueeElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMarqueeElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMarqueeElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMarqueeElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMarqueeElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMarqueeElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMarqueeElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement ParentNode where cast = believe_me


export %inline
Cast HTMLMarqueeElement Slottable where cast = believe_me
