module Web.Types.HTMLProgressElement

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

export data HTMLProgressElement : Type where [external]

export
ToFFI HTMLProgressElement HTMLProgressElement where toFFI = id

export
FromFFI HTMLProgressElement HTMLProgressElement where fromFFI = Just

export
SafeCast HTMLProgressElement where
  safeCast = unsafeCastOnPrototypeName "HTMLProgressElement"


export %inline
Cast HTMLProgressElement HTMLElement where cast = believe_me


export %inline
Cast HTMLProgressElement Element where cast = believe_me


export %inline
Cast HTMLProgressElement Node where cast = believe_me


export %inline
Cast HTMLProgressElement EventTarget where cast = believe_me


export %inline
Cast HTMLProgressElement Object where cast = believe_me


export %inline
Cast HTMLProgressElement Animatable where cast = believe_me


export %inline
Cast HTMLProgressElement ChildNode where cast = believe_me


export %inline
Cast HTMLProgressElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLProgressElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLProgressElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLProgressElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLProgressElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLProgressElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLProgressElement InnerHTML where cast = believe_me


export %inline
Cast HTMLProgressElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLProgressElement ParentNode where cast = believe_me


export %inline
Cast HTMLProgressElement Slottable where cast = believe_me
