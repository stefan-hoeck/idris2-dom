module Web.Types.HTMLLinkElement

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
import Web.Types.LinkStyle
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLLinkElement : Type where [external]

export
ToFFI HTMLLinkElement HTMLLinkElement where toFFI = id

export
FromFFI HTMLLinkElement HTMLLinkElement where fromFFI = Just

export
SafeCast HTMLLinkElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLinkElement"


export %inline
Cast HTMLLinkElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLinkElement Element where cast = believe_me


export %inline
Cast HTMLLinkElement Node where cast = believe_me


export %inline
Cast HTMLLinkElement EventTarget where cast = believe_me


export %inline
Cast HTMLLinkElement Object where cast = believe_me


export %inline
Cast HTMLLinkElement Animatable where cast = believe_me


export %inline
Cast HTMLLinkElement ChildNode where cast = believe_me


export %inline
Cast HTMLLinkElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLinkElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLinkElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLinkElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLinkElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLinkElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLinkElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLinkElement LinkStyle where cast = believe_me


export %inline
Cast HTMLLinkElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLinkElement ParentNode where cast = believe_me


export %inline
Cast HTMLLinkElement Slottable where cast = believe_me
