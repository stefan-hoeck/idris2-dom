module Web.Types.HTMLTrackElement

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

export data HTMLTrackElement : Type where [external]

export
ToFFI HTMLTrackElement HTMLTrackElement where toFFI = id

export
FromFFI HTMLTrackElement HTMLTrackElement where fromFFI = Just

export
SafeCast HTMLTrackElement where
  safeCast = unsafeCastOnPrototypeName "HTMLTrackElement"


export %inline
Cast HTMLTrackElement HTMLElement where cast = believe_me


export %inline
Cast HTMLTrackElement Element where cast = believe_me


export %inline
Cast HTMLTrackElement Node where cast = believe_me


export %inline
Cast HTMLTrackElement EventTarget where cast = believe_me


export %inline
Cast HTMLTrackElement Object where cast = believe_me


export %inline
Cast HTMLTrackElement Animatable where cast = believe_me


export %inline
Cast HTMLTrackElement ChildNode where cast = believe_me


export %inline
Cast HTMLTrackElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLTrackElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLTrackElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLTrackElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLTrackElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLTrackElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLTrackElement InnerHTML where cast = believe_me


export %inline
Cast HTMLTrackElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLTrackElement ParentNode where cast = believe_me


export %inline
Cast HTMLTrackElement Slottable where cast = believe_me

