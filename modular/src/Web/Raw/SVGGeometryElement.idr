module Web.Raw.SVGGeometryElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMPoint
import Web.Types.DOMPointInit
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
import Web.Types.SVGAnimatedNumber
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGeometryElement
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.pathLength"
prim__pathLength : SVGGeometryElement -> PrimIO SVGAnimatedNumber


export
%foreign "browser:lambda:(x,a)=>x.getPointAtLength(a)"
prim__getPointAtLength : SVGGeometryElement -> Double -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.getTotalLength()"
prim__getTotalLength : SVGGeometryElement -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.isPointInFill(a)"
prim__isPointInFill :
     SVGGeometryElement
  -> UndefOr DOMPointInit
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.isPointInStroke(a)"
prim__isPointInStroke :
     SVGGeometryElement
  -> UndefOr DOMPointInit
  -> PrimIO Boolean


export
pathLength :
     {auto _ : Cast t1 SVGGeometryElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedNumber
pathLength a = primJS $ SVGGeometryElement.prim__pathLength (cast a)


export
getPointAtLength :
     {auto _ : Cast t1 SVGGeometryElement}
  -> (obj : t1)
  -> (distance : Double)
  -> JSIO DOMPoint
getPointAtLength a b = primJS $
  SVGGeometryElement.prim__getPointAtLength (cast a) b


export
getTotalLength :
     {auto _ : Cast t1 SVGGeometryElement}
  -> (obj : t1)
  -> JSIO Double
getTotalLength a = primJS $ SVGGeometryElement.prim__getTotalLength (cast a)


export
isPointInFill' :
     {auto _ : Cast t1 SVGGeometryElement}
  -> {auto _ : Cast t2 DOMPointInit}
  -> (obj : t1)
  -> (point : Optional t2)
  -> JSIO Bool
isPointInFill' a b = tryJS "SVGGeometryElement.isPointInFill'" $
  SVGGeometryElement.prim__isPointInFill (cast a) (optUp b)

export
isPointInFill : {auto _ : Cast t1 SVGGeometryElement} -> (obj : t1) -> JSIO Bool
isPointInFill a = tryJS "SVGGeometryElement.isPointInFill" $
  SVGGeometryElement.prim__isPointInFill (cast a) undef


export
isPointInStroke' :
     {auto _ : Cast t1 SVGGeometryElement}
  -> {auto _ : Cast t2 DOMPointInit}
  -> (obj : t1)
  -> (point : Optional t2)
  -> JSIO Bool
isPointInStroke' a b = tryJS "SVGGeometryElement.isPointInStroke'" $
  SVGGeometryElement.prim__isPointInStroke (cast a) (optUp b)

export
isPointInStroke :
     {auto _ : Cast t1 SVGGeometryElement}
  -> (obj : t1)
  -> JSIO Bool
isPointInStroke a = tryJS "SVGGeometryElement.isPointInStroke" $
  SVGGeometryElement.prim__isPointInStroke (cast a) undef

