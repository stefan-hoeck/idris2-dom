module Web.Raw.SVGSVGElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMMatrix
import Web.Types.DOMMatrix2DInit
import Web.Types.DOMPoint
import Web.Types.DOMPointReadOnly
import Web.Types.DOMRect
import Web.Types.DOMRectReadOnly
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NodeList
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGAngle
import Web.Types.SVGAnimatedLength
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGFitToViewBox
import Web.Types.SVGGraphicsElement
import Web.Types.SVGLength
import Web.Types.SVGNumber
import Web.Types.SVGSVGElement
import Web.Types.SVGTests
import Web.Types.SVGTransform
import Web.Types.Slottable
import Web.Types.WindowEventHandlers


%default total


export
%foreign "browser:lambda:x=>x.currentScale"
prim__currentScale : SVGSVGElement -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.currentScale = v}"
prim__setCurrentScale : SVGSVGElement -> Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.currentTranslate"
prim__currentTranslate : SVGSVGElement -> PrimIO DOMPointReadOnly


export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGSVGElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGSVGElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGSVGElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGSVGElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:(x,a,b)=>x.checkEnclosure(a,b)"
prim__checkEnclosure :
     SVGSVGElement
  -> SVGElement
  -> DOMRectReadOnly
  -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a,b)=>x.checkIntersection(a,b)"
prim__checkIntersection :
     SVGSVGElement
  -> SVGElement
  -> DOMRectReadOnly
  -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.createSVGAngle()"
prim__createSVGAngle : SVGSVGElement -> PrimIO SVGAngle


export
%foreign "browser:lambda:x=>x.createSVGLength()"
prim__createSVGLength : SVGSVGElement -> PrimIO SVGLength


export
%foreign "browser:lambda:x=>x.createSVGMatrix()"
prim__createSVGMatrix : SVGSVGElement -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.createSVGNumber()"
prim__createSVGNumber : SVGSVGElement -> PrimIO SVGNumber


export
%foreign "browser:lambda:x=>x.createSVGPoint()"
prim__createSVGPoint : SVGSVGElement -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.createSVGRect()"
prim__createSVGRect : SVGSVGElement -> PrimIO DOMRect


export
%foreign "browser:lambda:(x,a)=>x.createSVGTransformFromMatrix(a)"
prim__createSVGTransformFromMatrix :
     SVGSVGElement
  -> UndefOr DOMMatrix2DInit
  -> PrimIO SVGTransform


export
%foreign "browser:lambda:x=>x.createSVGTransform()"
prim__createSVGTransform : SVGSVGElement -> PrimIO SVGTransform


export
%foreign "browser:lambda:x=>x.deselectAll()"
prim__deselectAll : SVGSVGElement -> PrimIO ()


export
%foreign "browser:lambda:x=>x.forceRedraw()"
prim__forceRedraw : SVGSVGElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.getElementById(a)"
prim__getElementById : SVGSVGElement -> String -> PrimIO Element


export
%foreign "browser:lambda:(x,a,b)=>x.getEnclosureList(a,b)"
prim__getEnclosureList :
     SVGSVGElement
  -> DOMRectReadOnly
  -> Nullable SVGElement
  -> PrimIO NodeList


export
%foreign "browser:lambda:(x,a,b)=>x.getIntersectionList(a,b)"
prim__getIntersectionList :
     SVGSVGElement
  -> DOMRectReadOnly
  -> Nullable SVGElement
  -> PrimIO NodeList


export
%foreign "browser:lambda:(x,a)=>x.suspendRedraw(a)"
prim__suspendRedraw : SVGSVGElement -> Bits32 -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.unsuspendRedrawAll()"
prim__unsuspendRedrawAll : SVGSVGElement -> PrimIO ()


export
%foreign "browser:lambda:(x,a)=>x.unsuspendRedraw(a)"
prim__unsuspendRedraw : SVGSVGElement -> Bits32 -> PrimIO ()


export
currentScale : SVGSVGElement -> Attribute True Prelude.id Double
currentScale v = fromPrim
                   "SVGSVGElement.getcurrentScale"
                   prim__currentScale
                   prim__setCurrentScale
                   v


export
currentTranslate : (obj : SVGSVGElement) -> JSIO DOMPointReadOnly
currentTranslate a = primJS $ SVGSVGElement.prim__currentTranslate a


export
height : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGSVGElement.prim__height a


export
width : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGSVGElement.prim__width a


export
x : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGSVGElement.prim__x a


export
y : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGSVGElement.prim__y a


export
checkEnclosure :
     {auto _ : Cast t2 SVGElement}
  -> {auto _ : Cast t3 DOMRectReadOnly}
  -> (obj : SVGSVGElement)
  -> (element : t2)
  -> (rect : t3)
  -> JSIO Bool
checkEnclosure a b c = tryJS "SVGSVGElement.checkEnclosure" $
  SVGSVGElement.prim__checkEnclosure a (cast b) (cast c)


export
checkIntersection :
     {auto _ : Cast t2 SVGElement}
  -> {auto _ : Cast t3 DOMRectReadOnly}
  -> (obj : SVGSVGElement)
  -> (element : t2)
  -> (rect : t3)
  -> JSIO Bool
checkIntersection a b c = tryJS "SVGSVGElement.checkIntersection" $
  SVGSVGElement.prim__checkIntersection a (cast b) (cast c)


export
createSVGAngle : (obj : SVGSVGElement) -> JSIO SVGAngle
createSVGAngle a = primJS $ SVGSVGElement.prim__createSVGAngle a


export
createSVGLength : (obj : SVGSVGElement) -> JSIO SVGLength
createSVGLength a = primJS $ SVGSVGElement.prim__createSVGLength a


export
createSVGMatrix : (obj : SVGSVGElement) -> JSIO DOMMatrix
createSVGMatrix a = primJS $ SVGSVGElement.prim__createSVGMatrix a


export
createSVGNumber : (obj : SVGSVGElement) -> JSIO SVGNumber
createSVGNumber a = primJS $ SVGSVGElement.prim__createSVGNumber a


export
createSVGPoint : (obj : SVGSVGElement) -> JSIO DOMPoint
createSVGPoint a = primJS $ SVGSVGElement.prim__createSVGPoint a


export
createSVGRect : (obj : SVGSVGElement) -> JSIO DOMRect
createSVGRect a = primJS $ SVGSVGElement.prim__createSVGRect a


export
createSVGTransformFromMatrix' :
     {auto _ : Cast t2 DOMMatrix2DInit}
  -> (obj : SVGSVGElement)
  -> (matrix : Optional t2)
  -> JSIO SVGTransform
createSVGTransformFromMatrix' a b = primJS $
  SVGSVGElement.prim__createSVGTransformFromMatrix a (optUp b)

export
createSVGTransformFromMatrix : (obj : SVGSVGElement) -> JSIO SVGTransform
createSVGTransformFromMatrix a = primJS $
  SVGSVGElement.prim__createSVGTransformFromMatrix a undef


export
createSVGTransform : (obj : SVGSVGElement) -> JSIO SVGTransform
createSVGTransform a = primJS $ SVGSVGElement.prim__createSVGTransform a


export
deselectAll : (obj : SVGSVGElement) -> JSIO ()
deselectAll a = primJS $ SVGSVGElement.prim__deselectAll a


export
forceRedraw : (obj : SVGSVGElement) -> JSIO ()
forceRedraw a = primJS $ SVGSVGElement.prim__forceRedraw a


export
getElementById : (obj : SVGSVGElement) -> (elementId : String) -> JSIO Element
getElementById a b = primJS $ SVGSVGElement.prim__getElementById a b


export
getEnclosureList :
     {auto _ : Cast t2 DOMRectReadOnly}
  -> {auto _ : Cast t3 SVGElement}
  -> (obj : SVGSVGElement)
  -> (rect : t2)
  -> (referenceElement : Maybe t3)
  -> JSIO NodeList
getEnclosureList a b c = primJS $
  SVGSVGElement.prim__getEnclosureList a (cast b) (mayUp c)


export
getIntersectionList :
     {auto _ : Cast t2 DOMRectReadOnly}
  -> {auto _ : Cast t3 SVGElement}
  -> (obj : SVGSVGElement)
  -> (rect : t2)
  -> (referenceElement : Maybe t3)
  -> JSIO NodeList
getIntersectionList a b c = primJS $
  SVGSVGElement.prim__getIntersectionList a (cast b) (mayUp c)


export
suspendRedraw :
     (obj : SVGSVGElement)
  -> (maxWaitMilliseconds : Bits32)
  -> JSIO Bits32
suspendRedraw a b = primJS $ SVGSVGElement.prim__suspendRedraw a b


export
unsuspendRedrawAll : (obj : SVGSVGElement) -> JSIO ()
unsuspendRedrawAll a = primJS $ SVGSVGElement.prim__unsuspendRedrawAll a


export
unsuspendRedraw : (obj : SVGSVGElement) -> (suspendHandleID : Bits32) -> JSIO ()
unsuspendRedraw a b = primJS $ SVGSVGElement.prim__unsuspendRedraw a b
