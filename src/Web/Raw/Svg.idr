module Web.Raw.Svg

import JS
import Web.Internal.SvgPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------


namespace SVGAElement
  
  export
  download : SVGAElement -> Attribute True Prelude.id String
  download v = fromPrim
                 "SVGAElement.getdownload"
                 prim__download
                 prim__setDownload
                 v

  
  export
  hreflang : SVGAElement -> Attribute True Prelude.id String
  hreflang v = fromPrim
                 "SVGAElement.gethreflang"
                 prim__hreflang
                 prim__setHreflang
                 v

  
  export
  ping : SVGAElement -> Attribute True Prelude.id String
  ping v = fromPrim "SVGAElement.getping" prim__ping prim__setPing v

  
  export
  referrerPolicy : SVGAElement -> Attribute True Prelude.id String
  referrerPolicy v = fromPrim
                       "SVGAElement.getreferrerPolicy"
                       prim__referrerPolicy
                       prim__setReferrerPolicy
                       v

  
  export
  rel : SVGAElement -> Attribute True Prelude.id String
  rel v = fromPrim "SVGAElement.getrel" prim__rel prim__setRel v

  
  export
  relList : (obj : SVGAElement) -> JSIO DOMTokenList
  relList a = primJS $ SVGAElement.prim__relList a

  
  export
  target : (obj : SVGAElement) -> JSIO SVGAnimatedString
  target a = primJS $ SVGAElement.prim__target a

  
  export
  text : SVGAElement -> Attribute True Prelude.id String
  text v = fromPrim "SVGAElement.gettext" prim__text prim__setText v

  
  export
  type : SVGAElement -> Attribute True Prelude.id String
  type v = fromPrim "SVGAElement.gettype" prim__type prim__setType v



namespace SVGAngle
  
  export
  SVG_ANGLETYPE_DEG : Bits16
  SVG_ANGLETYPE_DEG = 2

  
  export
  SVG_ANGLETYPE_GRAD : Bits16
  SVG_ANGLETYPE_GRAD = 4

  
  export
  SVG_ANGLETYPE_RAD : Bits16
  SVG_ANGLETYPE_RAD = 3

  
  export
  SVG_ANGLETYPE_UNKNOWN : Bits16
  SVG_ANGLETYPE_UNKNOWN = 0

  
  export
  SVG_ANGLETYPE_UNSPECIFIED : Bits16
  SVG_ANGLETYPE_UNSPECIFIED = 1

  
  export
  unitType : (obj : SVGAngle) -> JSIO Bits16
  unitType a = primJS $ SVGAngle.prim__unitType a

  
  export
  value : SVGAngle -> Attribute True Prelude.id Double
  value v = fromPrim "SVGAngle.getvalue" prim__value prim__setValue v

  
  export
  valueAsString : SVGAngle -> Attribute True Prelude.id String
  valueAsString v = fromPrim
                      "SVGAngle.getvalueAsString"
                      prim__valueAsString
                      prim__setValueAsString
                      v

  
  export
  valueInSpecifiedUnits : SVGAngle -> Attribute True Prelude.id Double
  valueInSpecifiedUnits v = fromPrim
                              "SVGAngle.getvalueInSpecifiedUnits"
                              prim__valueInSpecifiedUnits
                              prim__setValueInSpecifiedUnits
                              v

  
  export
  convertToSpecifiedUnits : (obj : SVGAngle) -> (unitType : Bits16) -> JSIO ()
  convertToSpecifiedUnits a b = primJS $
    SVGAngle.prim__convertToSpecifiedUnits a b

  
  export
  newValueSpecifiedUnits :
       (obj : SVGAngle)
    -> (unitType : Bits16)
    -> (valueInSpecifiedUnits : Double)
    -> JSIO ()
  newValueSpecifiedUnits a b c = primJS $
    SVGAngle.prim__newValueSpecifiedUnits a b c



namespace SVGAnimatedAngle
  
  export
  animVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  animVal a = primJS $ SVGAnimatedAngle.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  baseVal a = primJS $ SVGAnimatedAngle.prim__baseVal a



namespace SVGAnimatedBoolean
  
  export
  animVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
  animVal a = tryJS "SVGAnimatedBoolean.animVal" $
    SVGAnimatedBoolean.prim__animVal a

  
  export
  baseVal : SVGAnimatedBoolean -> Attribute True Prelude.id Bool
  baseVal v = fromPrim
                "SVGAnimatedBoolean.getbaseVal"
                prim__baseVal
                prim__setBaseVal
                v



namespace SVGAnimatedEnumeration
  
  export
  animVal : (obj : SVGAnimatedEnumeration) -> JSIO Bits16
  animVal a = primJS $ SVGAnimatedEnumeration.prim__animVal a

  
  export
  baseVal : SVGAnimatedEnumeration -> Attribute True Prelude.id Bits16
  baseVal v = fromPrim
                "SVGAnimatedEnumeration.getbaseVal"
                prim__baseVal
                prim__setBaseVal
                v



namespace SVGAnimatedInteger
  
  export
  animVal : (obj : SVGAnimatedInteger) -> JSIO Int32
  animVal a = primJS $ SVGAnimatedInteger.prim__animVal a

  
  export
  baseVal : SVGAnimatedInteger -> Attribute True Prelude.id Int32
  baseVal v = fromPrim
                "SVGAnimatedInteger.getbaseVal"
                prim__baseVal
                prim__setBaseVal
                v



namespace SVGAnimatedLength
  
  export
  animVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  animVal a = primJS $ SVGAnimatedLength.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  baseVal a = primJS $ SVGAnimatedLength.prim__baseVal a



namespace SVGAnimatedLengthList
  
  export
  animVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  animVal a = primJS $ SVGAnimatedLengthList.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  baseVal a = primJS $ SVGAnimatedLengthList.prim__baseVal a



namespace SVGAnimatedNumber
  
  export
  animVal : (obj : SVGAnimatedNumber) -> JSIO Double
  animVal a = primJS $ SVGAnimatedNumber.prim__animVal a

  
  export
  baseVal : SVGAnimatedNumber -> Attribute True Prelude.id Double
  baseVal v = fromPrim
                "SVGAnimatedNumber.getbaseVal"
                prim__baseVal
                prim__setBaseVal
                v



namespace SVGAnimatedNumberList
  
  export
  animVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  animVal a = primJS $ SVGAnimatedNumberList.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  baseVal a = primJS $ SVGAnimatedNumberList.prim__baseVal a



namespace SVGAnimatedPreserveAspectRatio
  
  export
  animVal :
       (obj : SVGAnimatedPreserveAspectRatio)
    -> JSIO SVGPreserveAspectRatio
  animVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__animVal a

  
  export
  baseVal :
       (obj : SVGAnimatedPreserveAspectRatio)
    -> JSIO SVGPreserveAspectRatio
  baseVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__baseVal a



namespace SVGAnimatedRect
  
  export
  animVal : (obj : SVGAnimatedRect) -> JSIO DOMRectReadOnly
  animVal a = primJS $ SVGAnimatedRect.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedRect) -> JSIO DOMRect
  baseVal a = primJS $ SVGAnimatedRect.prim__baseVal a



namespace SVGAnimatedString
  
  export
  animVal : (obj : SVGAnimatedString) -> JSIO String
  animVal a = primJS $ SVGAnimatedString.prim__animVal a

  
  export
  baseVal : SVGAnimatedString -> Attribute True Prelude.id String
  baseVal v = fromPrim
                "SVGAnimatedString.getbaseVal"
                prim__baseVal
                prim__setBaseVal
                v



namespace SVGAnimatedTransformList
  
  export
  animVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  animVal a = primJS $ SVGAnimatedTransformList.prim__animVal a

  
  export
  baseVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  baseVal a = primJS $ SVGAnimatedTransformList.prim__baseVal a



namespace SVGCircleElement
  
  export
  cx : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGCircleElement.prim__cx a

  
  export
  cy : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGCircleElement.prim__cy a

  
  export
  r : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  r a = primJS $ SVGCircleElement.prim__r a





namespace SVGElement
  
  export
  className :
       {auto _ : Cast t1 SVGElement}
    -> (obj : t1)
    -> JSIO SVGAnimatedString
  className a = primJS $ SVGElement.prim__className (cast a)

  
  export
  ownerSVGElement :
       {auto _ : Cast t1 SVGElement}
    -> (obj : t1)
    -> JSIO (Maybe SVGSVGElement)
  ownerSVGElement a = tryJS "SVGElement.ownerSVGElement" $
    SVGElement.prim__ownerSVGElement (cast a)

  
  export
  viewportElement :
       {auto _ : Cast t1 SVGElement}
    -> (obj : t1)
    -> JSIO (Maybe SVGElement)
  viewportElement a = tryJS "SVGElement.viewportElement" $
    SVGElement.prim__viewportElement (cast a)



namespace SVGEllipseElement
  
  export
  cx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGEllipseElement.prim__cx a

  
  export
  cy : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGEllipseElement.prim__cy a

  
  export
  rx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  rx a = primJS $ SVGEllipseElement.prim__rx a

  
  export
  ry : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  ry a = primJS $ SVGEllipseElement.prim__ry a



namespace SVGForeignObjectElement
  
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




namespace SVGGeometryElement
  
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
  isPointInFill :
       {auto _ : Cast t1 SVGGeometryElement}
    -> (obj : t1)
    -> JSIO Bool
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



namespace SVGGradientElement
  
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



namespace SVGGraphicsElement
  
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



namespace SVGImageElement
  
  export
  crossOrigin : SVGImageElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "SVGImageElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    v

  
  export
  height : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  height a = primJS $ SVGImageElement.prim__height a

  
  export
  preserveAspectRatio :
       (obj : SVGImageElement)
    -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a = primJS $ SVGImageElement.prim__preserveAspectRatio a

  
  export
  width : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  width a = primJS $ SVGImageElement.prim__width a

  
  export
  x : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  x a = primJS $ SVGImageElement.prim__x a

  
  export
  y : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  y a = primJS $ SVGImageElement.prim__y a



namespace SVGLength
  
  export
  SVG_LENGTHTYPE_CM : Bits16
  SVG_LENGTHTYPE_CM = 6

  
  export
  SVG_LENGTHTYPE_EMS : Bits16
  SVG_LENGTHTYPE_EMS = 3

  
  export
  SVG_LENGTHTYPE_EXS : Bits16
  SVG_LENGTHTYPE_EXS = 4

  
  export
  SVG_LENGTHTYPE_IN : Bits16
  SVG_LENGTHTYPE_IN = 8

  
  export
  SVG_LENGTHTYPE_MM : Bits16
  SVG_LENGTHTYPE_MM = 7

  
  export
  SVG_LENGTHTYPE_NUMBER : Bits16
  SVG_LENGTHTYPE_NUMBER = 1

  
  export
  SVG_LENGTHTYPE_PC : Bits16
  SVG_LENGTHTYPE_PC = 10

  
  export
  SVG_LENGTHTYPE_PERCENTAGE : Bits16
  SVG_LENGTHTYPE_PERCENTAGE = 2

  
  export
  SVG_LENGTHTYPE_PT : Bits16
  SVG_LENGTHTYPE_PT = 9

  
  export
  SVG_LENGTHTYPE_PX : Bits16
  SVG_LENGTHTYPE_PX = 5

  
  export
  SVG_LENGTHTYPE_UNKNOWN : Bits16
  SVG_LENGTHTYPE_UNKNOWN = 0

  
  export
  unitType : (obj : SVGLength) -> JSIO Bits16
  unitType a = primJS $ SVGLength.prim__unitType a

  
  export
  value : SVGLength -> Attribute True Prelude.id Double
  value v = fromPrim "SVGLength.getvalue" prim__value prim__setValue v

  
  export
  valueAsString : SVGLength -> Attribute True Prelude.id String
  valueAsString v = fromPrim
                      "SVGLength.getvalueAsString"
                      prim__valueAsString
                      prim__setValueAsString
                      v

  
  export
  valueInSpecifiedUnits : SVGLength -> Attribute True Prelude.id Double
  valueInSpecifiedUnits v = fromPrim
                              "SVGLength.getvalueInSpecifiedUnits"
                              prim__valueInSpecifiedUnits
                              prim__setValueInSpecifiedUnits
                              v

  
  export
  convertToSpecifiedUnits : (obj : SVGLength) -> (unitType : Bits16) -> JSIO ()
  convertToSpecifiedUnits a b = primJS $
    SVGLength.prim__convertToSpecifiedUnits a b

  
  export
  newValueSpecifiedUnits :
       (obj : SVGLength)
    -> (unitType : Bits16)
    -> (valueInSpecifiedUnits : Double)
    -> JSIO ()
  newValueSpecifiedUnits a b c = primJS $
    SVGLength.prim__newValueSpecifiedUnits a b c



namespace SVGLengthList
  
  export
  set :
       (obj : SVGLengthList)
    -> (index : Bits32)
    -> (newItem : SVGLength)
    -> JSIO ()
  set a b c = primJS $ SVGLengthList.prim__set a b c

  
  export
  length : (obj : SVGLengthList) -> JSIO Bits32
  length a = primJS $ SVGLengthList.prim__length a

  
  export
  numberOfItems : (obj : SVGLengthList) -> JSIO Bits32
  numberOfItems a = primJS $ SVGLengthList.prim__numberOfItems a

  
  export
  appendItem : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
  appendItem a b = primJS $ SVGLengthList.prim__appendItem a b

  
  export
  clear : (obj : SVGLengthList) -> JSIO ()
  clear a = primJS $ SVGLengthList.prim__clear a

  
  export
  getItem : (obj : SVGLengthList) -> (index : Bits32) -> JSIO SVGLength
  getItem a b = primJS $ SVGLengthList.prim__getItem a b

  
  export
  initialize : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
  initialize a b = primJS $ SVGLengthList.prim__initialize a b

  
  export
  insertItemBefore :
       (obj : SVGLengthList)
    -> (newItem : SVGLength)
    -> (index : Bits32)
    -> JSIO SVGLength
  insertItemBefore a b c = primJS $ SVGLengthList.prim__insertItemBefore a b c

  
  export
  removeItem : (obj : SVGLengthList) -> (index : Bits32) -> JSIO SVGLength
  removeItem a b = primJS $ SVGLengthList.prim__removeItem a b

  
  export
  replaceItem :
       (obj : SVGLengthList)
    -> (newItem : SVGLength)
    -> (index : Bits32)
    -> JSIO SVGLength
  replaceItem a b c = primJS $ SVGLengthList.prim__replaceItem a b c



namespace SVGLineElement
  
  export
  x1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  x1 a = primJS $ SVGLineElement.prim__x1 a

  
  export
  x2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  x2 a = primJS $ SVGLineElement.prim__x2 a

  
  export
  y1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  y1 a = primJS $ SVGLineElement.prim__y1 a

  
  export
  y2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  y2 a = primJS $ SVGLineElement.prim__y2 a



namespace SVGLinearGradientElement
  
  export
  x1 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  x1 a = primJS $ SVGLinearGradientElement.prim__x1 a

  
  export
  x2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  x2 a = primJS $ SVGLinearGradientElement.prim__x2 a

  
  export
  y1 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  y1 a = primJS $ SVGLinearGradientElement.prim__y1 a

  
  export
  y2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  y2 a = primJS $ SVGLinearGradientElement.prim__y2 a



namespace SVGMarkerElement
  
  export
  SVG_MARKERUNITS_STROKEWIDTH : Bits16
  SVG_MARKERUNITS_STROKEWIDTH = 2

  
  export
  SVG_MARKERUNITS_UNKNOWN : Bits16
  SVG_MARKERUNITS_UNKNOWN = 0

  
  export
  SVG_MARKERUNITS_USERSPACEONUSE : Bits16
  SVG_MARKERUNITS_USERSPACEONUSE = 1

  
  export
  SVG_MARKER_ORIENT_ANGLE : Bits16
  SVG_MARKER_ORIENT_ANGLE = 2

  
  export
  SVG_MARKER_ORIENT_AUTO : Bits16
  SVG_MARKER_ORIENT_AUTO = 1

  
  export
  SVG_MARKER_ORIENT_UNKNOWN : Bits16
  SVG_MARKER_ORIENT_UNKNOWN = 0

  
  export
  markerHeight : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  markerHeight a = primJS $ SVGMarkerElement.prim__markerHeight a

  
  export
  markerUnits : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  markerUnits a = primJS $ SVGMarkerElement.prim__markerUnits a

  
  export
  markerWidth : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  markerWidth a = primJS $ SVGMarkerElement.prim__markerWidth a

  
  export
  orient : SVGMarkerElement -> Attribute True Prelude.id String
  orient v = fromPrim
               "SVGMarkerElement.getorient"
               prim__orient
               prim__setOrient
               v

  
  export
  orientAngle : (obj : SVGMarkerElement) -> JSIO SVGAnimatedAngle
  orientAngle a = primJS $ SVGMarkerElement.prim__orientAngle a

  
  export
  orientType : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  orientType a = primJS $ SVGMarkerElement.prim__orientType a

  
  export
  refX : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  refX a = primJS $ SVGMarkerElement.prim__refX a

  
  export
  refY : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  refY a = primJS $ SVGMarkerElement.prim__refY a

  
  export
  setOrientToAngle : (obj : SVGMarkerElement) -> (angle : SVGAngle) -> JSIO ()
  setOrientToAngle a b = primJS $ SVGMarkerElement.prim__setOrientToAngle a b

  
  export
  setOrientToAuto : (obj : SVGMarkerElement) -> JSIO ()
  setOrientToAuto a = primJS $ SVGMarkerElement.prim__setOrientToAuto a




namespace SVGNumber
  
  export
  value : SVGNumber -> Attribute True Prelude.id Double
  value v = fromPrim "SVGNumber.getvalue" prim__value prim__setValue v



namespace SVGNumberList
  
  export
  set :
       (obj : SVGNumberList)
    -> (index : Bits32)
    -> (newItem : SVGNumber)
    -> JSIO ()
  set a b c = primJS $ SVGNumberList.prim__set a b c

  
  export
  length : (obj : SVGNumberList) -> JSIO Bits32
  length a = primJS $ SVGNumberList.prim__length a

  
  export
  numberOfItems : (obj : SVGNumberList) -> JSIO Bits32
  numberOfItems a = primJS $ SVGNumberList.prim__numberOfItems a

  
  export
  appendItem : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
  appendItem a b = primJS $ SVGNumberList.prim__appendItem a b

  
  export
  clear : (obj : SVGNumberList) -> JSIO ()
  clear a = primJS $ SVGNumberList.prim__clear a

  
  export
  getItem : (obj : SVGNumberList) -> (index : Bits32) -> JSIO SVGNumber
  getItem a b = primJS $ SVGNumberList.prim__getItem a b

  
  export
  initialize : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
  initialize a b = primJS $ SVGNumberList.prim__initialize a b

  
  export
  insertItemBefore :
       (obj : SVGNumberList)
    -> (newItem : SVGNumber)
    -> (index : Bits32)
    -> JSIO SVGNumber
  insertItemBefore a b c = primJS $ SVGNumberList.prim__insertItemBefore a b c

  
  export
  removeItem : (obj : SVGNumberList) -> (index : Bits32) -> JSIO SVGNumber
  removeItem a b = primJS $ SVGNumberList.prim__removeItem a b

  
  export
  replaceItem :
       (obj : SVGNumberList)
    -> (newItem : SVGNumber)
    -> (index : Bits32)
    -> JSIO SVGNumber
  replaceItem a b c = primJS $ SVGNumberList.prim__replaceItem a b c




namespace SVGPatternElement
  
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



namespace SVGPointList
  
  export
  set :
       (obj : SVGPointList)
    -> (index : Bits32)
    -> (newItem : DOMPoint)
    -> JSIO ()
  set a b c = primJS $ SVGPointList.prim__set a b c

  
  export
  length : (obj : SVGPointList) -> JSIO Bits32
  length a = primJS $ SVGPointList.prim__length a

  
  export
  numberOfItems : (obj : SVGPointList) -> JSIO Bits32
  numberOfItems a = primJS $ SVGPointList.prim__numberOfItems a

  
  export
  appendItem : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
  appendItem a b = primJS $ SVGPointList.prim__appendItem a b

  
  export
  clear : (obj : SVGPointList) -> JSIO ()
  clear a = primJS $ SVGPointList.prim__clear a

  
  export
  getItem : (obj : SVGPointList) -> (index : Bits32) -> JSIO DOMPoint
  getItem a b = primJS $ SVGPointList.prim__getItem a b

  
  export
  initialize : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
  initialize a b = primJS $ SVGPointList.prim__initialize a b

  
  export
  insertItemBefore :
       (obj : SVGPointList)
    -> (newItem : DOMPoint)
    -> (index : Bits32)
    -> JSIO DOMPoint
  insertItemBefore a b c = primJS $ SVGPointList.prim__insertItemBefore a b c

  
  export
  removeItem : (obj : SVGPointList) -> (index : Bits32) -> JSIO DOMPoint
  removeItem a b = primJS $ SVGPointList.prim__removeItem a b

  
  export
  replaceItem :
       (obj : SVGPointList)
    -> (newItem : DOMPoint)
    -> (index : Bits32)
    -> JSIO DOMPoint
  replaceItem a b c = primJS $ SVGPointList.prim__replaceItem a b c





namespace SVGPreserveAspectRatio
  
  export
  SVG_MEETORSLICE_MEET : Bits16
  SVG_MEETORSLICE_MEET = 1

  
  export
  SVG_MEETORSLICE_SLICE : Bits16
  SVG_MEETORSLICE_SLICE = 2

  
  export
  SVG_MEETORSLICE_UNKNOWN : Bits16
  SVG_MEETORSLICE_UNKNOWN = 0

  
  export
  SVG_PRESERVEASPECTRATIO_NONE : Bits16
  SVG_PRESERVEASPECTRATIO_NONE = 1

  
  export
  SVG_PRESERVEASPECTRATIO_UNKNOWN : Bits16
  SVG_PRESERVEASPECTRATIO_UNKNOWN = 0

  
  export
  SVG_PRESERVEASPECTRATIO_XMAXYMAX : Bits16
  SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10

  
  export
  SVG_PRESERVEASPECTRATIO_XMAXYMID : Bits16
  SVG_PRESERVEASPECTRATIO_XMAXYMID = 7

  
  export
  SVG_PRESERVEASPECTRATIO_XMAXYMIN : Bits16
  SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4

  
  export
  SVG_PRESERVEASPECTRATIO_XMIDYMAX : Bits16
  SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9

  
  export
  SVG_PRESERVEASPECTRATIO_XMIDYMID : Bits16
  SVG_PRESERVEASPECTRATIO_XMIDYMID = 6

  
  export
  SVG_PRESERVEASPECTRATIO_XMIDYMIN : Bits16
  SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3

  
  export
  SVG_PRESERVEASPECTRATIO_XMINYMAX : Bits16
  SVG_PRESERVEASPECTRATIO_XMINYMAX = 8

  
  export
  SVG_PRESERVEASPECTRATIO_XMINYMID : Bits16
  SVG_PRESERVEASPECTRATIO_XMINYMID = 5

  
  export
  SVG_PRESERVEASPECTRATIO_XMINYMIN : Bits16
  SVG_PRESERVEASPECTRATIO_XMINYMIN = 2

  
  export
  align : SVGPreserveAspectRatio -> Attribute True Prelude.id Bits16
  align v = fromPrim
              "SVGPreserveAspectRatio.getalign"
              prim__align
              prim__setAlign
              v

  
  export
  meetOrSlice : SVGPreserveAspectRatio -> Attribute True Prelude.id Bits16
  meetOrSlice v = fromPrim
                    "SVGPreserveAspectRatio.getmeetOrSlice"
                    prim__meetOrSlice
                    prim__setMeetOrSlice
                    v



namespace SVGRadialGradientElement
  
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



namespace SVGRectElement
  
  export
  height : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  height a = primJS $ SVGRectElement.prim__height a

  
  export
  rx : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  rx a = primJS $ SVGRectElement.prim__rx a

  
  export
  ry : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  ry a = primJS $ SVGRectElement.prim__ry a

  
  export
  width : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  width a = primJS $ SVGRectElement.prim__width a

  
  export
  x : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  x a = primJS $ SVGRectElement.prim__x a

  
  export
  y : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  y a = primJS $ SVGRectElement.prim__y a



namespace SVGSVGElement
  
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
  unsuspendRedraw :
       (obj : SVGSVGElement)
    -> (suspendHandleID : Bits32)
    -> JSIO ()
  unsuspendRedraw a b = primJS $ SVGSVGElement.prim__unsuspendRedraw a b



namespace SVGScriptElement
  
  export
  crossOrigin : SVGScriptElement -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim
                    "SVGScriptElement.getcrossOrigin"
                    prim__crossOrigin
                    prim__setCrossOrigin
                    v

  
  export
  type : SVGScriptElement -> Attribute True Prelude.id String
  type v = fromPrim "SVGScriptElement.gettype" prim__type prim__setType v



namespace SVGStopElement
  
  export
  offset : (obj : SVGStopElement) -> JSIO SVGAnimatedNumber
  offset a = primJS $ SVGStopElement.prim__offset a



namespace SVGStringList
  
  export
  set :
       (obj : SVGStringList)
    -> (index : Bits32)
    -> (newItem : String)
    -> JSIO ()
  set a b c = primJS $ SVGStringList.prim__set a b c

  
  export
  length : (obj : SVGStringList) -> JSIO Bits32
  length a = primJS $ SVGStringList.prim__length a

  
  export
  numberOfItems : (obj : SVGStringList) -> JSIO Bits32
  numberOfItems a = primJS $ SVGStringList.prim__numberOfItems a

  
  export
  appendItem : (obj : SVGStringList) -> (newItem : String) -> JSIO String
  appendItem a b = primJS $ SVGStringList.prim__appendItem a b

  
  export
  clear : (obj : SVGStringList) -> JSIO ()
  clear a = primJS $ SVGStringList.prim__clear a

  
  export
  getItem : (obj : SVGStringList) -> (index : Bits32) -> JSIO String
  getItem a b = primJS $ SVGStringList.prim__getItem a b

  
  export
  initialize : (obj : SVGStringList) -> (newItem : String) -> JSIO String
  initialize a b = primJS $ SVGStringList.prim__initialize a b

  
  export
  insertItemBefore :
       (obj : SVGStringList)
    -> (newItem : String)
    -> (index : Bits32)
    -> JSIO String
  insertItemBefore a b c = primJS $ SVGStringList.prim__insertItemBefore a b c

  
  export
  removeItem : (obj : SVGStringList) -> (index : Bits32) -> JSIO String
  removeItem a b = primJS $ SVGStringList.prim__removeItem a b

  
  export
  replaceItem :
       (obj : SVGStringList)
    -> (newItem : String)
    -> (index : Bits32)
    -> JSIO String
  replaceItem a b c = primJS $ SVGStringList.prim__replaceItem a b c



namespace SVGStyleElement
  
  export
  media : SVGStyleElement -> Attribute True Prelude.id String
  media v = fromPrim "SVGStyleElement.getmedia" prim__media prim__setMedia v

  
  export
  title : SVGStyleElement -> Attribute True Prelude.id String
  title v = fromPrim "SVGStyleElement.gettitle" prim__title prim__setTitle v

  
  export
  type : SVGStyleElement -> Attribute True Prelude.id String
  type v = fromPrim "SVGStyleElement.gettype" prim__type prim__setType v






namespace SVGTextContentElement
  
  export
  LENGTHADJUST_SPACING : Bits16
  LENGTHADJUST_SPACING = 1

  
  export
  LENGTHADJUST_SPACINGANDGLYPHS : Bits16
  LENGTHADJUST_SPACINGANDGLYPHS = 2

  
  export
  LENGTHADJUST_UNKNOWN : Bits16
  LENGTHADJUST_UNKNOWN = 0

  
  export
  lengthAdjust :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> JSIO SVGAnimatedEnumeration
  lengthAdjust a = primJS $ SVGTextContentElement.prim__lengthAdjust (cast a)

  
  export
  textLength :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  textLength a = primJS $ SVGTextContentElement.prim__textLength (cast a)

  
  export
  getCharNumAtPosition' :
       {auto _ : Cast t1 SVGTextContentElement}
    -> {auto _ : Cast t2 DOMPointInit}
    -> (obj : t1)
    -> (point : Optional t2)
    -> JSIO Int32
  getCharNumAtPosition' a b = primJS $
    SVGTextContentElement.prim__getCharNumAtPosition (cast a) (optUp b)
  
  export
  getCharNumAtPosition :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> JSIO Int32
  getCharNumAtPosition a = primJS $
    SVGTextContentElement.prim__getCharNumAtPosition (cast a) undef

  
  export
  getComputedTextLength :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> JSIO Double
  getComputedTextLength a = primJS $
    SVGTextContentElement.prim__getComputedTextLength (cast a)

  
  export
  getEndPositionOfChar :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> JSIO DOMPoint
  getEndPositionOfChar a b = primJS $
    SVGTextContentElement.prim__getEndPositionOfChar (cast a) b

  
  export
  getExtentOfChar :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> JSIO DOMRect
  getExtentOfChar a b = primJS $
    SVGTextContentElement.prim__getExtentOfChar (cast a) b

  
  export
  getNumberOfChars :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> JSIO Int32
  getNumberOfChars a = primJS $
    SVGTextContentElement.prim__getNumberOfChars (cast a)

  
  export
  getRotationOfChar :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> JSIO Double
  getRotationOfChar a b = primJS $
    SVGTextContentElement.prim__getRotationOfChar (cast a) b

  
  export
  getStartPositionOfChar :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> JSIO DOMPoint
  getStartPositionOfChar a b = primJS $
    SVGTextContentElement.prim__getStartPositionOfChar (cast a) b

  
  export
  getSubStringLength :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> (nchars : Bits32)
    -> JSIO Double
  getSubStringLength a b c = primJS $
    SVGTextContentElement.prim__getSubStringLength (cast a) b c

  
  export
  selectSubString :
       {auto _ : Cast t1 SVGTextContentElement}
    -> (obj : t1)
    -> (charnum : Bits32)
    -> (nchars : Bits32)
    -> JSIO ()
  selectSubString a b c = primJS $
    SVGTextContentElement.prim__selectSubString (cast a) b c




namespace SVGTextPathElement
  
  export
  TEXTPATH_METHODTYPE_ALIGN : Bits16
  TEXTPATH_METHODTYPE_ALIGN = 1

  
  export
  TEXTPATH_METHODTYPE_STRETCH : Bits16
  TEXTPATH_METHODTYPE_STRETCH = 2

  
  export
  TEXTPATH_METHODTYPE_UNKNOWN : Bits16
  TEXTPATH_METHODTYPE_UNKNOWN = 0

  
  export
  TEXTPATH_SPACINGTYPE_AUTO : Bits16
  TEXTPATH_SPACINGTYPE_AUTO = 1

  
  export
  TEXTPATH_SPACINGTYPE_EXACT : Bits16
  TEXTPATH_SPACINGTYPE_EXACT = 2

  
  export
  TEXTPATH_SPACINGTYPE_UNKNOWN : Bits16
  TEXTPATH_SPACINGTYPE_UNKNOWN = 0

  
  export
  method : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
  method a = primJS $ SVGTextPathElement.prim__method a

  
  export
  spacing : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
  spacing a = primJS $ SVGTextPathElement.prim__spacing a

  
  export
  startOffset : (obj : SVGTextPathElement) -> JSIO SVGAnimatedLength
  startOffset a = primJS $ SVGTextPathElement.prim__startOffset a



namespace SVGTextPositioningElement
  
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




namespace SVGTransform
  
  export
  SVG_TRANSFORM_MATRIX : Bits16
  SVG_TRANSFORM_MATRIX = 1

  
  export
  SVG_TRANSFORM_ROTATE : Bits16
  SVG_TRANSFORM_ROTATE = 4

  
  export
  SVG_TRANSFORM_SCALE : Bits16
  SVG_TRANSFORM_SCALE = 3

  
  export
  SVG_TRANSFORM_SKEWX : Bits16
  SVG_TRANSFORM_SKEWX = 5

  
  export
  SVG_TRANSFORM_SKEWY : Bits16
  SVG_TRANSFORM_SKEWY = 6

  
  export
  SVG_TRANSFORM_TRANSLATE : Bits16
  SVG_TRANSFORM_TRANSLATE = 2

  
  export
  SVG_TRANSFORM_UNKNOWN : Bits16
  SVG_TRANSFORM_UNKNOWN = 0

  
  export
  angle : (obj : SVGTransform) -> JSIO Double
  angle a = primJS $ SVGTransform.prim__angle a

  
  export
  matrix : (obj : SVGTransform) -> JSIO DOMMatrix
  matrix a = primJS $ SVGTransform.prim__matrix a

  
  export
  type : (obj : SVGTransform) -> JSIO Bits16
  type a = primJS $ SVGTransform.prim__type a

  
  export
  setMatrix' :
       {auto _ : Cast t2 DOMMatrix2DInit}
    -> (obj : SVGTransform)
    -> (matrix : Optional t2)
    -> JSIO ()
  setMatrix' a b = primJS $ SVGTransform.prim__setMatrix a (optUp b)
  
  export
  setMatrix : (obj : SVGTransform) -> JSIO ()
  setMatrix a = primJS $ SVGTransform.prim__setMatrix a undef

  
  export
  setRotate :
       (obj : SVGTransform)
    -> (angle : Double)
    -> (cx : Double)
    -> (cy : Double)
    -> JSIO ()
  setRotate a b c d = primJS $ SVGTransform.prim__setRotate a b c d

  
  export
  setScale : (obj : SVGTransform) -> (sx : Double) -> (sy : Double) -> JSIO ()
  setScale a b c = primJS $ SVGTransform.prim__setScale a b c

  
  export
  setSkewX : (obj : SVGTransform) -> (angle : Double) -> JSIO ()
  setSkewX a b = primJS $ SVGTransform.prim__setSkewX a b

  
  export
  setSkewY : (obj : SVGTransform) -> (angle : Double) -> JSIO ()
  setSkewY a b = primJS $ SVGTransform.prim__setSkewY a b

  
  export
  setTranslate :
       (obj : SVGTransform)
    -> (tx : Double)
    -> (ty : Double)
    -> JSIO ()
  setTranslate a b c = primJS $ SVGTransform.prim__setTranslate a b c



namespace SVGTransformList
  
  export
  set :
       (obj : SVGTransformList)
    -> (index : Bits32)
    -> (newItem : SVGTransform)
    -> JSIO ()
  set a b c = primJS $ SVGTransformList.prim__set a b c

  
  export
  length : (obj : SVGTransformList) -> JSIO Bits32
  length a = primJS $ SVGTransformList.prim__length a

  
  export
  numberOfItems : (obj : SVGTransformList) -> JSIO Bits32
  numberOfItems a = primJS $ SVGTransformList.prim__numberOfItems a

  
  export
  appendItem :
       (obj : SVGTransformList)
    -> (newItem : SVGTransform)
    -> JSIO SVGTransform
  appendItem a b = primJS $ SVGTransformList.prim__appendItem a b

  
  export
  clear : (obj : SVGTransformList) -> JSIO ()
  clear a = primJS $ SVGTransformList.prim__clear a

  
  export
  consolidate : (obj : SVGTransformList) -> JSIO (Maybe SVGTransform)
  consolidate a = tryJS "SVGTransformList.consolidate" $
    SVGTransformList.prim__consolidate a

  
  export
  createSVGTransformFromMatrix' :
       {auto _ : Cast t2 DOMMatrix2DInit}
    -> (obj : SVGTransformList)
    -> (matrix : Optional t2)
    -> JSIO SVGTransform
  createSVGTransformFromMatrix' a b = primJS $
    SVGTransformList.prim__createSVGTransformFromMatrix a (optUp b)
  
  export
  createSVGTransformFromMatrix : (obj : SVGTransformList) -> JSIO SVGTransform
  createSVGTransformFromMatrix a = primJS $
    SVGTransformList.prim__createSVGTransformFromMatrix a undef

  
  export
  getItem : (obj : SVGTransformList) -> (index : Bits32) -> JSIO SVGTransform
  getItem a b = primJS $ SVGTransformList.prim__getItem a b

  
  export
  initialize :
       (obj : SVGTransformList)
    -> (newItem : SVGTransform)
    -> JSIO SVGTransform
  initialize a b = primJS $ SVGTransformList.prim__initialize a b

  
  export
  insertItemBefore :
       (obj : SVGTransformList)
    -> (newItem : SVGTransform)
    -> (index : Bits32)
    -> JSIO SVGTransform
  insertItemBefore a b c = primJS $
    SVGTransformList.prim__insertItemBefore a b c

  
  export
  removeItem : (obj : SVGTransformList) -> (index : Bits32) -> JSIO SVGTransform
  removeItem a b = primJS $ SVGTransformList.prim__removeItem a b

  
  export
  replaceItem :
       (obj : SVGTransformList)
    -> (newItem : SVGTransform)
    -> (index : Bits32)
    -> JSIO SVGTransform
  replaceItem a b c = primJS $ SVGTransformList.prim__replaceItem a b c



namespace SVGUnitTypes
  
  export
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : Bits16
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2

  
  export
  SVG_UNIT_TYPE_UNKNOWN : Bits16
  SVG_UNIT_TYPE_UNKNOWN = 0

  
  export
  SVG_UNIT_TYPE_USERSPACEONUSE : Bits16
  SVG_UNIT_TYPE_USERSPACEONUSE = 1



namespace SVGUseElement
  
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





namespace ShadowAnimation
  
  export
  new :
       {auto _ : Cast t1 Animation}
    -> {auto _ : Cast t2 Animatable}
    -> (source : t1)
    -> (newTarget : t2)
    -> JSIO ShadowAnimation
  new a b = primJS $ ShadowAnimation.prim__new (cast a) (cast b)

  
  export
  sourceAnimation : (obj : ShadowAnimation) -> JSIO Animation
  sourceAnimation a = primJS $ ShadowAnimation.prim__sourceAnimation a




--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GetSVGDocument
  
  export
  getSVGDocument :
       {auto _ : Cast t1 GetSVGDocument}
    -> (obj : t1)
    -> JSIO Document
  getSVGDocument a = primJS $ GetSVGDocument.prim__getSVGDocument (cast a)



namespace SVGAnimatedPoints
  
  export
  animatedPoints :
       {auto _ : Cast t1 SVGAnimatedPoints}
    -> (obj : t1)
    -> JSIO SVGPointList
  animatedPoints a = primJS $ SVGAnimatedPoints.prim__animatedPoints (cast a)

  
  export
  points :
       {auto _ : Cast t1 SVGAnimatedPoints}
    -> (obj : t1)
    -> JSIO SVGPointList
  points a = primJS $ SVGAnimatedPoints.prim__points (cast a)



namespace SVGElementInstance
  
  export
  correspondingElement :
       {auto _ : Cast t1 SVGElementInstance}
    -> (obj : t1)
    -> JSIO (Maybe SVGElement)
  correspondingElement a = tryJS "SVGElementInstance.correspondingElement" $
    SVGElementInstance.prim__correspondingElement (cast a)

  
  export
  correspondingUseElement :
       {auto _ : Cast t1 SVGElementInstance}
    -> (obj : t1)
    -> JSIO (Maybe SVGUseElement)
  correspondingUseElement a = tryJS "SVGElementInstance.correspondingUseElement" $
    SVGElementInstance.prim__correspondingUseElement (cast a)



namespace SVGFitToViewBox
  
  export
  preserveAspectRatio :
       {auto _ : Cast t1 SVGFitToViewBox}
    -> (obj : t1)
    -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a = primJS $
    SVGFitToViewBox.prim__preserveAspectRatio (cast a)

  
  export
  viewBox :
       {auto _ : Cast t1 SVGFitToViewBox}
    -> (obj : t1)
    -> JSIO SVGAnimatedRect
  viewBox a = primJS $ SVGFitToViewBox.prim__viewBox (cast a)



namespace SVGTests
  
  export
  requiredExtensions :
       {auto _ : Cast t1 SVGTests}
    -> (obj : t1)
    -> JSIO SVGStringList
  requiredExtensions a = primJS $ SVGTests.prim__requiredExtensions (cast a)

  
  export
  systemLanguage :
       {auto _ : Cast t1 SVGTests}
    -> (obj : t1)
    -> JSIO SVGStringList
  systemLanguage a = primJS $ SVGTests.prim__systemLanguage (cast a)



namespace SVGURIReference
  
  export
  href :
       {auto _ : Cast t1 SVGURIReference}
    -> (obj : t1)
    -> JSIO SVGAnimatedString
  href a = primJS $ SVGURIReference.prim__href (cast a)




--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  export
  new' :
       (fill : Optional Bool)
    -> (stroke : Optional Bool)
    -> (markers : Optional Bool)
    -> (clipped : Optional Bool)
    -> JSIO SVGBoundingBoxOptions
  new' a b c d = primJS $
    SVGBoundingBoxOptions.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)
  
  export
  new : JSIO SVGBoundingBoxOptions
  new = primJS $ SVGBoundingBoxOptions.prim__new undef undef undef undef

  
  export
  clipped :
       {auto _ : Cast t SVGBoundingBoxOptions}
    -> t
    -> Attribute True Optional Bool
  clipped v = fromUndefOrPrim
                "SVGBoundingBoxOptions.getclipped"
                prim__clipped
                prim__setClipped
                False
                (cast {to = SVGBoundingBoxOptions} v)

  
  export
  fill :
       {auto _ : Cast t SVGBoundingBoxOptions}
    -> t
    -> Attribute True Optional Bool
  fill v = fromUndefOrPrim
             "SVGBoundingBoxOptions.getfill"
             prim__fill
             prim__setFill
             True
             (cast {to = SVGBoundingBoxOptions} v)

  
  export
  markers :
       {auto _ : Cast t SVGBoundingBoxOptions}
    -> t
    -> Attribute True Optional Bool
  markers v = fromUndefOrPrim
                "SVGBoundingBoxOptions.getmarkers"
                prim__markers
                prim__setMarkers
                False
                (cast {to = SVGBoundingBoxOptions} v)

  
  export
  stroke :
       {auto _ : Cast t SVGBoundingBoxOptions}
    -> t
    -> Attribute True Optional Bool
  stroke v = fromUndefOrPrim
               "SVGBoundingBoxOptions.getstroke"
               prim__stroke
               prim__setStroke
               False
               (cast {to = SVGBoundingBoxOptions} v)



