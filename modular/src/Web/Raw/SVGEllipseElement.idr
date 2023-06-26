module Web.Raw.SVGEllipseElement

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
import Web.Types.SVGAnimatedLength
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGEllipseElement
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.cx"
prim__cx : SVGEllipseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.cy"
prim__cy : SVGEllipseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.rx"
prim__rx : SVGEllipseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.ry"
prim__ry : SVGEllipseElement -> PrimIO SVGAnimatedLength


export
cx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
cx a = primJS $ SVGEllipseElement.prim__cx a


export
cy : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
cy a = primJS $ SVGEllipseElement.prim__cy a


export
rx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
rx a = primJS $ SVGEllipseElement.prim__rx a


export
ry : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
ry a = primJS $ SVGEllipseElement.prim__ry a

