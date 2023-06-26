module Web.Types.SVGMarkerElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGFitToViewBox
import Web.Types.Slottable


%default total

export data SVGMarkerElement : Type where [external]

export
ToFFI SVGMarkerElement SVGMarkerElement where toFFI = id

export
FromFFI SVGMarkerElement SVGMarkerElement where fromFFI = Just

export
SafeCast SVGMarkerElement where
  safeCast = unsafeCastOnPrototypeName "SVGMarkerElement"


export %inline
Cast SVGMarkerElement SVGElement where cast = believe_me


export %inline
Cast SVGMarkerElement Element where cast = believe_me


export %inline
Cast SVGMarkerElement Node where cast = believe_me


export %inline
Cast SVGMarkerElement EventTarget where cast = believe_me


export %inline
Cast SVGMarkerElement Object where cast = believe_me


export %inline
Cast SVGMarkerElement Animatable where cast = believe_me


export %inline
Cast SVGMarkerElement ChildNode where cast = believe_me


export %inline
Cast SVGMarkerElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGMarkerElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGMarkerElement GeometryUtils where cast = believe_me


export %inline
Cast SVGMarkerElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGMarkerElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGMarkerElement InnerHTML where cast = believe_me


export %inline
Cast SVGMarkerElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGMarkerElement ParentNode where cast = believe_me


export %inline
Cast SVGMarkerElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGMarkerElement SVGFitToViewBox where cast = believe_me


export %inline
Cast SVGMarkerElement Slottable where cast = believe_me
