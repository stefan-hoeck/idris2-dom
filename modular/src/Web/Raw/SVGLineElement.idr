module Web.Raw.SVGLineElement

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
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGLineElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.x1"
prim__x1 : SVGLineElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x2"
prim__x2 : SVGLineElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y1"
prim__y1 : SVGLineElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y2"
prim__y2 : SVGLineElement -> PrimIO SVGAnimatedLength


export
x1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
x1 a = primJS $ SVGLineElement.prim__x1 a


export
x2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
x2 a = primJS $ SVGLineElement.prim__x2 a


export
y1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
y1 a = primJS $ SVGLineElement.prim__y1 a


export
y2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
y2 a = primJS $ SVGLineElement.prim__y2 a

