module Web.Types.SVGPolygonElement

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

export data SVGPolygonElement : Type where [external]

export
ToFFI SVGPolygonElement SVGPolygonElement where toFFI = id

export
FromFFI SVGPolygonElement SVGPolygonElement where fromFFI = Just

export
SafeCast SVGPolygonElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolygonElement"


export %inline
Cast SVGPolygonElement SVGGeometryElement where cast = believe_me


export %inline
Cast SVGPolygonElement SVGGraphicsElement where cast = believe_me


export %inline
Cast SVGPolygonElement SVGElement where cast = believe_me


export %inline
Cast SVGPolygonElement Element where cast = believe_me


export %inline
Cast SVGPolygonElement Node where cast = believe_me


export %inline
Cast SVGPolygonElement EventTarget where cast = believe_me


export %inline
Cast SVGPolygonElement Object where cast = believe_me


export %inline
Cast SVGPolygonElement Animatable where cast = believe_me


export %inline
Cast SVGPolygonElement ChildNode where cast = believe_me


export %inline
Cast SVGPolygonElement DocumentAndElementEventHandlers where cast = believe_me


export %inline
Cast SVGPolygonElement ElementCSSInlineStyle where cast = believe_me


export %inline
Cast SVGPolygonElement GeometryUtils where cast = believe_me


export %inline
Cast SVGPolygonElement GlobalEventHandlers where cast = believe_me


export %inline
Cast SVGPolygonElement HTMLOrSVGElement where cast = believe_me


export %inline
Cast SVGPolygonElement InnerHTML where cast = believe_me


export %inline
Cast SVGPolygonElement NonDocumentTypeChildNode where cast = believe_me


export %inline
Cast SVGPolygonElement ParentNode where cast = believe_me


export %inline
Cast SVGPolygonElement SVGAnimatedPoints where cast = believe_me


export %inline
Cast SVGPolygonElement SVGElementInstance where cast = believe_me


export %inline
Cast SVGPolygonElement SVGTests where cast = believe_me


export %inline
Cast SVGPolygonElement Slottable where cast = believe_me

