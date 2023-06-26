module Web.Raw.SVGRadialGradientElement

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
import Web.Types.SVGGradientElement
import Web.Types.SVGRadialGradientElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.cx"
prim__cx : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.cy"
prim__cy : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.fr"
prim__fr : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.fx"
prim__fx : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.fy"
prim__fy : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.r"
prim__r : SVGRadialGradientElement -> PrimIO SVGAnimatedLength


export
cx : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
cx a = primJS $ SVGRadialGradientElement.prim__cx a


export
cy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
cy a = primJS $ SVGRadialGradientElement.prim__cy a


export
fr : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
fr a = primJS $ SVGRadialGradientElement.prim__fr a


export
fx : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
fx a = primJS $ SVGRadialGradientElement.prim__fx a


export
fy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
fy a = primJS $ SVGRadialGradientElement.prim__fy a


export
r : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
r a = primJS $ SVGRadialGradientElement.prim__r a
