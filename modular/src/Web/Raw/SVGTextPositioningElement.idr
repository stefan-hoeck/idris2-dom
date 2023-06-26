module Web.Raw.SVGTextPositioningElement

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
import Web.Types.SVGAnimatedLengthList
import Web.Types.SVGAnimatedNumberList
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGTextContentElement
import Web.Types.SVGTextPositioningElement
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.dx"
prim__dx : SVGTextPositioningElement -> PrimIO SVGAnimatedLengthList


export
%foreign "browser:lambda:x=>x.dy"
prim__dy : SVGTextPositioningElement -> PrimIO SVGAnimatedLengthList


export
%foreign "browser:lambda:x=>x.rotate"
prim__rotate : SVGTextPositioningElement -> PrimIO SVGAnimatedNumberList


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGTextPositioningElement -> PrimIO SVGAnimatedLengthList


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGTextPositioningElement -> PrimIO SVGAnimatedLengthList


export
dx :
     {auto _ : Cast t1 SVGTextPositioningElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedLengthList
dx a = primJS $ SVGTextPositioningElement.prim__dx (cast a)


export
dy :
     {auto _ : Cast t1 SVGTextPositioningElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedLengthList
dy a = primJS $ SVGTextPositioningElement.prim__dy (cast a)


export
rotate :
     {auto _ : Cast t1 SVGTextPositioningElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedNumberList
rotate a = primJS $ SVGTextPositioningElement.prim__rotate (cast a)


export
x :
     {auto _ : Cast t1 SVGTextPositioningElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedLengthList
x a = primJS $ SVGTextPositioningElement.prim__x (cast a)


export
y :
     {auto _ : Cast t1 SVGTextPositioningElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedLengthList
y a = primJS $ SVGTextPositioningElement.prim__y (cast a)

