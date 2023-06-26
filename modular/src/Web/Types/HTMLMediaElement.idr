module Web.Types.HTMLMediaElement

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

export data HTMLMediaElement : Type where [external]

export
ToFFI HTMLMediaElement HTMLMediaElement where toFFI = id

export
FromFFI HTMLMediaElement HTMLMediaElement where fromFFI = Just

export
SafeCast HTMLMediaElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMediaElement"


export %inline
Cast HTMLMediaElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMediaElement Element where cast = believe_me


export %inline
Cast HTMLMediaElement Node where cast = believe_me


export %inline
Cast HTMLMediaElement EventTarget where cast = believe_me


export %inline
Cast HTMLMediaElement Object where cast = believe_me


export %inline
Cast HTMLMediaElement Animatable where cast = believe_me


export %inline
Cast HTMLMediaElement ChildNode where cast = believe_me


export %inline
Cast HTMLMediaElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMediaElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMediaElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMediaElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMediaElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMediaElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMediaElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMediaElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMediaElement ParentNode where cast = believe_me


export %inline
Cast HTMLMediaElement Slottable where cast = believe_me
