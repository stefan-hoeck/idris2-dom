module Web.Svg
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MathMLElement
  
  public export
  JSVal MathMLElement where
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
  JSVal SVGAElement where
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
  relList : (obj : SVGAElement) -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : SVGAElement) -> IO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : SVGAElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGAElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGAElement) -> (v : String) -> IO ()

namespace SVGAngle
  
  public export
  JSVal SVGAngle where
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
  unitType : (obj : SVGAngle) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGAngle) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGAngle) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGAngle) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGAngle) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGAngle) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGAngle) -> (v : Double) -> IO ()

namespace SVGAnimatedAngle
  
  public export
  JSVal SVGAnimatedAngle where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedAngle) -> IO SVGAngle
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedAngle) -> IO SVGAngle

namespace SVGAnimatedBoolean
  
  public export
  JSVal SVGAnimatedBoolean where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedBoolean) -> IO Bool
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedBoolean) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedBoolean) -> (v : Bool) -> IO ()

namespace SVGAnimatedEnumeration
  
  public export
  JSVal SVGAnimatedEnumeration where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedEnumeration) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedEnumeration) -> IO UInt16

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedEnumeration) -> (v : UInt16) -> IO ()

namespace SVGAnimatedInteger
  
  public export
  JSVal SVGAnimatedInteger where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedInteger) -> IO Int32
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedInteger) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedInteger) -> (v : Int32) -> IO ()

namespace SVGAnimatedLength
  
  public export
  JSVal SVGAnimatedLength where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLength) -> IO SVGLength
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLength) -> IO SVGLength

namespace SVGAnimatedLengthList
  
  public export
  JSVal SVGAnimatedLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLengthList) -> IO SVGLengthList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLengthList) -> IO SVGLengthList

namespace SVGAnimatedNumber
  
  public export
  JSVal SVGAnimatedNumber where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumber) -> IO Double
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumber) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedNumber) -> (v : Double) -> IO ()

namespace SVGAnimatedNumberList
  
  public export
  JSVal SVGAnimatedNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumberList) -> IO SVGNumberList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumberList) -> IO SVGNumberList

namespace SVGAnimatedPreserveAspectRatio
  
  public export
  JSVal SVGAnimatedPreserveAspectRatio where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedPreserveAspectRatio) -> IO SVGPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedPreserveAspectRatio) -> IO SVGPreserveAspectRatio

namespace SVGAnimatedRect
  
  public export
  JSVal SVGAnimatedRect where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedRect) -> IO DOMRectReadOnly
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedRect) -> IO DOMRect

namespace SVGAnimatedString
  
  public export
  JSVal SVGAnimatedString where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedString) -> IO String
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedString) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedString) -> (v : String) -> IO ()

namespace SVGAnimatedTransformList
  
  public export
  JSVal SVGAnimatedTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedTransformList) -> IO SVGTransformList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedTransformList) -> IO SVGTransformList

namespace SVGCircleElement
  
  public export
  JSVal SVGCircleElement where
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
  cx : (obj : SVGCircleElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGCircleElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGCircleElement) -> IO SVGAnimatedLength

namespace SVGDefsElement
  
  public export
  JSVal SVGDefsElement where
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
  JSVal SVGDescElement where
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
  JSVal SVGElement where
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
  className : (obj : SVGElement) -> IO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : AnyPtr -> PrimIO AnyPtr

  export
  ownerSVGElement : (obj : SVGElement) -> IO (Maybe SVGSVGElement)
  
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : AnyPtr -> PrimIO AnyPtr

  export
  viewportElement : (obj : SVGElement) -> IO (Maybe SVGElement)

namespace SVGEllipseElement
  
  public export
  JSVal SVGEllipseElement where
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
  cx : (obj : SVGEllipseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGEllipseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGEllipseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGEllipseElement) -> IO SVGAnimatedLength

namespace SVGForeignObjectElement
  
  public export
  JSVal SVGForeignObjectElement where
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
  height : (obj : SVGForeignObjectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGForeignObjectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGForeignObjectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGForeignObjectElement) -> IO SVGAnimatedLength

namespace SVGGElement
  
  public export
  JSVal SVGGElement where
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
  JSVal SVGGeometryElement where
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
  pathLength : (obj : SVGGeometryElement) -> IO SVGAnimatedNumber

namespace SVGGradientElement
  
  public export
  JSVal SVGGradientElement where
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
  gradientTransform : (obj : SVGGradientElement) -> IO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : AnyPtr -> PrimIO AnyPtr

  export
  gradientUnits : (obj : SVGGradientElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : AnyPtr -> PrimIO AnyPtr

  export
  spreadMethod : (obj : SVGGradientElement) -> IO SVGAnimatedEnumeration

namespace SVGGraphicsElement
  
  public export
  JSVal SVGGraphicsElement where
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
  transform : (obj : SVGGraphicsElement) -> IO SVGAnimatedTransformList

namespace SVGImageElement
  
  public export
  JSVal SVGImageElement where
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
  height : (obj : SVGImageElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGImageElement)
                      -> IO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGImageElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGImageElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGImageElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : SVGImageElement) -> IO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGImageElement) -> (v : Maybe String) -> IO ()

namespace SVGLength
  
  public export
  JSVal SVGLength where
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
  unitType : (obj : SVGLength) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGLength) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGLength) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGLength) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGLength) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGLength) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGLength) -> (v : Double) -> IO ()

namespace SVGLengthList
  
  public export
  JSVal SVGLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGLengthList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGLengthList) -> IO UInt32

namespace SVGLineElement
  
  public export
  JSVal SVGLineElement where
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
  x1 : (obj : SVGLineElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLineElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLineElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLineElement) -> IO SVGAnimatedLength

namespace SVGLinearGradientElement
  
  public export
  JSVal SVGLinearGradientElement where
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
  x1 : (obj : SVGLinearGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLinearGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLinearGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLinearGradientElement) -> IO SVGAnimatedLength

namespace SVGMarkerElement
  
  public export
  JSVal SVGMarkerElement where
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
  markerHeight : (obj : SVGMarkerElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : AnyPtr -> PrimIO AnyPtr

  export
  markerUnits : (obj : SVGMarkerElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : AnyPtr -> PrimIO AnyPtr

  export
  markerWidth : (obj : SVGMarkerElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : AnyPtr -> PrimIO AnyPtr

  export
  orientAngle : (obj : SVGMarkerElement) -> IO SVGAnimatedAngle
  
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : AnyPtr -> PrimIO AnyPtr

  export
  orientType : (obj : SVGMarkerElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : AnyPtr -> PrimIO AnyPtr

  export
  refX : (obj : SVGMarkerElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : AnyPtr -> PrimIO AnyPtr

  export
  refY : (obj : SVGMarkerElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : AnyPtr -> PrimIO AnyPtr

  export
  orient : (obj : SVGMarkerElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.orient  = v}"
  prim__setOrient : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrient : (obj : SVGMarkerElement) -> (v : String) -> IO ()

namespace SVGMetadataElement
  
  public export
  JSVal SVGMetadataElement where
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
  JSVal SVGNumber where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGNumber) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGNumber) -> (v : Double) -> IO ()

namespace SVGNumberList
  
  public export
  JSVal SVGNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGNumberList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGNumberList) -> IO UInt32

namespace SVGPathElement
  
  public export
  JSVal SVGPathElement where
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
  JSVal SVGPatternElement where
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
  height : (obj : SVGPatternElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.patternContentUnits"
  prim__patternContentUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternContentUnits : (obj : SVGPatternElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.patternTransform"
  prim__patternTransform : AnyPtr -> PrimIO AnyPtr

  export
  patternTransform : (obj : SVGPatternElement) -> IO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.patternUnits"
  prim__patternUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternUnits : (obj : SVGPatternElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGPatternElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGPatternElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGPatternElement) -> IO SVGAnimatedLength

namespace SVGPointList
  
  public export
  JSVal SVGPointList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGPointList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGPointList) -> IO UInt32

namespace SVGPolygonElement
  
  public export
  JSVal SVGPolygonElement where
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
  JSVal SVGPolylineElement where
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
  JSVal SVGPreserveAspectRatio where
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
  align : (obj : SVGPreserveAspectRatio) -> IO UInt16

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> IO ()
  
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : AnyPtr -> PrimIO AnyPtr

  export
  meetOrSlice : (obj : SVGPreserveAspectRatio) -> IO UInt16

  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice  = v}"
  prim__setMeetOrSlice : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMeetOrSlice : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> IO ()

namespace SVGRadialGradientElement
  
  public export
  JSVal SVGRadialGradientElement where
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
  cx : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fr"
  prim__fr : AnyPtr -> PrimIO AnyPtr

  export
  fr : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fx"
  prim__fx : AnyPtr -> PrimIO AnyPtr

  export
  fx : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fy"
  prim__fy : AnyPtr -> PrimIO AnyPtr

  export
  fy : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGRadialGradientElement) -> IO SVGAnimatedLength

namespace SVGRectElement
  
  public export
  JSVal SVGRectElement where
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
  height : (obj : SVGRectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGRectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGRectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGRectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGRectElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGRectElement) -> IO SVGAnimatedLength

namespace SVGSVGElement
  
  public export
  JSVal SVGSVGElement where
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
  currentTranslate : (obj : SVGSVGElement) -> IO DOMPointReadOnly
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGSVGElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGSVGElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGSVGElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGSVGElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.currentScale"
  prim__currentScale : AnyPtr -> PrimIO AnyPtr

  export
  currentScale : (obj : SVGSVGElement) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.currentScale  = v}"
  prim__setCurrentScale : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentScale : (obj : SVGSVGElement) -> (v : Double) -> IO ()

namespace SVGScriptElement
  
  public export
  JSVal SVGScriptElement where
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
  crossOrigin : (obj : SVGScriptElement) -> IO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGScriptElement) -> (v : Maybe String) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGScriptElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGScriptElement) -> (v : String) -> IO ()

namespace SVGStopElement
  
  public export
  JSVal SVGStopElement where
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
  offset : (obj : SVGStopElement) -> IO SVGAnimatedNumber

namespace SVGStringList
  
  public export
  JSVal SVGStringList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGStringList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGStringList) -> IO UInt32

namespace SVGStyleElement
  
  public export
  JSVal SVGStyleElement where
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
  media : (obj : SVGStyleElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : SVGStyleElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : SVGStyleElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : SVGStyleElement) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGStyleElement) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGStyleElement) -> (v : String) -> IO ()

namespace SVGSwitchElement
  
  public export
  JSVal SVGSwitchElement where
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
  JSVal SVGSymbolElement where
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
  JSVal SVGTSpanElement where
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
  JSVal SVGTextContentElement where
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
  lengthAdjust : (obj : SVGTextContentElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

  export
  textLength : (obj : SVGTextContentElement) -> IO SVGAnimatedLength

namespace SVGTextElement
  
  public export
  JSVal SVGTextElement where
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
  JSVal SVGTextPathElement where
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
  method : (obj : SVGTextPathElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : AnyPtr -> PrimIO AnyPtr

  export
  spacing : (obj : SVGTextPathElement) -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : SVGTextPathElement) -> IO SVGAnimatedLength

namespace SVGTextPositioningElement
  
  public export
  JSVal SVGTextPositioningElement where
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
  dx : (obj : SVGTextPositioningElement) -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.dy"
  prim__dy : AnyPtr -> PrimIO AnyPtr

  export
  dy : (obj : SVGTextPositioningElement) -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.rotate"
  prim__rotate : AnyPtr -> PrimIO AnyPtr

  export
  rotate : (obj : SVGTextPositioningElement) -> IO SVGAnimatedNumberList
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGTextPositioningElement) -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGTextPositioningElement) -> IO SVGAnimatedLengthList

namespace SVGTitleElement
  
  public export
  JSVal SVGTitleElement where
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
  JSVal SVGTransform where
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
  angle : (obj : SVGTransform) -> IO Double
  
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : AnyPtr -> PrimIO AnyPtr

  export
  matrix : (obj : SVGTransform) -> IO DOMMatrix
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGTransform) -> IO UInt16

namespace SVGTransformList
  
  public export
  JSVal SVGTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGTransformList) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGTransformList) -> IO UInt32

namespace SVGUnitTypes
  
  public export
  JSVal SVGUnitTypes where
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
  JSVal SVGUseElement where
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
  animatedInstanceRoot : (obj : SVGUseElement) -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGUseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.instanceRoot"
  prim__instanceRoot : AnyPtr -> PrimIO AnyPtr

  export
  instanceRoot : (obj : SVGUseElement) -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGUseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGUseElement) -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGUseElement) -> IO SVGAnimatedLength

namespace SVGUseElementShadowRoot
  
  public export
  JSVal SVGUseElementShadowRoot where
    parents =  [ ShadowRoot , DocumentFragment , Node , EventTarget , JSObject ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]

namespace SVGViewElement
  
  public export
  JSVal SVGViewElement where
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
  JSVal ShadowAnimation where
    parents =  [ Animation , EventTarget , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.sourceAnimation"
  prim__sourceAnimation : AnyPtr -> PrimIO AnyPtr

  export
  sourceAnimation : (obj : ShadowAnimation) -> IO Animation

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


namespace SVGAnimatedPoints
  
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : AnyPtr -> PrimIO AnyPtr

  export
  animatedPoints : (obj : SVGAnimatedPoints) -> IO SVGPointList
  
  %foreign "browser:lambda:x=>x.points"
  prim__points : AnyPtr -> PrimIO AnyPtr

  export
  points : (obj : SVGAnimatedPoints) -> IO SVGPointList

namespace SVGElementInstance
  
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingElement : (obj : SVGElementInstance) -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingUseElement :  (obj : SVGElementInstance)
                          -> IO (Maybe SVGUseElement)

namespace SVGFitToViewBox
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGFitToViewBox)
                      -> IO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : AnyPtr -> PrimIO AnyPtr

  export
  viewBox : (obj : SVGFitToViewBox) -> IO SVGAnimatedRect

namespace SVGTests
  
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : AnyPtr -> PrimIO AnyPtr

  export
  requiredExtensions : (obj : SVGTests) -> IO SVGStringList
  
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : AnyPtr -> PrimIO AnyPtr

  export
  systemLanguage : (obj : SVGTests) -> IO SVGStringList

namespace SVGURIReference
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : SVGURIReference) -> IO SVGAnimatedString

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  public export
  JSVal SVGBoundingBoxOptions where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.clipped"
  prim__clipped : AnyPtr -> PrimIO AnyPtr

  export
  clipped : (obj : SVGBoundingBoxOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.clipped  = v}"
  prim__setClipped : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipped : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : SVGBoundingBoxOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : AnyPtr -> PrimIO AnyPtr

  export
  markers : (obj : SVGBoundingBoxOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.markers  = v}"
  prim__setMarkers : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarkers : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : AnyPtr -> PrimIO AnyPtr

  export
  stroke : (obj : SVGBoundingBoxOptions) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.stroke  = v}"
  prim__setStroke : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStroke : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> IO ()

