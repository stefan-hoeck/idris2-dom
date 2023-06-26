module Web.Types.HTMLFrameElement

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

export data HTMLFrameElement : Type where [external]

export
ToFFI HTMLFrameElement HTMLFrameElement where toFFI = id

export
FromFFI HTMLFrameElement HTMLFrameElement where fromFFI = Just

export
SafeCast HTMLFrameElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameElement"


export %inline
Cast HTMLFrameElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFrameElement Element where cast = believe_me


export %inline
Cast HTMLFrameElement Node where cast = believe_me


export %inline
Cast HTMLFrameElement EventTarget where cast = believe_me


export %inline
Cast HTMLFrameElement Object where cast = believe_me


export %inline
Cast HTMLFrameElement Animatable where cast = believe_me


export %inline
Cast HTMLFrameElement ChildNode where cast = believe_me


export %inline
Cast HTMLFrameElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFrameElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFrameElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFrameElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFrameElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFrameElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFrameElement ParentNode where cast = believe_me


export %inline
Cast HTMLFrameElement Slottable where cast = believe_me
