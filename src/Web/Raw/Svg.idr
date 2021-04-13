module Web.Raw.Svg
 
import JS
import Web.Internal.SvgPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MathMLElement
  
  public export
  JSType MathMLElement where
    parents =  [ Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , Slottable
              ]

namespace SVGAElement
  
  public export
  JSType SVGAElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  export
  download : SVGAElement -> Attribute True I String
  download = fromPrim "SVGAElement.getdownload" prim__download prim__setDownload
  
  export
  hreflang : SVGAElement -> Attribute True I String
  hreflang = fromPrim "SVGAElement.gethreflang" prim__hreflang prim__setHreflang
  
  export
  ping : SVGAElement -> Attribute True I String
  ping = fromPrim "SVGAElement.getping" prim__ping prim__setPing
  
  export
  referrerPolicy : SVGAElement -> Attribute True I String
  referrerPolicy = fromPrim "SVGAElement.getreferrerPolicy"
                            prim__referrerPolicy
                            prim__setReferrerPolicy
  
  export
  rel : SVGAElement -> Attribute True I String
  rel = fromPrim "SVGAElement.getrel" prim__rel prim__setRel
  
  export
  relList : (obj : SVGAElement) -> JSIO DOMTokenList
  relList a = primJS $ SVGAElement.prim__relList a
  
  export
  target : (obj : SVGAElement) -> JSIO SVGAnimatedString
  target a = primJS $ SVGAElement.prim__target a
  
  export
  text : SVGAElement -> Attribute True I String
  text = fromPrim "SVGAElement.gettext" prim__text prim__setText
  
  export
  type : SVGAElement -> Attribute True I String
  type = fromPrim "SVGAElement.gettype" prim__type prim__setType

namespace SVGAngle
  
  public export
  JSType SVGAngle where
    parents =  [ Object ]

    mixins =  []
  
  public export
  SVG_ANGLETYPE_DEG : UInt16
  SVG_ANGLETYPE_DEG = 2
  
  public export
  SVG_ANGLETYPE_GRAD : UInt16
  SVG_ANGLETYPE_GRAD = 4
  
  public export
  SVG_ANGLETYPE_RAD : UInt16
  SVG_ANGLETYPE_RAD = 3
  
  public export
  SVG_ANGLETYPE_UNKNOWN : UInt16
  SVG_ANGLETYPE_UNKNOWN = 0
  
  public export
  SVG_ANGLETYPE_UNSPECIFIED : UInt16
  SVG_ANGLETYPE_UNSPECIFIED = 1
  
  export
  unitType : (obj : SVGAngle) -> JSIO UInt16
  unitType a = primJS $ SVGAngle.prim__unitType a
  
  export
  value : SVGAngle -> Attribute True I Double
  value = fromPrim "SVGAngle.getvalue" prim__value prim__setValue
  
  export
  valueAsString : SVGAngle -> Attribute True I String
  valueAsString = fromPrim "SVGAngle.getvalueAsString"
                           prim__valueAsString
                           prim__setValueAsString
  
  export
  valueInSpecifiedUnits : SVGAngle -> Attribute True I Double
  valueInSpecifiedUnits = fromPrim "SVGAngle.getvalueInSpecifiedUnits"
                                   prim__valueInSpecifiedUnits
                                   prim__setValueInSpecifiedUnits
  
  export
  convertToSpecifiedUnits : (obj : SVGAngle) -> (unitType : UInt16) -> JSIO ()
  convertToSpecifiedUnits a b = primJS
                              $ SVGAngle.prim__convertToSpecifiedUnits a b
  
  export
  newValueSpecifiedUnits :  (obj : SVGAngle)
                         -> (unitType : UInt16)
                         -> (valueInSpecifiedUnits : Double)
                         -> JSIO ()
  newValueSpecifiedUnits a b c = primJS
                               $ SVGAngle.prim__newValueSpecifiedUnits a b c

namespace SVGAnimatedAngle
  
  public export
  JSType SVGAnimatedAngle where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  animVal a = primJS $ SVGAnimatedAngle.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  baseVal a = primJS $ SVGAnimatedAngle.prim__baseVal a

namespace SVGAnimatedBoolean
  
  public export
  JSType SVGAnimatedBoolean where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
  animVal a = tryJS "SVGAnimatedBoolean.animVal"
            $ SVGAnimatedBoolean.prim__animVal a
  
  export
  baseVal : SVGAnimatedBoolean -> Attribute True I Bool
  baseVal = fromPrim "SVGAnimatedBoolean.getbaseVal"
                     prim__baseVal
                     prim__setBaseVal

namespace SVGAnimatedEnumeration
  
  public export
  JSType SVGAnimatedEnumeration where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedEnumeration) -> JSIO UInt16
  animVal a = primJS $ SVGAnimatedEnumeration.prim__animVal a
  
  export
  baseVal : SVGAnimatedEnumeration -> Attribute True I UInt16
  baseVal = fromPrim "SVGAnimatedEnumeration.getbaseVal"
                     prim__baseVal
                     prim__setBaseVal

namespace SVGAnimatedInteger
  
  public export
  JSType SVGAnimatedInteger where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedInteger) -> JSIO Int32
  animVal a = primJS $ SVGAnimatedInteger.prim__animVal a
  
  export
  baseVal : SVGAnimatedInteger -> Attribute True I Int32
  baseVal = fromPrim "SVGAnimatedInteger.getbaseVal"
                     prim__baseVal
                     prim__setBaseVal

namespace SVGAnimatedLength
  
  public export
  JSType SVGAnimatedLength where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  animVal a = primJS $ SVGAnimatedLength.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  baseVal a = primJS $ SVGAnimatedLength.prim__baseVal a

namespace SVGAnimatedLengthList
  
  public export
  JSType SVGAnimatedLengthList where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  animVal a = primJS $ SVGAnimatedLengthList.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  baseVal a = primJS $ SVGAnimatedLengthList.prim__baseVal a

namespace SVGAnimatedNumber
  
  public export
  JSType SVGAnimatedNumber where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedNumber) -> JSIO Double
  animVal a = primJS $ SVGAnimatedNumber.prim__animVal a
  
  export
  baseVal : SVGAnimatedNumber -> Attribute True I Double
  baseVal = fromPrim "SVGAnimatedNumber.getbaseVal"
                     prim__baseVal
                     prim__setBaseVal

namespace SVGAnimatedNumberList
  
  public export
  JSType SVGAnimatedNumberList where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  animVal a = primJS $ SVGAnimatedNumberList.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  baseVal a = primJS $ SVGAnimatedNumberList.prim__baseVal a

namespace SVGAnimatedPreserveAspectRatio
  
  public export
  JSType SVGAnimatedPreserveAspectRatio where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal :  (obj : SVGAnimatedPreserveAspectRatio)
          -> JSIO SVGPreserveAspectRatio
  animVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__animVal a
  
  export
  baseVal :  (obj : SVGAnimatedPreserveAspectRatio)
          -> JSIO SVGPreserveAspectRatio
  baseVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__baseVal a

namespace SVGAnimatedRect
  
  public export
  JSType SVGAnimatedRect where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedRect) -> JSIO DOMRectReadOnly
  animVal a = primJS $ SVGAnimatedRect.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedRect) -> JSIO DOMRect
  baseVal a = primJS $ SVGAnimatedRect.prim__baseVal a

namespace SVGAnimatedString
  
  public export
  JSType SVGAnimatedString where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedString) -> JSIO String
  animVal a = primJS $ SVGAnimatedString.prim__animVal a
  
  export
  baseVal : SVGAnimatedString -> Attribute True I String
  baseVal = fromPrim "SVGAnimatedString.getbaseVal"
                     prim__baseVal
                     prim__setBaseVal

namespace SVGAnimatedTransformList
  
  public export
  JSType SVGAnimatedTransformList where
    parents =  [ Object ]

    mixins =  []
  
  export
  animVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  animVal a = primJS $ SVGAnimatedTransformList.prim__animVal a
  
  export
  baseVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  baseVal a = primJS $ SVGAnimatedTransformList.prim__baseVal a

namespace SVGCircleElement
  
  public export
  JSType SVGCircleElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  export
  cx : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGCircleElement.prim__cx a
  
  export
  cy : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGCircleElement.prim__cy a
  
  export
  r : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  r a = primJS $ SVGCircleElement.prim__r a

namespace SVGDefsElement
  
  public export
  JSType SVGDefsElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGDescElement
  
  public export
  JSType SVGDescElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGElement
  
  public export
  JSType SVGElement where
    parents =  [ Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  export
  className : (obj : SVGElement) -> JSIO SVGAnimatedString
  className a = primJS $ SVGElement.prim__className a
  
  export
  ownerSVGElement : (obj : SVGElement) -> JSIO (Maybe SVGSVGElement)
  ownerSVGElement a = tryJS "SVGElement.ownerSVGElement"
                    $ SVGElement.prim__ownerSVGElement a
  
  export
  viewportElement : (obj : SVGElement) -> JSIO (Maybe SVGElement)
  viewportElement a = tryJS "SVGElement.viewportElement"
                    $ SVGElement.prim__viewportElement a

namespace SVGEllipseElement
  
  public export
  JSType SVGEllipseElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
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
  
  public export
  JSType SVGForeignObjectElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
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

namespace SVGGElement
  
  public export
  JSType SVGGElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGGeometryElement
  
  public export
  JSType SVGGeometryElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  export
  pathLength : (obj : SVGGeometryElement) -> JSIO SVGAnimatedNumber
  pathLength a = primJS $ SVGGeometryElement.prim__pathLength a
  
  export
  getPointAtLength :  (obj : SVGGeometryElement)
                   -> (distance : Double)
                   -> JSIO DOMPoint
  getPointAtLength a b = primJS $ SVGGeometryElement.prim__getPointAtLength a b
  
  export
  getTotalLength : (obj : SVGGeometryElement) -> JSIO Double
  getTotalLength a = primJS $ SVGGeometryElement.prim__getTotalLength a
  
  export
  isPointInFill :  (obj : SVGGeometryElement)
                -> (point : Optional DOMPointInit)
                -> JSIO Bool
  isPointInFill a b = tryJS "SVGGeometryElement.isPointInFill"
                    $ SVGGeometryElement.prim__isPointInFill a (toFFI b)

  export
  isPointInFill' : (obj : SVGGeometryElement) -> JSIO Bool
  isPointInFill' a = tryJS "SVGGeometryElement.isPointInFill'"
                   $ SVGGeometryElement.prim__isPointInFill a undef
  
  export
  isPointInStroke :  (obj : SVGGeometryElement)
                  -> (point : Optional DOMPointInit)
                  -> JSIO Bool
  isPointInStroke a b = tryJS "SVGGeometryElement.isPointInStroke"
                      $ SVGGeometryElement.prim__isPointInStroke a (toFFI b)

  export
  isPointInStroke' : (obj : SVGGeometryElement) -> JSIO Bool
  isPointInStroke' a = tryJS "SVGGeometryElement.isPointInStroke'"
                     $ SVGGeometryElement.prim__isPointInStroke a undef

namespace SVGGradientElement
  
  public export
  JSType SVGGradientElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
  public export
  SVG_SPREADMETHOD_PAD : UInt16
  SVG_SPREADMETHOD_PAD = 1
  
  public export
  SVG_SPREADMETHOD_REFLECT : UInt16
  SVG_SPREADMETHOD_REFLECT = 2
  
  public export
  SVG_SPREADMETHOD_REPEAT : UInt16
  SVG_SPREADMETHOD_REPEAT = 3
  
  public export
  SVG_SPREADMETHOD_UNKNOWN : UInt16
  SVG_SPREADMETHOD_UNKNOWN = 0
  
  export
  gradientTransform :  (obj : SVGGradientElement)
                    -> JSIO SVGAnimatedTransformList
  gradientTransform a = primJS $ SVGGradientElement.prim__gradientTransform a
  
  export
  gradientUnits : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration
  gradientUnits a = primJS $ SVGGradientElement.prim__gradientUnits a
  
  export
  spreadMethod : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration
  spreadMethod a = primJS $ SVGGradientElement.prim__spreadMethod a

namespace SVGGraphicsElement
  
  public export
  JSType SVGGraphicsElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  export
  transform : (obj : SVGGraphicsElement) -> JSIO SVGAnimatedTransformList
  transform a = primJS $ SVGGraphicsElement.prim__transform a
  
  export
  getBBox :  (obj : SVGGraphicsElement)
          -> (options : Optional SVGBoundingBoxOptions)
          -> JSIO DOMRect
  getBBox a b = primJS $ SVGGraphicsElement.prim__getBBox a (toFFI b)

  export
  getBBox' : (obj : SVGGraphicsElement) -> JSIO DOMRect
  getBBox' a = primJS $ SVGGraphicsElement.prim__getBBox a undef
  
  export
  getCTM : (obj : SVGGraphicsElement) -> JSIO (Maybe DOMMatrix)
  getCTM a = tryJS "SVGGraphicsElement.getCTM"
           $ SVGGraphicsElement.prim__getCTM a
  
  export
  getScreenCTM : (obj : SVGGraphicsElement) -> JSIO (Maybe DOMMatrix)
  getScreenCTM a = tryJS "SVGGraphicsElement.getScreenCTM"
                 $ SVGGraphicsElement.prim__getScreenCTM a

namespace SVGImageElement
  
  public export
  JSType SVGImageElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  export
  crossOrigin : SVGImageElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "SVGImageElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  height : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  height a = primJS $ SVGImageElement.prim__height a
  
  export
  preserveAspectRatio :  (obj : SVGImageElement)
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
  
  public export
  JSType SVGLength where
    parents =  [ Object ]

    mixins =  []
  
  public export
  SVG_LENGTHTYPE_CM : UInt16
  SVG_LENGTHTYPE_CM = 6
  
  public export
  SVG_LENGTHTYPE_EMS : UInt16
  SVG_LENGTHTYPE_EMS = 3
  
  public export
  SVG_LENGTHTYPE_EXS : UInt16
  SVG_LENGTHTYPE_EXS = 4
  
  public export
  SVG_LENGTHTYPE_IN : UInt16
  SVG_LENGTHTYPE_IN = 8
  
  public export
  SVG_LENGTHTYPE_MM : UInt16
  SVG_LENGTHTYPE_MM = 7
  
  public export
  SVG_LENGTHTYPE_NUMBER : UInt16
  SVG_LENGTHTYPE_NUMBER = 1
  
  public export
  SVG_LENGTHTYPE_PC : UInt16
  SVG_LENGTHTYPE_PC = 10
  
  public export
  SVG_LENGTHTYPE_PERCENTAGE : UInt16
  SVG_LENGTHTYPE_PERCENTAGE = 2
  
  public export
  SVG_LENGTHTYPE_PT : UInt16
  SVG_LENGTHTYPE_PT = 9
  
  public export
  SVG_LENGTHTYPE_PX : UInt16
  SVG_LENGTHTYPE_PX = 5
  
  public export
  SVG_LENGTHTYPE_UNKNOWN : UInt16
  SVG_LENGTHTYPE_UNKNOWN = 0
  
  export
  unitType : (obj : SVGLength) -> JSIO UInt16
  unitType a = primJS $ SVGLength.prim__unitType a
  
  export
  value : SVGLength -> Attribute True I Double
  value = fromPrim "SVGLength.getvalue" prim__value prim__setValue
  
  export
  valueAsString : SVGLength -> Attribute True I String
  valueAsString = fromPrim "SVGLength.getvalueAsString"
                           prim__valueAsString
                           prim__setValueAsString
  
  export
  valueInSpecifiedUnits : SVGLength -> Attribute True I Double
  valueInSpecifiedUnits = fromPrim "SVGLength.getvalueInSpecifiedUnits"
                                   prim__valueInSpecifiedUnits
                                   prim__setValueInSpecifiedUnits
  
  export
  convertToSpecifiedUnits : (obj : SVGLength) -> (unitType : UInt16) -> JSIO ()
  convertToSpecifiedUnits a b = primJS
                              $ SVGLength.prim__convertToSpecifiedUnits a b
  
  export
  newValueSpecifiedUnits :  (obj : SVGLength)
                         -> (unitType : UInt16)
                         -> (valueInSpecifiedUnits : Double)
                         -> JSIO ()
  newValueSpecifiedUnits a b c = primJS
                               $ SVGLength.prim__newValueSpecifiedUnits a b c

namespace SVGLengthList
  
  public export
  JSType SVGLengthList where
    parents =  [ Object ]

    mixins =  []
  
  export
  set :  (obj : SVGLengthList)
      -> (index : UInt32)
      -> (newItem : SVGLength)
      -> JSIO ()
  set a b c = primJS $ SVGLengthList.prim__set a b c
  
  export
  length : (obj : SVGLengthList) -> JSIO UInt32
  length a = primJS $ SVGLengthList.prim__length a
  
  export
  numberOfItems : (obj : SVGLengthList) -> JSIO UInt32
  numberOfItems a = primJS $ SVGLengthList.prim__numberOfItems a
  
  export
  appendItem : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
  appendItem a b = primJS $ SVGLengthList.prim__appendItem a b
  
  export
  clear : (obj : SVGLengthList) -> JSIO ()
  clear a = primJS $ SVGLengthList.prim__clear a
  
  export
  getItem : (obj : SVGLengthList) -> (index : UInt32) -> JSIO SVGLength
  getItem a b = primJS $ SVGLengthList.prim__getItem a b
  
  export
  initialize : (obj : SVGLengthList) -> (newItem : SVGLength) -> JSIO SVGLength
  initialize a b = primJS $ SVGLengthList.prim__initialize a b
  
  export
  insertItemBefore :  (obj : SVGLengthList)
                   -> (newItem : SVGLength)
                   -> (index : UInt32)
                   -> JSIO SVGLength
  insertItemBefore a b c = primJS $ SVGLengthList.prim__insertItemBefore a b c
  
  export
  removeItem : (obj : SVGLengthList) -> (index : UInt32) -> JSIO SVGLength
  removeItem a b = primJS $ SVGLengthList.prim__removeItem a b
  
  export
  replaceItem :  (obj : SVGLengthList)
              -> (newItem : SVGLength)
              -> (index : UInt32)
              -> JSIO SVGLength
  replaceItem a b c = primJS $ SVGLengthList.prim__replaceItem a b c

namespace SVGLineElement
  
  public export
  JSType SVGLineElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
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
  
  public export
  JSType SVGLinearGradientElement where
    parents =  [ SVGGradientElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
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
  
  public export
  JSType SVGMarkerElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , Slottable
              ]
  
  public export
  SVG_MARKERUNITS_STROKEWIDTH : UInt16
  SVG_MARKERUNITS_STROKEWIDTH = 2
  
  public export
  SVG_MARKERUNITS_UNKNOWN : UInt16
  SVG_MARKERUNITS_UNKNOWN = 0
  
  public export
  SVG_MARKERUNITS_USERSPACEONUSE : UInt16
  SVG_MARKERUNITS_USERSPACEONUSE = 1
  
  public export
  SVG_MARKER_ORIENT_ANGLE : UInt16
  SVG_MARKER_ORIENT_ANGLE = 2
  
  public export
  SVG_MARKER_ORIENT_AUTO : UInt16
  SVG_MARKER_ORIENT_AUTO = 1
  
  public export
  SVG_MARKER_ORIENT_UNKNOWN : UInt16
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
  orient : SVGMarkerElement -> Attribute True I String
  orient = fromPrim "SVGMarkerElement.getorient" prim__orient prim__setOrient
  
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

namespace SVGMetadataElement
  
  public export
  JSType SVGMetadataElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGNumber
  
  public export
  JSType SVGNumber where
    parents =  [ Object ]

    mixins =  []
  
  export
  value : SVGNumber -> Attribute True I Double
  value = fromPrim "SVGNumber.getvalue" prim__value prim__setValue

namespace SVGNumberList
  
  public export
  JSType SVGNumberList where
    parents =  [ Object ]

    mixins =  []
  
  export
  set :  (obj : SVGNumberList)
      -> (index : UInt32)
      -> (newItem : SVGNumber)
      -> JSIO ()
  set a b c = primJS $ SVGNumberList.prim__set a b c
  
  export
  length : (obj : SVGNumberList) -> JSIO UInt32
  length a = primJS $ SVGNumberList.prim__length a
  
  export
  numberOfItems : (obj : SVGNumberList) -> JSIO UInt32
  numberOfItems a = primJS $ SVGNumberList.prim__numberOfItems a
  
  export
  appendItem : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
  appendItem a b = primJS $ SVGNumberList.prim__appendItem a b
  
  export
  clear : (obj : SVGNumberList) -> JSIO ()
  clear a = primJS $ SVGNumberList.prim__clear a
  
  export
  getItem : (obj : SVGNumberList) -> (index : UInt32) -> JSIO SVGNumber
  getItem a b = primJS $ SVGNumberList.prim__getItem a b
  
  export
  initialize : (obj : SVGNumberList) -> (newItem : SVGNumber) -> JSIO SVGNumber
  initialize a b = primJS $ SVGNumberList.prim__initialize a b
  
  export
  insertItemBefore :  (obj : SVGNumberList)
                   -> (newItem : SVGNumber)
                   -> (index : UInt32)
                   -> JSIO SVGNumber
  insertItemBefore a b c = primJS $ SVGNumberList.prim__insertItemBefore a b c
  
  export
  removeItem : (obj : SVGNumberList) -> (index : UInt32) -> JSIO SVGNumber
  removeItem a b = primJS $ SVGNumberList.prim__removeItem a b
  
  export
  replaceItem :  (obj : SVGNumberList)
              -> (newItem : SVGNumber)
              -> (index : UInt32)
              -> JSIO SVGNumber
  replaceItem a b c = primJS $ SVGNumberList.prim__replaceItem a b c

namespace SVGPathElement
  
  public export
  JSType SVGPathElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGPatternElement
  
  public export
  JSType SVGPatternElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGURIReference
              , Slottable
              ]
  
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
  
  public export
  JSType SVGPointList where
    parents =  [ Object ]

    mixins =  []
  
  export
  set :  (obj : SVGPointList)
      -> (index : UInt32)
      -> (newItem : DOMPoint)
      -> JSIO ()
  set a b c = primJS $ SVGPointList.prim__set a b c
  
  export
  length : (obj : SVGPointList) -> JSIO UInt32
  length a = primJS $ SVGPointList.prim__length a
  
  export
  numberOfItems : (obj : SVGPointList) -> JSIO UInt32
  numberOfItems a = primJS $ SVGPointList.prim__numberOfItems a
  
  export
  appendItem : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
  appendItem a b = primJS $ SVGPointList.prim__appendItem a b
  
  export
  clear : (obj : SVGPointList) -> JSIO ()
  clear a = primJS $ SVGPointList.prim__clear a
  
  export
  getItem : (obj : SVGPointList) -> (index : UInt32) -> JSIO DOMPoint
  getItem a b = primJS $ SVGPointList.prim__getItem a b
  
  export
  initialize : (obj : SVGPointList) -> (newItem : DOMPoint) -> JSIO DOMPoint
  initialize a b = primJS $ SVGPointList.prim__initialize a b
  
  export
  insertItemBefore :  (obj : SVGPointList)
                   -> (newItem : DOMPoint)
                   -> (index : UInt32)
                   -> JSIO DOMPoint
  insertItemBefore a b c = primJS $ SVGPointList.prim__insertItemBefore a b c
  
  export
  removeItem : (obj : SVGPointList) -> (index : UInt32) -> JSIO DOMPoint
  removeItem a b = primJS $ SVGPointList.prim__removeItem a b
  
  export
  replaceItem :  (obj : SVGPointList)
              -> (newItem : DOMPoint)
              -> (index : UInt32)
              -> JSIO DOMPoint
  replaceItem a b c = primJS $ SVGPointList.prim__replaceItem a b c

namespace SVGPolygonElement
  
  public export
  JSType SVGPolygonElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGAnimatedPoints
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGPolylineElement
  
  public export
  JSType SVGPolylineElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGAnimatedPoints
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGPreserveAspectRatio
  
  public export
  JSType SVGPreserveAspectRatio where
    parents =  [ Object ]

    mixins =  []
  
  public export
  SVG_MEETORSLICE_MEET : UInt16
  SVG_MEETORSLICE_MEET = 1
  
  public export
  SVG_MEETORSLICE_SLICE : UInt16
  SVG_MEETORSLICE_SLICE = 2
  
  public export
  SVG_MEETORSLICE_UNKNOWN : UInt16
  SVG_MEETORSLICE_UNKNOWN = 0
  
  public export
  SVG_PRESERVEASPECTRATIO_NONE : UInt16
  SVG_PRESERVEASPECTRATIO_NONE = 1
  
  public export
  SVG_PRESERVEASPECTRATIO_UNKNOWN : UInt16
  SVG_PRESERVEASPECTRATIO_UNKNOWN = 0
  
  public export
  SVG_PRESERVEASPECTRATIO_XMAXYMAX : UInt16
  SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10
  
  public export
  SVG_PRESERVEASPECTRATIO_XMAXYMID : UInt16
  SVG_PRESERVEASPECTRATIO_XMAXYMID = 7
  
  public export
  SVG_PRESERVEASPECTRATIO_XMAXYMIN : UInt16
  SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4
  
  public export
  SVG_PRESERVEASPECTRATIO_XMIDYMAX : UInt16
  SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9
  
  public export
  SVG_PRESERVEASPECTRATIO_XMIDYMID : UInt16
  SVG_PRESERVEASPECTRATIO_XMIDYMID = 6
  
  public export
  SVG_PRESERVEASPECTRATIO_XMIDYMIN : UInt16
  SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3
  
  public export
  SVG_PRESERVEASPECTRATIO_XMINYMAX : UInt16
  SVG_PRESERVEASPECTRATIO_XMINYMAX = 8
  
  public export
  SVG_PRESERVEASPECTRATIO_XMINYMID : UInt16
  SVG_PRESERVEASPECTRATIO_XMINYMID = 5
  
  public export
  SVG_PRESERVEASPECTRATIO_XMINYMIN : UInt16
  SVG_PRESERVEASPECTRATIO_XMINYMIN = 2
  
  export
  align : SVGPreserveAspectRatio -> Attribute True I UInt16
  align = fromPrim "SVGPreserveAspectRatio.getalign" prim__align prim__setAlign
  
  export
  meetOrSlice : SVGPreserveAspectRatio -> Attribute True I UInt16
  meetOrSlice = fromPrim "SVGPreserveAspectRatio.getmeetOrSlice"
                         prim__meetOrSlice
                         prim__setMeetOrSlice

namespace SVGRadialGradientElement
  
  public export
  JSType SVGRadialGradientElement where
    parents =  [ SVGGradientElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
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
  
  public export
  JSType SVGRectElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
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
  
  public export
  JSType SVGSVGElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGTests
              , Slottable
              , WindowEventHandlers
              ]
  
  export
  currentScale : SVGSVGElement -> Attribute True I Double
  currentScale = fromPrim "SVGSVGElement.getcurrentScale"
                          prim__currentScale
                          prim__setCurrentScale
  
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
  checkEnclosure :  (obj : SVGSVGElement)
                 -> (element : SVGElement)
                 -> (rect : DOMRectReadOnly)
                 -> JSIO Bool
  checkEnclosure a b c = tryJS "SVGSVGElement.checkEnclosure"
                       $ SVGSVGElement.prim__checkEnclosure a b c
  
  export
  checkIntersection :  (obj : SVGSVGElement)
                    -> (element : SVGElement)
                    -> (rect : DOMRectReadOnly)
                    -> JSIO Bool
  checkIntersection a b c = tryJS "SVGSVGElement.checkIntersection"
                          $ SVGSVGElement.prim__checkIntersection a b c
  
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
  createSVGTransformFromMatrix :  (obj : SVGSVGElement)
                               -> (matrix : Optional DOMMatrix2DInit)
                               -> JSIO SVGTransform
  createSVGTransformFromMatrix a b = primJS
                                   $ SVGSVGElement.prim__createSVGTransformFromMatrix a
                                                                                      (toFFI b)

  export
  createSVGTransformFromMatrix' : (obj : SVGSVGElement) -> JSIO SVGTransform
  createSVGTransformFromMatrix' a = primJS
                                  $ SVGSVGElement.prim__createSVGTransformFromMatrix a
                                                                                     undef
  
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
  getEnclosureList :  (obj : SVGSVGElement)
                   -> (rect : DOMRectReadOnly)
                   -> (referenceElement : Maybe SVGElement)
                   -> JSIO NodeList
  getEnclosureList a b c = primJS
                         $ SVGSVGElement.prim__getEnclosureList a b (toFFI c)
  
  export
  getIntersectionList :  (obj : SVGSVGElement)
                      -> (rect : DOMRectReadOnly)
                      -> (referenceElement : Maybe SVGElement)
                      -> JSIO NodeList
  getIntersectionList a b c = primJS
                            $ SVGSVGElement.prim__getIntersectionList a
                                                                      b
                                                                      (toFFI c)
  
  export
  suspendRedraw :  (obj : SVGSVGElement)
                -> (maxWaitMilliseconds : UInt32)
                -> JSIO UInt32
  suspendRedraw a b = primJS $ SVGSVGElement.prim__suspendRedraw a b
  
  export
  unsuspendRedrawAll : (obj : SVGSVGElement) -> JSIO ()
  unsuspendRedrawAll a = primJS $ SVGSVGElement.prim__unsuspendRedrawAll a
  
  export
  unsuspendRedraw :  (obj : SVGSVGElement)
                  -> (suspendHandleID : UInt32)
                  -> JSIO ()
  unsuspendRedraw a b = primJS $ SVGSVGElement.prim__unsuspendRedraw a b

namespace SVGScriptElement
  
  public export
  JSType SVGScriptElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
  export
  crossOrigin : SVGScriptElement -> Attribute False Maybe String
  crossOrigin = fromNullablePrim "SVGScriptElement.getcrossOrigin"
                                 prim__crossOrigin
                                 prim__setCrossOrigin
  
  export
  type : SVGScriptElement -> Attribute True I String
  type = fromPrim "SVGScriptElement.gettype" prim__type prim__setType

namespace SVGStopElement
  
  public export
  JSType SVGStopElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  export
  offset : (obj : SVGStopElement) -> JSIO SVGAnimatedNumber
  offset a = primJS $ SVGStopElement.prim__offset a

namespace SVGStringList
  
  public export
  JSType SVGStringList where
    parents =  [ Object ]

    mixins =  []
  
  export
  set :  (obj : SVGStringList)
      -> (index : UInt32)
      -> (newItem : String)
      -> JSIO ()
  set a b c = primJS $ SVGStringList.prim__set a b c
  
  export
  length : (obj : SVGStringList) -> JSIO UInt32
  length a = primJS $ SVGStringList.prim__length a
  
  export
  numberOfItems : (obj : SVGStringList) -> JSIO UInt32
  numberOfItems a = primJS $ SVGStringList.prim__numberOfItems a
  
  export
  appendItem : (obj : SVGStringList) -> (newItem : String) -> JSIO String
  appendItem a b = primJS $ SVGStringList.prim__appendItem a b
  
  export
  clear : (obj : SVGStringList) -> JSIO ()
  clear a = primJS $ SVGStringList.prim__clear a
  
  export
  getItem : (obj : SVGStringList) -> (index : UInt32) -> JSIO String
  getItem a b = primJS $ SVGStringList.prim__getItem a b
  
  export
  initialize : (obj : SVGStringList) -> (newItem : String) -> JSIO String
  initialize a b = primJS $ SVGStringList.prim__initialize a b
  
  export
  insertItemBefore :  (obj : SVGStringList)
                   -> (newItem : String)
                   -> (index : UInt32)
                   -> JSIO String
  insertItemBefore a b c = primJS $ SVGStringList.prim__insertItemBefore a b c
  
  export
  removeItem : (obj : SVGStringList) -> (index : UInt32) -> JSIO String
  removeItem a b = primJS $ SVGStringList.prim__removeItem a b
  
  export
  replaceItem :  (obj : SVGStringList)
              -> (newItem : String)
              -> (index : UInt32)
              -> JSIO String
  replaceItem a b c = primJS $ SVGStringList.prim__replaceItem a b c

namespace SVGStyleElement
  
  public export
  JSType SVGStyleElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  export
  media : SVGStyleElement -> Attribute True I String
  media = fromPrim "SVGStyleElement.getmedia" prim__media prim__setMedia
  
  export
  title : SVGStyleElement -> Attribute True I String
  title = fromPrim "SVGStyleElement.gettitle" prim__title prim__setTitle
  
  export
  type : SVGStyleElement -> Attribute True I String
  type = fromPrim "SVGStyleElement.gettype" prim__type prim__setType

namespace SVGSwitchElement
  
  public export
  JSType SVGSwitchElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGSymbolElement
  
  public export
  JSType SVGSymbolElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGTests
              , Slottable
              ]

namespace SVGTSpanElement
  
  public export
  JSType SVGTSpanElement where
    parents =  [ SVGTextPositioningElement
               , SVGTextContentElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGTextContentElement
  
  public export
  JSType SVGTextContentElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  public export
  LENGTHADJUST_SPACING : UInt16
  LENGTHADJUST_SPACING = 1
  
  public export
  LENGTHADJUST_SPACINGANDGLYPHS : UInt16
  LENGTHADJUST_SPACINGANDGLYPHS = 2
  
  public export
  LENGTHADJUST_UNKNOWN : UInt16
  LENGTHADJUST_UNKNOWN = 0
  
  export
  lengthAdjust : (obj : SVGTextContentElement) -> JSIO SVGAnimatedEnumeration
  lengthAdjust a = primJS $ SVGTextContentElement.prim__lengthAdjust a
  
  export
  textLength : (obj : SVGTextContentElement) -> JSIO SVGAnimatedLength
  textLength a = primJS $ SVGTextContentElement.prim__textLength a
  
  export
  getCharNumAtPosition :  (obj : SVGTextContentElement)
                       -> (point : Optional DOMPointInit)
                       -> JSIO Int32
  getCharNumAtPosition a b = primJS
                           $ SVGTextContentElement.prim__getCharNumAtPosition a
                                                                              (toFFI b)

  export
  getCharNumAtPosition' : (obj : SVGTextContentElement) -> JSIO Int32
  getCharNumAtPosition' a = primJS
                          $ SVGTextContentElement.prim__getCharNumAtPosition a
                                                                             undef
  
  export
  getComputedTextLength : (obj : SVGTextContentElement) -> JSIO Double
  getComputedTextLength a = primJS
                          $ SVGTextContentElement.prim__getComputedTextLength a
  
  export
  getEndPositionOfChar :  (obj : SVGTextContentElement)
                       -> (charnum : UInt32)
                       -> JSIO DOMPoint
  getEndPositionOfChar a b = primJS
                           $ SVGTextContentElement.prim__getEndPositionOfChar a
                                                                              b
  
  export
  getExtentOfChar :  (obj : SVGTextContentElement)
                  -> (charnum : UInt32)
                  -> JSIO DOMRect
  getExtentOfChar a b = primJS $ SVGTextContentElement.prim__getExtentOfChar a b
  
  export
  getNumberOfChars : (obj : SVGTextContentElement) -> JSIO Int32
  getNumberOfChars a = primJS $ SVGTextContentElement.prim__getNumberOfChars a
  
  export
  getRotationOfChar :  (obj : SVGTextContentElement)
                    -> (charnum : UInt32)
                    -> JSIO Double
  getRotationOfChar a b = primJS
                        $ SVGTextContentElement.prim__getRotationOfChar a b
  
  export
  getStartPositionOfChar :  (obj : SVGTextContentElement)
                         -> (charnum : UInt32)
                         -> JSIO DOMPoint
  getStartPositionOfChar a b = primJS
                             $ SVGTextContentElement.prim__getStartPositionOfChar a
                                                                                  b
  
  export
  getSubStringLength :  (obj : SVGTextContentElement)
                     -> (charnum : UInt32)
                     -> (nchars : UInt32)
                     -> JSIO Double
  getSubStringLength a b c = primJS
                           $ SVGTextContentElement.prim__getSubStringLength a
                                                                            b
                                                                            c
  
  export
  selectSubString :  (obj : SVGTextContentElement)
                  -> (charnum : UInt32)
                  -> (nchars : UInt32)
                  -> JSIO ()
  selectSubString a b c = primJS
                        $ SVGTextContentElement.prim__selectSubString a b c

namespace SVGTextElement
  
  public export
  JSType SVGTextElement where
    parents =  [ SVGTextPositioningElement
               , SVGTextContentElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGTextPathElement
  
  public export
  JSType SVGTextPathElement where
    parents =  [ SVGTextContentElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  public export
  TEXTPATH_METHODTYPE_ALIGN : UInt16
  TEXTPATH_METHODTYPE_ALIGN = 1
  
  public export
  TEXTPATH_METHODTYPE_STRETCH : UInt16
  TEXTPATH_METHODTYPE_STRETCH = 2
  
  public export
  TEXTPATH_METHODTYPE_UNKNOWN : UInt16
  TEXTPATH_METHODTYPE_UNKNOWN = 0
  
  public export
  TEXTPATH_SPACINGTYPE_AUTO : UInt16
  TEXTPATH_SPACINGTYPE_AUTO = 1
  
  public export
  TEXTPATH_SPACINGTYPE_EXACT : UInt16
  TEXTPATH_SPACINGTYPE_EXACT = 2
  
  public export
  TEXTPATH_SPACINGTYPE_UNKNOWN : UInt16
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
  
  public export
  JSType SVGTextPositioningElement where
    parents =  [ SVGTextContentElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  export
  dx : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  dx a = primJS $ SVGTextPositioningElement.prim__dx a
  
  export
  dy : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  dy a = primJS $ SVGTextPositioningElement.prim__dy a
  
  export
  rotate : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedNumberList
  rotate a = primJS $ SVGTextPositioningElement.prim__rotate a
  
  export
  x : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  x a = primJS $ SVGTextPositioningElement.prim__x a
  
  export
  y : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  y a = primJS $ SVGTextPositioningElement.prim__y a

namespace SVGTitleElement
  
  public export
  JSType SVGTitleElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGTransform
  
  public export
  JSType SVGTransform where
    parents =  [ Object ]

    mixins =  []
  
  public export
  SVG_TRANSFORM_MATRIX : UInt16
  SVG_TRANSFORM_MATRIX = 1
  
  public export
  SVG_TRANSFORM_ROTATE : UInt16
  SVG_TRANSFORM_ROTATE = 4
  
  public export
  SVG_TRANSFORM_SCALE : UInt16
  SVG_TRANSFORM_SCALE = 3
  
  public export
  SVG_TRANSFORM_SKEWX : UInt16
  SVG_TRANSFORM_SKEWX = 5
  
  public export
  SVG_TRANSFORM_SKEWY : UInt16
  SVG_TRANSFORM_SKEWY = 6
  
  public export
  SVG_TRANSFORM_TRANSLATE : UInt16
  SVG_TRANSFORM_TRANSLATE = 2
  
  public export
  SVG_TRANSFORM_UNKNOWN : UInt16
  SVG_TRANSFORM_UNKNOWN = 0
  
  export
  angle : (obj : SVGTransform) -> JSIO Double
  angle a = primJS $ SVGTransform.prim__angle a
  
  export
  matrix : (obj : SVGTransform) -> JSIO DOMMatrix
  matrix a = primJS $ SVGTransform.prim__matrix a
  
  export
  type : (obj : SVGTransform) -> JSIO UInt16
  type a = primJS $ SVGTransform.prim__type a
  
  export
  setMatrix :  (obj : SVGTransform)
            -> (matrix : Optional DOMMatrix2DInit)
            -> JSIO ()
  setMatrix a b = primJS $ SVGTransform.prim__setMatrix a (toFFI b)

  export
  setMatrix' : (obj : SVGTransform) -> JSIO ()
  setMatrix' a = primJS $ SVGTransform.prim__setMatrix a undef
  
  export
  setRotate :  (obj : SVGTransform)
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
  setTranslate :  (obj : SVGTransform)
               -> (tx : Double)
               -> (ty : Double)
               -> JSIO ()
  setTranslate a b c = primJS $ SVGTransform.prim__setTranslate a b c

namespace SVGTransformList
  
  public export
  JSType SVGTransformList where
    parents =  [ Object ]

    mixins =  []
  
  export
  set :  (obj : SVGTransformList)
      -> (index : UInt32)
      -> (newItem : SVGTransform)
      -> JSIO ()
  set a b c = primJS $ SVGTransformList.prim__set a b c
  
  export
  length : (obj : SVGTransformList) -> JSIO UInt32
  length a = primJS $ SVGTransformList.prim__length a
  
  export
  numberOfItems : (obj : SVGTransformList) -> JSIO UInt32
  numberOfItems a = primJS $ SVGTransformList.prim__numberOfItems a
  
  export
  appendItem :  (obj : SVGTransformList)
             -> (newItem : SVGTransform)
             -> JSIO SVGTransform
  appendItem a b = primJS $ SVGTransformList.prim__appendItem a b
  
  export
  clear : (obj : SVGTransformList) -> JSIO ()
  clear a = primJS $ SVGTransformList.prim__clear a
  
  export
  consolidate : (obj : SVGTransformList) -> JSIO (Maybe SVGTransform)
  consolidate a = tryJS "SVGTransformList.consolidate"
                $ SVGTransformList.prim__consolidate a
  
  export
  createSVGTransformFromMatrix :  (obj : SVGTransformList)
                               -> (matrix : Optional DOMMatrix2DInit)
                               -> JSIO SVGTransform
  createSVGTransformFromMatrix a b = primJS
                                   $ SVGTransformList.prim__createSVGTransformFromMatrix a
                                                                                         (toFFI b)

  export
  createSVGTransformFromMatrix' : (obj : SVGTransformList) -> JSIO SVGTransform
  createSVGTransformFromMatrix' a = primJS
                                  $ SVGTransformList.prim__createSVGTransformFromMatrix a
                                                                                        undef
  
  export
  getItem : (obj : SVGTransformList) -> (index : UInt32) -> JSIO SVGTransform
  getItem a b = primJS $ SVGTransformList.prim__getItem a b
  
  export
  initialize :  (obj : SVGTransformList)
             -> (newItem : SVGTransform)
             -> JSIO SVGTransform
  initialize a b = primJS $ SVGTransformList.prim__initialize a b
  
  export
  insertItemBefore :  (obj : SVGTransformList)
                   -> (newItem : SVGTransform)
                   -> (index : UInt32)
                   -> JSIO SVGTransform
  insertItemBefore a b c = primJS
                         $ SVGTransformList.prim__insertItemBefore a b c
  
  export
  removeItem : (obj : SVGTransformList) -> (index : UInt32) -> JSIO SVGTransform
  removeItem a b = primJS $ SVGTransformList.prim__removeItem a b
  
  export
  replaceItem :  (obj : SVGTransformList)
              -> (newItem : SVGTransform)
              -> (index : UInt32)
              -> JSIO SVGTransform
  replaceItem a b c = primJS $ SVGTransformList.prim__replaceItem a b c

namespace SVGUnitTypes
  
  public export
  JSType SVGUnitTypes where
    parents =  [ Object ]

    mixins =  []
  
  public export
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : UInt16
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2
  
  public export
  SVG_UNIT_TYPE_UNKNOWN : UInt16
  SVG_UNIT_TYPE_UNKNOWN = 0
  
  public export
  SVG_UNIT_TYPE_USERSPACEONUSE : UInt16
  SVG_UNIT_TYPE_USERSPACEONUSE = 1

namespace SVGUseElement
  
  public export
  JSType SVGUseElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , Object
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  export
  animatedInstanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
  animatedInstanceRoot a = tryJS "SVGUseElement.animatedInstanceRoot"
                         $ SVGUseElement.prim__animatedInstanceRoot a
  
  export
  height : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  height a = primJS $ SVGUseElement.prim__height a
  
  export
  instanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
  instanceRoot a = tryJS "SVGUseElement.instanceRoot"
                 $ SVGUseElement.prim__instanceRoot a
  
  export
  width : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  width a = primJS $ SVGUseElement.prim__width a
  
  export
  x : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  x a = primJS $ SVGUseElement.prim__x a
  
  export
  y : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  y a = primJS $ SVGUseElement.prim__y a

namespace SVGUseElementShadowRoot
  
  public export
  JSType SVGUseElementShadowRoot where
    parents =  [ ShadowRoot , DocumentFragment , Node , EventTarget , Object ]

    mixins =  [ DocumentOrShadowRoot
              , InnerHTML
              , NonElementParentNode
              , ParentNode
              ]

namespace SVGViewElement
  
  public export
  JSType SVGViewElement where
    parents =  [ SVGElement , Element , Node , EventTarget , Object ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , InnerHTML
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , Slottable
              ]

namespace ShadowAnimation
  
  public export
  JSType ShadowAnimation where
    parents =  [ Animation , EventTarget , Object ]

    mixins =  []
  
  export
  new : (source : Animation) -> (newTarget : Animatable) -> JSIO ShadowAnimation
  new a b = primJS $ ShadowAnimation.prim__new a b
  
  export
  sourceAnimation : (obj : ShadowAnimation) -> JSIO Animation
  sourceAnimation a = primJS $ ShadowAnimation.prim__sourceAnimation a

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace GetSVGDocument
  
  export
  getSVGDocument : (obj : GetSVGDocument) -> JSIO Document
  getSVGDocument a = primJS $ GetSVGDocument.prim__getSVGDocument a

namespace SVGAnimatedPoints
  
  export
  animatedPoints : (obj : SVGAnimatedPoints) -> JSIO SVGPointList
  animatedPoints a = primJS $ SVGAnimatedPoints.prim__animatedPoints a
  
  export
  points : (obj : SVGAnimatedPoints) -> JSIO SVGPointList
  points a = primJS $ SVGAnimatedPoints.prim__points a

namespace SVGElementInstance
  
  export
  correspondingElement : (obj : SVGElementInstance) -> JSIO (Maybe SVGElement)
  correspondingElement a = tryJS "SVGElementInstance.correspondingElement"
                         $ SVGElementInstance.prim__correspondingElement a
  
  export
  correspondingUseElement :  (obj : SVGElementInstance)
                          -> JSIO (Maybe SVGUseElement)
  correspondingUseElement a = tryJS "SVGElementInstance.correspondingUseElement"
                            $ SVGElementInstance.prim__correspondingUseElement a

namespace SVGFitToViewBox
  
  export
  preserveAspectRatio :  (obj : SVGFitToViewBox)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a = primJS $ SVGFitToViewBox.prim__preserveAspectRatio a
  
  export
  viewBox : (obj : SVGFitToViewBox) -> JSIO SVGAnimatedRect
  viewBox a = primJS $ SVGFitToViewBox.prim__viewBox a

namespace SVGTests
  
  export
  requiredExtensions : (obj : SVGTests) -> JSIO SVGStringList
  requiredExtensions a = primJS $ SVGTests.prim__requiredExtensions a
  
  export
  systemLanguage : (obj : SVGTests) -> JSIO SVGStringList
  systemLanguage a = primJS $ SVGTests.prim__systemLanguage a

namespace SVGURIReference
  
  export
  href : (obj : SVGURIReference) -> JSIO SVGAnimatedString
  href a = primJS $ SVGURIReference.prim__href a

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  public export
  JSType SVGBoundingBoxOptions where
    parents =  [ Object ]

    mixins =  []
  
  export
  new :  (fill : Optional Bool)
      -> (stroke : Optional Bool)
      -> (markers : Optional Bool)
      -> (clipped : Optional Bool)
      -> JSIO SVGBoundingBoxOptions
  new a b c d = primJS
              $ SVGBoundingBoxOptions.prim__new (toFFI a)
                                                (toFFI b)
                                                (toFFI c)
                                                (toFFI d)

  export
  new' : JSIO SVGBoundingBoxOptions
  new' = primJS $ SVGBoundingBoxOptions.prim__new undef undef undef undef
  
  export
  clipped : SVGBoundingBoxOptions -> Attribute True Optional Bool
  clipped = fromUndefOrPrim "SVGBoundingBoxOptions.getclipped"
                            prim__clipped
                            prim__setClipped
                            False
  
  export
  fill : SVGBoundingBoxOptions -> Attribute True Optional Bool
  fill = fromUndefOrPrim "SVGBoundingBoxOptions.getfill"
                         prim__fill
                         prim__setFill
                         True
  
  export
  markers : SVGBoundingBoxOptions -> Attribute True Optional Bool
  markers = fromUndefOrPrim "SVGBoundingBoxOptions.getmarkers"
                            prim__markers
                            prim__setMarkers
                            False
  
  export
  stroke : SVGBoundingBoxOptions -> Attribute True Optional Bool
  stroke = fromUndefOrPrim "SVGBoundingBoxOptions.getstroke"
                           prim__stroke
                           prim__setStroke
                           False
