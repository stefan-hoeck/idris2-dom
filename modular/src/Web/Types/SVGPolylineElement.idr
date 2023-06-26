module Web.Types.SVGPolylineElement

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
import Web.Types.SVGAnimatedPoints
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total

export data SVGPolylineElement : Type where [external]

export
ToFFI SVGPolylineElement SVGPolylineElement where toFFI = id

export
FromFFI SVGPolylineElement SVGPolylineElement where fromFFI = Just

export
SafeCast SVGPolylineElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolylineElement"


export %inline
Cast SVGPolylineElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPolylineElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPolylineElement SVGElement where cast = believe_me


export %inline
Cast SVGPolylineElement Element where cast = believe_me


export %inline
Cast SVGPolylineElement Node where cast = believe_me


export %inline
Cast SVGPolylineElement EventTarget where cast = believe_me


export %inline
Cast SVGPolylineElement Object where cast = believe_me


export %inline
Cast SVGPolylineElement Animatable where cast = believe_me


export %inline
Cast SVGPolylineElement ChildNode where cast = believe_me


export %inline
Cast SVGPolylineElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPolylineElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPolylineElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPolylineElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPolylineElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPolylineElement InnerHTML where cast = believe_me


export %inline
Cast SVGPolylineElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPolylineElement ParentNode where cast = believe_me


export %inline
Cast SVGPolylineElement SVGAnimatedPoints where cast = believe_me


export %inline
Cast SVGPolylineElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPolylineElement SVGTests where cast = believe_me


export %inline
Cast SVGPolylineElement Slottable where cast = believe_me

