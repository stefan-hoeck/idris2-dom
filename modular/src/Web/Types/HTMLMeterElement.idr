module Web.Types.HTMLMeterElement

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

export data HTMLMeterElement : Type where [external]

export
ToFFI HTMLMeterElement HTMLMeterElement where toFFI = id

export
FromFFI HTMLMeterElement HTMLMeterElement where fromFFI = Just

export
SafeCast HTMLMeterElement where
  safeCast = unsafeCastOnPrototypeName "HTMLMeterElement"


export %inline
Cast HTMLMeterElement HTMLElement where cast = believe_me


export %inline
Cast HTMLMeterElement Element where cast = believe_me


export %inline
Cast HTMLMeterElement Node where cast = believe_me


export %inline
Cast HTMLMeterElement EventTarget where cast = believe_me


export %inline
Cast HTMLMeterElement Object where cast = believe_me


export %inline
Cast HTMLMeterElement Animatable where cast = believe_me


export %inline
Cast HTMLMeterElement ChildNode where cast = believe_me


export %inline
Cast HTMLMeterElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLMeterElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLMeterElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLMeterElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLMeterElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLMeterElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLMeterElement InnerHTML where cast = believe_me


export %inline
Cast HTMLMeterElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLMeterElement ParentNode where cast = believe_me


export %inline
Cast HTMLMeterElement Slottable where cast = believe_me
