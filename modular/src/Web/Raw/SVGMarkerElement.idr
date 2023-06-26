module Web.Raw.SVGMarkerElement

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
import Web.Types.SVGAngle
import Web.Types.SVGAnimatedAngle
import Web.Types.SVGAnimatedEnumeration
import Web.Types.SVGAnimatedLength
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGFitToViewBox
import Web.Types.SVGMarkerElement
import Web.Types.Slottable


%default total


export
SVG_MARKERUNITS_STROKEWIDTH : Bits16
SVG_MARKERUNITS_STROKEWIDTH = 2


export
SVG_MARKERUNITS_UNKNOWN : Bits16
SVG_MARKERUNITS_UNKNOWN = 0


export
SVG_MARKERUNITS_USERSPACEONUSE : Bits16
SVG_MARKERUNITS_USERSPACEONUSE = 1


export
SVG_MARKER_ORIENT_ANGLE : Bits16
SVG_MARKER_ORIENT_ANGLE = 2


export
SVG_MARKER_ORIENT_AUTO : Bits16
SVG_MARKER_ORIENT_AUTO = 1


export
SVG_MARKER_ORIENT_UNKNOWN : Bits16
SVG_MARKER_ORIENT_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.markerHeight"
prim__markerHeight : SVGMarkerElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.markerUnits"
prim__markerUnits : SVGMarkerElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.markerWidth"
prim__markerWidth : SVGMarkerElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.orient"
prim__orient : SVGMarkerElement -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.orient = v}"
prim__setOrient : SVGMarkerElement -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.orientAngle"
prim__orientAngle : SVGMarkerElement -> PrimIO SVGAnimatedAngle


export
%foreign "browser:lambda:x=>x.orientType"
prim__orientType : SVGMarkerElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.refX"
prim__refX : SVGMarkerElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.refY"
prim__refY : SVGMarkerElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:(x,a)=>x.setOrientToAngle(a)"
prim__setOrientToAngle : SVGMarkerElement -> SVGAngle -> PrimIO ()


export
%foreign "browser:lambda:x=>x.setOrientToAuto()"
prim__setOrientToAuto : SVGMarkerElement -> PrimIO ()


export
markerHeight : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
markerHeight a = primJS $ SVGMarkerElement.prim__markerHeight a


export
markerUnits : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
markerUnits a = primJS $ SVGMarkerElement.prim__markerUnits a


export
markerWidth : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
markerWidth a = primJS $ SVGMarkerElement.prim__markerWidth a


export
orient : SVGMarkerElement -> Attribute True Prelude.id String
orient v = fromPrim "SVGMarkerElement.getorient" prim__orient prim__setOrient v


export
orientAngle : (obj : SVGMarkerElement) -> JSIO SVGAnimatedAngle
orientAngle a = primJS $ SVGMarkerElement.prim__orientAngle a


export
orientType : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
orientType a = primJS $ SVGMarkerElement.prim__orientType a


export
refX : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
refX a = primJS $ SVGMarkerElement.prim__refX a


export
refY : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
refY a = primJS $ SVGMarkerElement.prim__refY a


export
setOrientToAngle : (obj : SVGMarkerElement) -> (angle : SVGAngle) -> JSIO ()
setOrientToAngle a b = primJS $ SVGMarkerElement.prim__setOrientToAngle a b


export
setOrientToAuto : (obj : SVGMarkerElement) -> JSIO ()
setOrientToAuto a = primJS $ SVGMarkerElement.prim__setOrientToAuto a
