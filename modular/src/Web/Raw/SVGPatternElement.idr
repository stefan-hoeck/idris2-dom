module Web.Raw.SVGPatternElement

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
import Web.Types.SVGAnimatedEnumeration
import Web.Types.SVGAnimatedLength
import Web.Types.SVGAnimatedTransformList
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGFitToViewBox
import Web.Types.SVGPatternElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGPatternElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.patternContentUnits"
prim__patternContentUnits : SVGPatternElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.patternTransform"
prim__patternTransform : SVGPatternElement -> PrimIO SVGAnimatedTransformList


export
%foreign "browser:lambda:x=>x.patternUnits"
prim__patternUnits : SVGPatternElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGPatternElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGPatternElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGPatternElement -> PrimIO SVGAnimatedLength


export
height : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGPatternElement.prim__height a


export
patternContentUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
patternContentUnits a = primJS $ SVGPatternElement.prim__patternContentUnits a


export
patternTransform : (obj : SVGPatternElement) -> JSIO SVGAnimatedTransformList
patternTransform a = primJS $ SVGPatternElement.prim__patternTransform a


export
patternUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
patternUnits a = primJS $ SVGPatternElement.prim__patternUnits a


export
width : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGPatternElement.prim__width a


export
x : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGPatternElement.prim__x a


export
y : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGPatternElement.prim__y a

