module Web.Internal.SvgPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------


namespace SVGAElement
  
  export
  %foreign "browser:lambda:x=>x.download"
  prim__download : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : SVGAElement -> PrimIO DOMTokenList

  
  export
  %foreign "browser:lambda:x=>x.target"
  prim__target : SVGAElement -> PrimIO SVGAnimatedString

  
  export
  %foreign "browser:lambda:x=>x.text"
  prim__text : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : SVGAElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : SVGAElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : SVGAElement -> String -> PrimIO ()




namespace SVGAngle
  
  export
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : SVGAngle -> PrimIO Bits16

  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : SVGAngle -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : SVGAngle -> Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : SVGAngle -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : SVGAngle -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : SVGAngle -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : SVGAngle -> Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:(x,a)=>x.convertToSpecifiedUnits(a)"
  prim__convertToSpecifiedUnits : SVGAngle -> Bits16 -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.newValueSpecifiedUnits(a,b)"
  prim__newValueSpecifiedUnits : SVGAngle -> Bits16 -> Double -> PrimIO ()



namespace SVGAnimatedAngle
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedAngle -> PrimIO SVGAngle

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedAngle -> PrimIO SVGAngle



namespace SVGAnimatedBoolean
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedBoolean -> PrimIO Boolean

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedBoolean -> PrimIO Boolean


  
  export
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : SVGAnimatedBoolean -> Boolean -> PrimIO ()




namespace SVGAnimatedEnumeration
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedEnumeration -> PrimIO Bits16

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedEnumeration -> PrimIO Bits16


  
  export
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : SVGAnimatedEnumeration -> Bits16 -> PrimIO ()




namespace SVGAnimatedInteger
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedInteger -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedInteger -> PrimIO Int32


  
  export
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : SVGAnimatedInteger -> Int32 -> PrimIO ()




namespace SVGAnimatedLength
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedLength -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedLength -> PrimIO SVGLength



namespace SVGAnimatedLengthList
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedLengthList -> PrimIO SVGLengthList

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedLengthList -> PrimIO SVGLengthList



namespace SVGAnimatedNumber
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedNumber -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedNumber -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : SVGAnimatedNumber -> Double -> PrimIO ()




namespace SVGAnimatedNumberList
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedNumberList -> PrimIO SVGNumberList

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedNumberList -> PrimIO SVGNumberList



namespace SVGAnimatedPreserveAspectRatio
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal :
       SVGAnimatedPreserveAspectRatio
    -> PrimIO SVGPreserveAspectRatio

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal :
       SVGAnimatedPreserveAspectRatio
    -> PrimIO SVGPreserveAspectRatio



namespace SVGAnimatedRect
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedRect -> PrimIO DOMRectReadOnly

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedRect -> PrimIO DOMRect



namespace SVGAnimatedString
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedString -> PrimIO String

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedString -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : SVGAnimatedString -> String -> PrimIO ()




namespace SVGAnimatedTransformList
  
  export
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : SVGAnimatedTransformList -> PrimIO SVGTransformList

  
  export
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : SVGAnimatedTransformList -> PrimIO SVGTransformList



namespace SVGCircleElement
  
  export
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : SVGCircleElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : SVGCircleElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.r"
  prim__r : SVGCircleElement -> PrimIO SVGAnimatedLength





namespace SVGElement
  
  export
  %foreign "browser:lambda:x=>x.className"
  prim__className : SVGElement -> PrimIO SVGAnimatedString

  
  export
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : SVGElement -> PrimIO (Nullable SVGSVGElement)

  
  export
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : SVGElement -> PrimIO (Nullable SVGElement)



namespace SVGEllipseElement
  
  export
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : SVGEllipseElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : SVGEllipseElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : SVGEllipseElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : SVGEllipseElement -> PrimIO SVGAnimatedLength



namespace SVGForeignObjectElement
  
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




namespace SVGGeometryElement
  
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



namespace SVGGradientElement
  
  export
  %foreign "browser:lambda:x=>x.gradientTransform"
  prim__gradientTransform :
       SVGGradientElement
    -> PrimIO SVGAnimatedTransformList

  
  export
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : SVGGradientElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : SVGGradientElement -> PrimIO SVGAnimatedEnumeration



namespace SVGGraphicsElement
  
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



namespace SVGImageElement
  
  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : SVGImageElement -> PrimIO (Nullable String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : SVGImageElement -> Nullable String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : SVGImageElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio :
       SVGImageElement
    -> PrimIO SVGAnimatedPreserveAspectRatio

  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : SVGImageElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : SVGImageElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : SVGImageElement -> PrimIO SVGAnimatedLength



namespace SVGLength
  
  export
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : SVGLength -> PrimIO Bits16

  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : SVGLength -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : SVGLength -> Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : SVGLength -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : SVGLength -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : SVGLength -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : SVGLength -> Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:(x,a)=>x.convertToSpecifiedUnits(a)"
  prim__convertToSpecifiedUnits : SVGLength -> Bits16 -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.newValueSpecifiedUnits(a,b)"
  prim__newValueSpecifiedUnits : SVGLength -> Bits16 -> Double -> PrimIO ()



namespace SVGLengthList
  
  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : SVGLengthList -> Bits32 -> SVGLength -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SVGLengthList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : SVGLengthList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.appendItem(a)"
  prim__appendItem : SVGLengthList -> SVGLength -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : SVGLengthList -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : SVGLengthList -> Bits32 -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:(x,a)=>x.initialize(a)"
  prim__initialize : SVGLengthList -> SVGLength -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
  prim__insertItemBefore :
       SVGLengthList
    -> SVGLength
    -> Bits32
    -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeItem(a)"
  prim__removeItem : SVGLengthList -> Bits32 -> PrimIO SVGLength

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
  prim__replaceItem : SVGLengthList -> SVGLength -> Bits32 -> PrimIO SVGLength



namespace SVGLineElement
  
  export
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : SVGLineElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : SVGLineElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : SVGLineElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : SVGLineElement -> PrimIO SVGAnimatedLength



namespace SVGLinearGradientElement
  
  export
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : SVGLinearGradientElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : SVGLinearGradientElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : SVGLinearGradientElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : SVGLinearGradientElement -> PrimIO SVGAnimatedLength



namespace SVGMarkerElement
  
  export
  %foreign "browser:lambda:x=>x.markerHeight"
  prim__markerHeight : SVGMarkerElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : SVGMarkerElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : SVGMarkerElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : SVGMarkerElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.orient = v}"
  prim__setOrient : SVGMarkerElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : SVGMarkerElement -> PrimIO SVGAnimatedAngle

  
  export
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : SVGMarkerElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : SVGMarkerElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : SVGMarkerElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:(x,a)=>x.setOrientToAngle(a)"
  prim__setOrientToAngle : SVGMarkerElement -> SVGAngle -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.setOrientToAuto()"
  prim__setOrientToAuto : SVGMarkerElement -> PrimIO ()




namespace SVGNumber
  
  export
  %foreign "browser:lambda:x=>x.value"
  prim__value : SVGNumber -> PrimIO Double


  
  export
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : SVGNumber -> Double -> PrimIO ()




namespace SVGNumberList
  
  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : SVGNumberList -> Bits32 -> SVGNumber -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SVGNumberList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : SVGNumberList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.appendItem(a)"
  prim__appendItem : SVGNumberList -> SVGNumber -> PrimIO SVGNumber

  
  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : SVGNumberList -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : SVGNumberList -> Bits32 -> PrimIO SVGNumber

  
  export
  %foreign "browser:lambda:(x,a)=>x.initialize(a)"
  prim__initialize : SVGNumberList -> SVGNumber -> PrimIO SVGNumber

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
  prim__insertItemBefore :
       SVGNumberList
    -> SVGNumber
    -> Bits32
    -> PrimIO SVGNumber

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeItem(a)"
  prim__removeItem : SVGNumberList -> Bits32 -> PrimIO SVGNumber

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
  prim__replaceItem : SVGNumberList -> SVGNumber -> Bits32 -> PrimIO SVGNumber




namespace SVGPatternElement
  
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



namespace SVGPointList
  
  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : SVGPointList -> Bits32 -> DOMPoint -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SVGPointList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : SVGPointList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.appendItem(a)"
  prim__appendItem : SVGPointList -> DOMPoint -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : SVGPointList -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : SVGPointList -> Bits32 -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a)=>x.initialize(a)"
  prim__initialize : SVGPointList -> DOMPoint -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
  prim__insertItemBefore : SVGPointList -> DOMPoint -> Bits32 -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeItem(a)"
  prim__removeItem : SVGPointList -> Bits32 -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
  prim__replaceItem : SVGPointList -> DOMPoint -> Bits32 -> PrimIO DOMPoint





namespace SVGPreserveAspectRatio
  
  export
  %foreign "browser:lambda:x=>x.align"
  prim__align : SVGPreserveAspectRatio -> PrimIO Bits16


  
  export
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : SVGPreserveAspectRatio -> Bits16 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : SVGPreserveAspectRatio -> PrimIO Bits16


  
  export
  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice = v}"
  prim__setMeetOrSlice : SVGPreserveAspectRatio -> Bits16 -> PrimIO ()




namespace SVGRadialGradientElement
  
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



namespace SVGRectElement
  
  export
  %foreign "browser:lambda:x=>x.height"
  prim__height : SVGRectElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : SVGRectElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : SVGRectElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.width"
  prim__width : SVGRectElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.x"
  prim__x : SVGRectElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:x=>x.y"
  prim__y : SVGRectElement -> PrimIO SVGAnimatedLength



namespace SVGSVGElement
  
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



namespace SVGScriptElement
  
  export
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : SVGScriptElement -> PrimIO (Nullable String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : SVGScriptElement -> Nullable String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : SVGScriptElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : SVGScriptElement -> String -> PrimIO ()




namespace SVGStopElement
  
  export
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : SVGStopElement -> PrimIO SVGAnimatedNumber



namespace SVGStringList
  
  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : SVGStringList -> Bits32 -> String -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SVGStringList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : SVGStringList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.appendItem(a)"
  prim__appendItem : SVGStringList -> String -> PrimIO String

  
  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : SVGStringList -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : SVGStringList -> Bits32 -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,a)=>x.initialize(a)"
  prim__initialize : SVGStringList -> String -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
  prim__insertItemBefore : SVGStringList -> String -> Bits32 -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeItem(a)"
  prim__removeItem : SVGStringList -> Bits32 -> PrimIO String

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
  prim__replaceItem : SVGStringList -> String -> Bits32 -> PrimIO String



namespace SVGStyleElement
  
  export
  %foreign "browser:lambda:x=>x.media"
  prim__media : SVGStyleElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : SVGStyleElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.title"
  prim__title : SVGStyleElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : SVGStyleElement -> String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : SVGStyleElement -> PrimIO String


  
  export
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : SVGStyleElement -> String -> PrimIO ()







namespace SVGTextContentElement
  
  export
  %foreign "browser:lambda:x=>x.lengthAdjust"
  prim__lengthAdjust : SVGTextContentElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : SVGTextContentElement -> PrimIO SVGAnimatedLength

  
  export
  %foreign "browser:lambda:(x,a)=>x.getCharNumAtPosition(a)"
  prim__getCharNumAtPosition :
       SVGTextContentElement
    -> UndefOr DOMPointInit
    -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.getComputedTextLength()"
  prim__getComputedTextLength : SVGTextContentElement -> PrimIO Double

  
  export
  %foreign "browser:lambda:(x,a)=>x.getEndPositionOfChar(a)"
  prim__getEndPositionOfChar :
       SVGTextContentElement
    -> Bits32
    -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a)=>x.getExtentOfChar(a)"
  prim__getExtentOfChar : SVGTextContentElement -> Bits32 -> PrimIO DOMRect

  
  export
  %foreign "browser:lambda:x=>x.getNumberOfChars()"
  prim__getNumberOfChars : SVGTextContentElement -> PrimIO Int32

  
  export
  %foreign "browser:lambda:(x,a)=>x.getRotationOfChar(a)"
  prim__getRotationOfChar : SVGTextContentElement -> Bits32 -> PrimIO Double

  
  export
  %foreign "browser:lambda:(x,a)=>x.getStartPositionOfChar(a)"
  prim__getStartPositionOfChar :
       SVGTextContentElement
    -> Bits32
    -> PrimIO DOMPoint

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.getSubStringLength(a,b)"
  prim__getSubStringLength :
       SVGTextContentElement
    -> Bits32
    -> Bits32
    -> PrimIO Double

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.selectSubString(a,b)"
  prim__selectSubString : SVGTextContentElement -> Bits32 -> Bits32 -> PrimIO ()




namespace SVGTextPathElement
  
  export
  %foreign "browser:lambda:x=>x.method"
  prim__method : SVGTextPathElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : SVGTextPathElement -> PrimIO SVGAnimatedEnumeration

  
  export
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : SVGTextPathElement -> PrimIO SVGAnimatedLength



namespace SVGTextPositioningElement
  
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




namespace SVGTransform
  
  export
  %foreign "browser:lambda:x=>x.angle"
  prim__angle : SVGTransform -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : SVGTransform -> PrimIO DOMMatrix

  
  export
  %foreign "browser:lambda:x=>x.type"
  prim__type : SVGTransform -> PrimIO Bits16

  
  export
  %foreign "browser:lambda:(x,a)=>x.setMatrix(a)"
  prim__setMatrix : SVGTransform -> UndefOr DOMMatrix2DInit -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b,c)=>x.setRotate(a,b,c)"
  prim__setRotate : SVGTransform -> Double -> Double -> Double -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setScale(a,b)"
  prim__setScale : SVGTransform -> Double -> Double -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.setSkewX(a)"
  prim__setSkewX : SVGTransform -> Double -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a)=>x.setSkewY(a)"
  prim__setSkewY : SVGTransform -> Double -> PrimIO ()

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.setTranslate(a,b)"
  prim__setTranslate : SVGTransform -> Double -> Double -> PrimIO ()



namespace SVGTransformList
  
  export
  %foreign "browser:lambda:(o,x,v)=>o[x] = v"
  prim__set : SVGTransformList -> Bits32 -> SVGTransform -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.length"
  prim__length : SVGTransformList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : SVGTransformList -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:(x,a)=>x.appendItem(a)"
  prim__appendItem : SVGTransformList -> SVGTransform -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:x=>x.clear()"
  prim__clear : SVGTransformList -> PrimIO ()

  
  export
  %foreign "browser:lambda:x=>x.consolidate()"
  prim__consolidate : SVGTransformList -> PrimIO (Nullable SVGTransform)

  
  export
  %foreign "browser:lambda:(x,a)=>x.createSVGTransformFromMatrix(a)"
  prim__createSVGTransformFromMatrix :
       SVGTransformList
    -> UndefOr DOMMatrix2DInit
    -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:(x,a)=>x.getItem(a)"
  prim__getItem : SVGTransformList -> Bits32 -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:(x,a)=>x.initialize(a)"
  prim__initialize : SVGTransformList -> SVGTransform -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.insertItemBefore(a,b)"
  prim__insertItemBefore :
       SVGTransformList
    -> SVGTransform
    -> Bits32
    -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:(x,a)=>x.removeItem(a)"
  prim__removeItem : SVGTransformList -> Bits32 -> PrimIO SVGTransform

  
  export
  %foreign "browser:lambda:(x,a,b)=>x.replaceItem(a,b)"
  prim__replaceItem :
       SVGTransformList
    -> SVGTransform
    -> Bits32
    -> PrimIO SVGTransform




namespace SVGUseElement
  
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





namespace ShadowAnimation
  
  export
  %foreign "browser:lambda:(a,b)=> new ShadowAnimation(a,b)"
  prim__new : Animation -> Animatable -> PrimIO ShadowAnimation

  
  export
  %foreign "browser:lambda:x=>x.sourceAnimation"
  prim__sourceAnimation : ShadowAnimation -> PrimIO Animation




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GetSVGDocument
  
  export
  %foreign "browser:lambda:x=>x.getSVGDocument()"
  prim__getSVGDocument : GetSVGDocument -> PrimIO Document



namespace SVGAnimatedPoints
  
  export
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : SVGAnimatedPoints -> PrimIO SVGPointList

  
  export
  %foreign "browser:lambda:x=>x.points"
  prim__points : SVGAnimatedPoints -> PrimIO SVGPointList



namespace SVGElementInstance
  
  export
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement :
       SVGElementInstance
    -> PrimIO (Nullable SVGElement)

  
  export
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement :
       SVGElementInstance
    -> PrimIO (Nullable SVGUseElement)



namespace SVGFitToViewBox
  
  export
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio :
       SVGFitToViewBox
    -> PrimIO SVGAnimatedPreserveAspectRatio

  
  export
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : SVGFitToViewBox -> PrimIO SVGAnimatedRect



namespace SVGTests
  
  export
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : SVGTests -> PrimIO SVGStringList

  
  export
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : SVGTests -> PrimIO SVGStringList



namespace SVGURIReference
  
  export
  %foreign "browser:lambda:x=>x.href"
  prim__href : SVGURIReference -> PrimIO SVGAnimatedString




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> ({fill: a,stroke: b,markers: c,clipped: d})"
  prim__new :
       UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> PrimIO SVGBoundingBoxOptions

  
  export
  %foreign "browser:lambda:x=>x.clipped"
  prim__clipped : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.clipped = v}"
  prim__setClipped : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.markers = v}"
  prim__setMarkers : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : SVGBoundingBoxOptions -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.stroke = v}"
  prim__setStroke : SVGBoundingBoxOptions -> UndefOr Boolean -> PrimIO ()




