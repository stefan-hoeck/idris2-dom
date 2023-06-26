module Web.Types.HTMLAnchorElement

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
import Web.Types.HTMLHyperlinkElementUtils
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLAnchorElement : Type where [external]

export
ToFFI HTMLAnchorElement HTMLAnchorElement where toFFI = id

export
FromFFI HTMLAnchorElement HTMLAnchorElement where fromFFI = Just

export
SafeCast HTMLAnchorElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAnchorElement"


export %inline
Cast HTMLAnchorElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAnchorElement Element where cast = believe_me


export %inline
Cast HTMLAnchorElement Node where cast = believe_me


export %inline
Cast HTMLAnchorElement EventTarget where cast = believe_me


export %inline
Cast HTMLAnchorElement Object where cast = believe_me


export %inline
Cast HTMLAnchorElement Animatable where cast = believe_me


export %inline
Cast HTMLAnchorElement ChildNode where cast = believe_me


export %inline
Cast HTMLAnchorElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAnchorElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAnchorElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAnchorElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAnchorElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAnchorElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast HTMLAnchorElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAnchorElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAnchorElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAnchorElement ParentNode where cast = believe_me


export %inline
Cast HTMLAnchorElement Slottable where cast = believe_me

