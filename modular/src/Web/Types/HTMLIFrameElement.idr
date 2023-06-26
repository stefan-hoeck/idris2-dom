module Web.Types.HTMLIFrameElement

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

export data HTMLIFrameElement : Type where [external]

export
ToFFI HTMLIFrameElement HTMLIFrameElement where toFFI = id

export
FromFFI HTMLIFrameElement HTMLIFrameElement where fromFFI = Just

export
SafeCast HTMLIFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLIFrameElement"


export %inline
Cast HTMLIFrameElement HTMLElement where cast = believe_me


export %inline
Cast HTMLIFrameElement Element where cast = believe_me


export %inline
Cast HTMLIFrameElement Node where cast = believe_me


export %inline
Cast HTMLIFrameElement EventTarget where cast = believe_me


export %inline
Cast HTMLIFrameElement Object where cast = believe_me


export %inline
Cast HTMLIFrameElement Animatable where cast = believe_me


export %inline
Cast HTMLIFrameElement ChildNode where cast = believe_me


export %inline
Cast HTMLIFrameElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLIFrameElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLIFrameElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLIFrameElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLIFrameElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLIFrameElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLIFrameElement InnerHTML where cast = believe_me


export %inline
Cast HTMLIFrameElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLIFrameElement ParentNode where cast = believe_me


export %inline
Cast HTMLIFrameElement Slottable where cast = believe_me

