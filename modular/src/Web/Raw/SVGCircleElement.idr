module Web.Raw.SVGCircleElement

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
import Web.Types.SVGCircleElement
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.cx"
prim__cx : SVGCircleElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.cy"
prim__cy : SVGCircleElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.r"
prim__r : SVGCircleElement -> PrimIO SVGAnimatedLength


export
cx : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
cx a = primJS $ SVGCircleElement.prim__cx a


export
cy : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
cy a = primJS $ SVGCircleElement.prim__cy a


export
r : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
r a = primJS $ SVGCircleElement.prim__r a

