module Web.Raw.SVGForeignObjectElement

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
import Web.Types.SVGForeignObjectElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGForeignObjectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGForeignObjectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGForeignObjectElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGForeignObjectElement -> PrimIO SVGAnimatedLength


export
height : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGForeignObjectElement.prim__height a


export
width : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGForeignObjectElement.prim__width a


export
x : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGForeignObjectElement.prim__x a


export
y : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGForeignObjectElement.prim__y a

