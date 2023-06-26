module Web.Types.HTMLLegendElement

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

export data HTMLLegendElement : Type where [external]

export
ToFFI HTMLLegendElement HTMLLegendElement where toFFI = id

export
FromFFI HTMLLegendElement HTMLLegendElement where fromFFI = Just

export
SafeCast HTMLLegendElement where
  safeCast = unsafeCastOnPrototypeName "HTMLLegendElement"


export %inline
Cast HTMLLegendElement HTMLElement where cast = believe_me


export %inline
Cast HTMLLegendElement Element where cast = believe_me


export %inline
Cast HTMLLegendElement Node where cast = believe_me


export %inline
Cast HTMLLegendElement EventTarget where cast = believe_me


export %inline
Cast HTMLLegendElement Object where cast = believe_me


export %inline
Cast HTMLLegendElement Animatable where cast = believe_me


export %inline
Cast HTMLLegendElement ChildNode where cast = believe_me


export %inline
Cast HTMLLegendElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast HTMLLegendElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast HTMLLegendElement ElementContentEditable where cast = believe_me


export %inline
Cast HTMLLegendElement GeometryUtils where cast = believe_me


export %inline
Cast HTMLLegendElement GlobalEventHandlers where cast = believe_me


export %inline
Cast HTMLLegendElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast HTMLLegendElement InnerHTML where cast = believe_me


export %inline
Cast HTMLLegendElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast HTMLLegendElement ParentNode where cast = believe_me


export %inline
Cast HTMLLegendElement Slottable where cast = believe_me
