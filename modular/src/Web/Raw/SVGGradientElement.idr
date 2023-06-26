module Web.Raw.SVGGradientElement

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
import Web.Types.SVGAnimatedTransformList
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGradientElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
SVG_SPREADMETHOD_PAD : Bits16
SVG_SPREADMETHOD_PAD = 1


export
SVG_SPREADMETHOD_REFLECT : Bits16
SVG_SPREADMETHOD_REFLECT = 2


export
SVG_SPREADMETHOD_REPEAT : Bits16
SVG_SPREADMETHOD_REPEAT = 3


export
SVG_SPREADMETHOD_UNKNOWN : Bits16
SVG_SPREADMETHOD_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.gradientTransform"
prim__gradientTransform : SVGGradientElement -> PrimIO SVGAnimatedTransformList


export
%foreign "browser:lambda:x=>x.gradientUnits"
prim__gradientUnits : SVGGradientElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.spreadMethod"
prim__spreadMethod : SVGGradientElement -> PrimIO SVGAnimatedEnumeration


export
gradientTransform :
     {auto _ : Cast t1 SVGGradientElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedTransformList
gradientTransform a = primJS $
  SVGGradientElement.prim__gradientTransform (cast a)


export
gradientUnits :
     {auto _ : Cast t1 SVGGradientElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedEnumeration
gradientUnits a = primJS $ SVGGradientElement.prim__gradientUnits (cast a)


export
spreadMethod :
     {auto _ : Cast t1 SVGGradientElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedEnumeration
spreadMethod a = primJS $ SVGGradientElement.prim__spreadMethod (cast a)

