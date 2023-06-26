module Web.Raw.SVGUseElement

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
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGURIReference
import Web.Types.SVGUseElement
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.animatedInstanceRoot"
prim__animatedInstanceRoot : SVGUseElement -> PrimIO (Nullable SVGElement)


export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGUseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.instanceRoot"
prim__instanceRoot : SVGUseElement -> PrimIO (Nullable SVGElement)


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGUseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGUseElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGUseElement -> PrimIO SVGAnimatedLength


export
animatedInstanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
animatedInstanceRoot a = tryJS "SVGUseElement.animatedInstanceRoot" $
  SVGUseElement.prim__animatedInstanceRoot a


export
height : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGUseElement.prim__height a


export
instanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
instanceRoot a = tryJS "SVGUseElement.instanceRoot" $
  SVGUseElement.prim__instanceRoot a


export
width : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGUseElement.prim__width a


export
x : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGUseElement.prim__x a


export
y : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGUseElement.prim__y a

