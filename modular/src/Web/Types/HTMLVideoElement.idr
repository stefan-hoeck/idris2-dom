module Web.Types.HTMLVideoElement

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
import Web.Types.HTMLMediaElement
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.Slottable


%default total

export data HTMLVideoElement : Type where [external]

export
ToFFI HTMLVideoElement HTMLVideoElement where toFFI = id

export
FromFFI HTMLVideoElement HTMLVideoElement where fromFFI = Just

export
SafeCast HTMLVideoElement where
  safeCast = unsafeCastOnPrototypeName "HTMLVideoElement"


export %inline
Cast HTMLVideoElement HTMLMediaElement where cast = believe_me


export %inline
Cast HTMLVideoElement HTMLElement where cast = believe_me


export %inline
Cast HTMLVideoElement Element where cast = believe_me


export %inline
Cast HTMLVideoElement Node where cast = believe_me


export %inline
Cast HTMLVideoElement EventTarget where cast = believe_me


export %inline
Cast HTMLVideoElement Object where cast = believe_me


export %inline
Cast HTMLVideoElement Animatable where cast = believe_me


export %inline
Cast HTMLVideoElement ChildNode where cast = believe_me


export %inline
Cast HTMLVideoElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLVideoElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLVideoElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLVideoElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLVideoElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLVideoElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLVideoElement InnerHTML where cast = believe_me


export %inline
Cast HTMLVideoElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLVideoElement ParentNode where cast = believe_me


export %inline
Cast HTMLVideoElement Slottable where cast = believe_me

