module Web.Raw.SVGGraphicsElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DOMMatrix
import Web.Types.DOMRect
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
import Web.Types.SVGAnimatedTransformList
import Web.Types.SVGBoundingBoxOptions
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.transform"
prim__transform : SVGGraphicsElement -> PrimIO SVGAnimatedTransformList


export
%foreign "browser:lambda:(x,a)=>x.getBBox(a)"
prim__getBBox :
     SVGGraphicsElement
  -> UndefOr SVGBoundingBoxOptions
  -> PrimIO DOMRect


export
%foreign "browser:lambda:x=>x.getCTM()"
prim__getCTM : SVGGraphicsElement -> PrimIO (Nullable DOMMatrix)


export
%foreign "browser:lambda:x=>x.getScreenCTM()"
prim__getScreenCTM : SVGGraphicsElement -> PrimIO (Nullable DOMMatrix)


export
transform :
     {auto _ : Cast t1 SVGGraphicsElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedTransformList
transform a = primJS $ SVGGraphicsElement.prim__transform (cast a)


export
getBBox' :
     {auto _ : Cast t1 SVGGraphicsElement}
  -> {auto _ : Cast t2 SVGBoundingBoxOptions}
  -> (obj : t1)
  -> (options : Optional t2)
  -> JSIO DOMRect
getBBox' a b = primJS $ SVGGraphicsElement.prim__getBBox (cast a) (optUp b)

export
getBBox : {auto _ : Cast t1 SVGGraphicsElement} -> (obj : t1) -> JSIO DOMRect
getBBox a = primJS $ SVGGraphicsElement.prim__getBBox (cast a) undef


export
getCTM :
     {auto _ : Cast t1 SVGGraphicsElement}
  -> (obj : t1)
  -> JSIO (Maybe DOMMatrix)
getCTM a = tryJS "SVGGraphicsElement.getCTM" $
  SVGGraphicsElement.prim__getCTM (cast a)


export
getScreenCTM :
     {auto _ : Cast t1 SVGGraphicsElement}
  -> (obj : t1)
  -> JSIO (Maybe DOMMatrix)
getScreenCTM a = tryJS "SVGGraphicsElement.getScreenCTM" $
  SVGGraphicsElement.prim__getScreenCTM (cast a)
