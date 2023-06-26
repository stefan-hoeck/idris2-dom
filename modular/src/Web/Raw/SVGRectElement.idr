module Web.Raw.SVGRectElement

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
import Web.Types.SVGRectElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGRectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.rx"
prim__rx : SVGRectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.ry"
prim__ry : SVGRectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGRectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGRectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGRectElement -> PrimIO SVGAnimatedLength


export
height : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGRectElement.prim__height a


export
rx : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
rx a = primJS $ SVGRectElement.prim__rx a


export
ry : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
ry a = primJS $ SVGRectElement.prim__ry a


export
width : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGRectElement.prim__width a


export
x : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGRectElement.prim__x a


export
y : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGRectElement.prim__y a
