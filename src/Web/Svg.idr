module Web.Svg
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MathMLElement
  
  public export
  JSType MathMLElement where
    parents =  [ Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLHyperlinkElementUtils
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr

  export
  relList : (obj : SVGAElement) -> JSIO DOMTokenList
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : SVGAElement) -> JSIO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : SVGAElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGAElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGAElement) -> (v : String) -> JSIO ()

namespace SVGAngle
  
  public export
  JSType SVGAngle where
    parents =  [ JSObject ]

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
  SVG_ANGLETYPE_UNKNOWN = 0o0
  
  public export
  SVG_ANGLETYPE_UNSPECIFIED : UInt16
  SVG_ANGLETYPE_UNSPECIFIED = 1
  
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : AnyPtr -> PrimIO AnyPtr

  export
  unitType : (obj : SVGAngle) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGAngle) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGAngle) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGAngle) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGAngle) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGAngle) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGAngle) -> (v : Double) -> JSIO ()

namespace SVGAnimatedAngle
  
  public export
  JSType SVGAnimatedAngle where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle

namespace SVGAnimatedBoolean
  
  public export
  JSType SVGAnimatedBoolean where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedBoolean) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedBoolean) -> (v : Bool) -> JSIO ()

namespace SVGAnimatedEnumeration
  
  public export
  JSType SVGAnimatedEnumeration where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedEnumeration) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedEnumeration) -> JSIO UInt16

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedEnumeration) -> (v : UInt16) -> JSIO ()

namespace SVGAnimatedInteger
  
  public export
  JSType SVGAnimatedInteger where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedInteger) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedInteger) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedInteger) -> (v : Int32) -> JSIO ()

namespace SVGAnimatedLength
  
  public export
  JSType SVGAnimatedLength where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLength) -> JSIO SVGLength

namespace SVGAnimatedLengthList
  
  public export
  JSType SVGAnimatedLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList

namespace SVGAnimatedNumber
  
  public export
  JSType SVGAnimatedNumber where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumber) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumber) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedNumber) -> (v : Double) -> JSIO ()

namespace SVGAnimatedNumberList
  
  public export
  JSType SVGAnimatedNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList

namespace SVGAnimatedPreserveAspectRatio
  
  public export
  JSType SVGAnimatedPreserveAspectRatio where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal :  (obj : SVGAnimatedPreserveAspectRatio)
          -> JSIO SVGPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal :  (obj : SVGAnimatedPreserveAspectRatio)
          -> JSIO SVGPreserveAspectRatio

namespace SVGAnimatedRect
  
  public export
  JSType SVGAnimatedRect where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedRect) -> JSIO DOMRectReadOnly
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedRect) -> JSIO DOMRect

namespace SVGAnimatedString
  
  public export
  JSType SVGAnimatedString where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedString) -> JSIO String
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedString) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedString) -> (v : String) -> JSIO ()

namespace SVGAnimatedTransformList
  
  public export
  JSType SVGAnimatedTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList

namespace SVGCircleElement
  
  public export
  JSType SVGCircleElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr

  export
  cx : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength

namespace SVGDefsElement
  
  public export
  JSType SVGDefsElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGDescElement
  
  public export
  JSType SVGDescElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGElement
  
  public export
  JSType SVGElement where
    parents =  [ Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr

  export
  className : (obj : SVGElement) -> JSIO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : AnyPtr -> PrimIO AnyPtr

  export
  ownerSVGElement : (obj : SVGElement) -> JSIO (Maybe SVGSVGElement)
  
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : AnyPtr -> PrimIO AnyPtr

  export
  viewportElement : (obj : SVGElement) -> JSIO (Maybe SVGElement)

namespace SVGEllipseElement
  
  public export
  JSType SVGEllipseElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr

  export
  cx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength

namespace SVGForeignObjectElement
  
  public export
  JSType SVGForeignObjectElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength

namespace SVGGElement
  
  public export
  JSType SVGGElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.pathLength"
  prim__pathLength : AnyPtr -> PrimIO AnyPtr

  export
  pathLength : (obj : SVGGeometryElement) -> JSIO SVGAnimatedNumber

namespace SVGGradientElement
  
  public export
  JSType SVGGradientElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
  SVG_SPREADMETHOD_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.gradientTransform"
  prim__gradientTransform : AnyPtr -> PrimIO AnyPtr

  export
  gradientTransform :  (obj : SVGGradientElement)
                    -> JSIO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : AnyPtr -> PrimIO AnyPtr

  export
  gradientUnits : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : AnyPtr -> PrimIO AnyPtr

  export
  spreadMethod : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration

namespace SVGGraphicsElement
  
  public export
  JSType SVGGraphicsElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

  export
  transform : (obj : SVGGraphicsElement) -> JSIO SVGAnimatedTransformList

namespace SVGImageElement
  
  public export
  JSType SVGImageElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGImageElement)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : SVGImageElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGImageElement) -> (v : Maybe String) -> JSIO ()

namespace SVGLength
  
  public export
  JSType SVGLength where
    parents =  [ JSObject ]

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
  SVG_LENGTHTYPE_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : AnyPtr -> PrimIO AnyPtr

  export
  unitType : (obj : SVGLength) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGLength) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGLength) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGLength) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGLength) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGLength) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGLength) -> (v : Double) -> JSIO ()

namespace SVGLengthList
  
  public export
  JSType SVGLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGLengthList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGLengthList) -> JSIO UInt32

namespace SVGLineElement
  
  public export
  JSType SVGLineElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr

  export
  x1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength

namespace SVGLinearGradientElement
  
  public export
  JSType SVGLinearGradientElement where
    parents =  [ SVGGradientElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr

  export
  x1 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength

namespace SVGMarkerElement
  
  public export
  JSType SVGMarkerElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
  SVG_MARKERUNITS_UNKNOWN = 0o0
  
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
  SVG_MARKER_ORIENT_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.markerHeight"
  prim__markerHeight : AnyPtr -> PrimIO AnyPtr

  export
  markerHeight : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : AnyPtr -> PrimIO AnyPtr

  export
  markerUnits : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : AnyPtr -> PrimIO AnyPtr

  export
  markerWidth : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : AnyPtr -> PrimIO AnyPtr

  export
  orientAngle : (obj : SVGMarkerElement) -> JSIO SVGAnimatedAngle
  
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : AnyPtr -> PrimIO AnyPtr

  export
  orientType : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : AnyPtr -> PrimIO AnyPtr

  export
  refX : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : AnyPtr -> PrimIO AnyPtr

  export
  refY : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : AnyPtr -> PrimIO AnyPtr

  export
  orient : (obj : SVGMarkerElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.orient  = v}"
  prim__setOrient : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrient : (obj : SVGMarkerElement) -> (v : String) -> JSIO ()

namespace SVGMetadataElement
  
  public export
  JSType SVGMetadataElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGNumber
  
  public export
  JSType SVGNumber where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGNumber) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGNumber) -> (v : Double) -> JSIO ()

namespace SVGNumberList
  
  public export
  JSType SVGNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGNumberList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGNumberList) -> JSIO UInt32

namespace SVGPathElement
  
  public export
  JSType SVGPathElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

namespace SVGPatternElement
  
  public export
  JSType SVGPatternElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.patternContentUnits"
  prim__patternContentUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternContentUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.patternTransform"
  prim__patternTransform : AnyPtr -> PrimIO AnyPtr

  export
  patternTransform : (obj : SVGPatternElement) -> JSIO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.patternUnits"
  prim__patternUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength

namespace SVGPointList
  
  public export
  JSType SVGPointList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGPointList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGPointList) -> JSIO UInt32

namespace SVGPolygonElement
  
  public export
  JSType SVGPolygonElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
    parents =  [ JSObject ]

    mixins =  []
  
  public export
  SVG_MEETORSLICE_MEET : UInt16
  SVG_MEETORSLICE_MEET = 1
  
  public export
  SVG_MEETORSLICE_SLICE : UInt16
  SVG_MEETORSLICE_SLICE = 2
  
  public export
  SVG_MEETORSLICE_UNKNOWN : UInt16
  SVG_MEETORSLICE_UNKNOWN = 0o0
  
  public export
  SVG_PRESERVEASPECTRATIO_NONE : UInt16
  SVG_PRESERVEASPECTRATIO_NONE = 1
  
  public export
  SVG_PRESERVEASPECTRATIO_UNKNOWN : UInt16
  SVG_PRESERVEASPECTRATIO_UNKNOWN = 0o0
  
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
  
  %foreign "browser:lambda:x=>x.align"
  prim__align : AnyPtr -> PrimIO AnyPtr

  export
  align : (obj : SVGPreserveAspectRatio) -> JSIO UInt16

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : AnyPtr -> PrimIO AnyPtr

  export
  meetOrSlice : (obj : SVGPreserveAspectRatio) -> JSIO UInt16

  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice  = v}"
  prim__setMeetOrSlice : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMeetOrSlice : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> JSIO ()

namespace SVGRadialGradientElement
  
  public export
  JSType SVGRadialGradientElement where
    parents =  [ SVGGradientElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr

  export
  cx : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fr"
  prim__fr : AnyPtr -> PrimIO AnyPtr

  export
  fr : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fx"
  prim__fx : AnyPtr -> PrimIO AnyPtr

  export
  fx : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fy"
  prim__fy : AnyPtr -> PrimIO AnyPtr

  export
  fy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength

namespace SVGRectElement
  
  public export
  JSType SVGRectElement where
    parents =  [ SVGGeometryElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGRectElement) -> JSIO SVGAnimatedLength

namespace SVGSVGElement
  
  public export
  JSType SVGSVGElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGTests
              , Slottable
              , WindowEventHandlers
              ]
  
  %foreign "browser:lambda:x=>x.currentTranslate"
  prim__currentTranslate : AnyPtr -> PrimIO AnyPtr

  export
  currentTranslate : (obj : SVGSVGElement) -> JSIO DOMPointReadOnly
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.currentScale"
  prim__currentScale : AnyPtr -> PrimIO AnyPtr

  export
  currentScale : (obj : SVGSVGElement) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.currentScale  = v}"
  prim__setCurrentScale : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentScale : (obj : SVGSVGElement) -> (v : Double) -> JSIO ()

namespace SVGScriptElement
  
  public export
  JSType SVGScriptElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : SVGScriptElement) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGScriptElement) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGScriptElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGScriptElement) -> (v : String) -> JSIO ()

namespace SVGStopElement
  
  public export
  JSType SVGStopElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

  export
  offset : (obj : SVGStopElement) -> JSIO SVGAnimatedNumber

namespace SVGStringList
  
  public export
  JSType SVGStringList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGStringList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGStringList) -> JSIO UInt32

namespace SVGStyleElement
  
  public export
  JSType SVGStyleElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  export
  media : (obj : SVGStyleElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : SVGStyleElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : SVGStyleElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : SVGStyleElement) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGStyleElement) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGStyleElement) -> (v : String) -> JSIO ()

namespace SVGSwitchElement
  
  public export
  JSType SVGSwitchElement where
    parents =  [ SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
  LENGTHADJUST_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.lengthAdjust"
  prim__lengthAdjust : AnyPtr -> PrimIO AnyPtr

  export
  lengthAdjust : (obj : SVGTextContentElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

  export
  textLength : (obj : SVGTextContentElement) -> JSIO SVGAnimatedLength

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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
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
  TEXTPATH_METHODTYPE_UNKNOWN = 0o0
  
  public export
  TEXTPATH_SPACINGTYPE_AUTO : UInt16
  TEXTPATH_SPACINGTYPE_AUTO = 1
  
  public export
  TEXTPATH_SPACINGTYPE_EXACT : UInt16
  TEXTPATH_SPACINGTYPE_EXACT = 2
  
  public export
  TEXTPATH_SPACINGTYPE_UNKNOWN : UInt16
  TEXTPATH_SPACINGTYPE_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.method"
  prim__method : AnyPtr -> PrimIO AnyPtr

  export
  method : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : AnyPtr -> PrimIO AnyPtr

  export
  spacing : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : SVGTextPathElement) -> JSIO SVGAnimatedLength

namespace SVGTextPositioningElement
  
  public export
  JSType SVGTextPositioningElement where
    parents =  [ SVGTextContentElement
               , SVGGraphicsElement
               , SVGElement
               , Element
               , Node
               , EventTarget
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.dx"
  prim__dx : AnyPtr -> PrimIO AnyPtr

  export
  dx : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.dy"
  prim__dy : AnyPtr -> PrimIO AnyPtr

  export
  dy : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.rotate"
  prim__rotate : AnyPtr -> PrimIO AnyPtr

  export
  rotate : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedNumberList
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList

namespace SVGTitleElement
  
  public export
  JSType SVGTitleElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGTransform
  
  public export
  JSType SVGTransform where
    parents =  [ JSObject ]

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
  SVG_TRANSFORM_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.angle"
  prim__angle : AnyPtr -> PrimIO AnyPtr

  export
  angle : (obj : SVGTransform) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : AnyPtr -> PrimIO AnyPtr

  export
  matrix : (obj : SVGTransform) -> JSIO DOMMatrix
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGTransform) -> JSIO UInt16

namespace SVGTransformList
  
  public export
  JSType SVGTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGTransformList) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGTransformList) -> JSIO UInt32

namespace SVGUnitTypes
  
  public export
  JSType SVGUnitTypes where
    parents =  [ JSObject ]

    mixins =  []
  
  public export
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : UInt16
  SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2
  
  public export
  SVG_UNIT_TYPE_UNKNOWN : UInt16
  SVG_UNIT_TYPE_UNKNOWN = 0o0
  
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
               , JSObject
               ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]
  
  %foreign "browser:lambda:x=>x.animatedInstanceRoot"
  prim__animatedInstanceRoot : AnyPtr -> PrimIO AnyPtr

  export
  animatedInstanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.instanceRoot"
  prim__instanceRoot : AnyPtr -> PrimIO AnyPtr

  export
  instanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGUseElement) -> JSIO SVGAnimatedLength

namespace SVGUseElementShadowRoot
  
  public export
  JSType SVGUseElementShadowRoot where
    parents =  [ ShadowRoot , DocumentFragment , Node , EventTarget , JSObject ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]

namespace SVGViewElement
  
  public export
  JSType SVGViewElement where
    parents =  [ SVGElement , Element , Node , EventTarget , JSObject ]

    mixins =  [ Animatable
              , ChildNode
              , DocumentAndElementEventHandlers
              , ElementCSSInlineStyle
              , GlobalEventHandlers
              , HTMLOrSVGElement
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , Slottable
              ]

namespace ShadowAnimation
  
  public export
  JSType ShadowAnimation where
    parents =  [ Animation , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.sourceAnimation"
  prim__sourceAnimation : AnyPtr -> PrimIO AnyPtr

  export
  sourceAnimation : (obj : ShadowAnimation) -> JSIO Animation

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


namespace SVGAnimatedPoints
  
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : AnyPtr -> PrimIO AnyPtr

  export
  animatedPoints : (obj : SVGAnimatedPoints) -> JSIO SVGPointList
  
  %foreign "browser:lambda:x=>x.points"
  prim__points : AnyPtr -> PrimIO AnyPtr

  export
  points : (obj : SVGAnimatedPoints) -> JSIO SVGPointList

namespace SVGElementInstance
  
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingElement : (obj : SVGElementInstance) -> JSIO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingUseElement :  (obj : SVGElementInstance)
                          -> JSIO (Maybe SVGUseElement)

namespace SVGFitToViewBox
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGFitToViewBox)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : AnyPtr -> PrimIO AnyPtr

  export
  viewBox : (obj : SVGFitToViewBox) -> JSIO SVGAnimatedRect

namespace SVGTests
  
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : AnyPtr -> PrimIO AnyPtr

  export
  requiredExtensions : (obj : SVGTests) -> JSIO SVGStringList
  
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : AnyPtr -> PrimIO AnyPtr

  export
  systemLanguage : (obj : SVGTests) -> JSIO SVGStringList

namespace SVGURIReference
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : SVGURIReference) -> JSIO SVGAnimatedString

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  public export
  JSType SVGBoundingBoxOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clipped"
  prim__clipped : AnyPtr -> PrimIO AnyPtr

  export
  clipped : (obj : SVGBoundingBoxOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.clipped  = v}"
  prim__setClipped : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipped : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : SVGBoundingBoxOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : AnyPtr -> PrimIO AnyPtr

  export
  markers : (obj : SVGBoundingBoxOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.markers  = v}"
  prim__setMarkers : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarkers : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : AnyPtr -> PrimIO AnyPtr

  export
  stroke : (obj : SVGBoundingBoxOptions) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.stroke  = v}"
  prim__setStroke : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStroke : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()

