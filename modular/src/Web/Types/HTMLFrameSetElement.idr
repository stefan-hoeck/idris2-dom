module Web.Types.HTMLFrameSetElement

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
import Web.Types.WindowEventHandlers


%default total

export data HTMLFrameSetElement : Type where [external]

export
ToFFI HTMLFrameSetElement HTMLFrameSetElement where toFFI = id

export
FromFFI HTMLFrameSetElement HTMLFrameSetElement where fromFFI = Just

export
SafeCast HTMLFrameSetElement where
  safeCast = unsafeCastOnPrototypeName "HTMLFrameSetElement"


export %inline
Cast HTMLFrameSetElement HTMLElement where cast = believe_me


export %inline
Cast HTMLFrameSetElement Element where cast = believe_me


export %inline
Cast HTMLFrameSetElement Node where cast = believe_me


export %inline
Cast HTMLFrameSetElement EventTarget where cast = believe_me


export %inline
Cast HTMLFrameSetElement Object where cast = believe_me


export %inline
Cast HTMLFrameSetElement Animatable where cast = believe_me


export %inline
Cast HTMLFrameSetElement ChildNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameSetElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLFrameSetElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLFrameSetElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLFrameSetElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLFrameSetElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLFrameSetElement InnerHTML where cast = believe_me


export %inline
Cast HTMLFrameSetElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement ParentNode where cast = believe_me


export %inline
Cast HTMLFrameSetElement Slottable where cast = believe_me


export %inline
Cast HTMLFrameSetElement WindowEventHandlers where cast = believe_me
