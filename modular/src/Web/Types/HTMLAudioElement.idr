module Web.Types.HTMLAudioElement

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

export data HTMLAudioElement : Type where [external]

export
ToFFI HTMLAudioElement HTMLAudioElement where toFFI = id

export
FromFFI HTMLAudioElement HTMLAudioElement where fromFFI = Just

export
SafeCast HTMLAudioElement where
  safeCast = unsafeCastOnPrototypeName "HTMLAudioElement"


export %inline
Cast HTMLAudioElement HTMLMediaElement where cast = believe_me


export %inline
Cast HTMLAudioElement HTMLElement where cast = believe_me


export %inline
Cast HTMLAudioElement Element where cast = believe_me


export %inline
Cast HTMLAudioElement Node where cast = believe_me


export %inline
Cast HTMLAudioElement EventTarget where cast = believe_me


export %inline
Cast HTMLAudioElement Object where cast = believe_me


export %inline
Cast HTMLAudioElement Animatable where cast = believe_me


export %inline
Cast HTMLAudioElement ChildNode where cast = believe_me


export %inline
Cast HTMLAudioElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLAudioElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLAudioElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLAudioElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLAudioElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLAudioElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLAudioElement InnerHTML where cast = believe_me


export %inline
Cast HTMLAudioElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLAudioElement ParentNode where cast = believe_me


export %inline
Cast HTMLAudioElement Slottable where cast = believe_me
