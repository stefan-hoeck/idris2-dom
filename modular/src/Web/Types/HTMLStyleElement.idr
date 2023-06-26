module Web.Types.HTMLStyleElement

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

export data HTMLStyleElement : Type where [external]

export
ToFFI HTMLStyleElement HTMLStyleElement where toFFI = id

export
FromFFI HTMLStyleElement HTMLStyleElement where fromFFI = Just

export
SafeCast HTMLStyleElement where
  safeCast = unsafeCastOnPrototypeName "HTMLStyleElement"


export %inline
Cast HTMLStyleElement HTMLElement where cast = believe_me


export %inline
Cast HTMLStyleElement Element where cast = believe_me


export %inline
Cast HTMLStyleElement Node where cast = believe_me


export %inline
Cast HTMLStyleElement EventTarget where cast = believe_me


export %inline
Cast HTMLStyleElement Object where cast = believe_me


export %inline
Cast HTMLStyleElement Animatable where cast = believe_me


export %inline
Cast HTMLStyleElement ChildNode where cast = believe_me


export %inline
Cast HTMLStyleElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLStyleElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLStyleElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLStyleElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLStyleElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLStyleElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLStyleElement InnerHTML where cast = believe_me


export %inline
Cast HTMLStyleElement LinkStyle where cast = believe_me


export %inline
Cast HTMLStyleElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLStyleElement ParentNode where cast = believe_me


export %inline
Cast HTMLStyleElement Slottable where cast = believe_me

