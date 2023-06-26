module Web.Types.HTMLAreaElement

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

export data HTMLAreaElement : Type where [external]

export
ToFFI HTMLAreaElement HTMLAreaElement where toFFI = id

export
FromFFI HTMLAreaElement HTMLAreaElement where fromFFI = Just

export
SafeCast HTMLAreaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAreaElement"


export %inline
Cast HTMLAreaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAreaElement Element where cast = believe_me


export %inline
Cast HTMLAreaElement Node where cast = believe_me


export %inline
Cast HTMLAreaElement EventTarget where cast = believe_me


export %inline
Cast HTMLAreaElement Object where cast = believe_me


export %inline
Cast HTMLAreaElement Animatable where cast = believe_me


export %inline
Cast HTMLAreaElement ChildNode where cast = believe_me


export %inline
Cast HTMLAreaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAreaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAreaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAreaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAreaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAreaElement HTMLHyperlinkElementUtils where cast = believe_me


export %inline
Cast HTMLAreaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAreaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAreaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAreaElement ParentNode where cast = believe_me


export %inline
Cast HTMLAreaElement Slottable where cast = believe_me

