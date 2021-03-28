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
  relList a =   primToJSIO "relList" $ prim__relList (toJS a)
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr

  export
  target : (obj : SVGAElement) -> JSIO SVGAnimatedString
  target a =   primToJSIO "target" $ prim__target (toJS a)
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  export
  download : (obj : SVGAElement) -> JSIO String
  download a =   primToJSIO "download" $ prim__download (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.download  = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDownload : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setDownload a b =
    primToJSIO "setDownload" $ prim__setDownload (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  export
  hreflang : (obj : SVGAElement) -> JSIO String
  hreflang a =   primToJSIO "hreflang" $ prim__hreflang (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.hreflang  = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setHreflang : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setHreflang a b =
    primToJSIO "setHreflang" $ prim__setHreflang (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  export
  ping : (obj : SVGAElement) -> JSIO String
  ping a =   primToJSIO "ping" $ prim__ping (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.ping  = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setPing : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setPing a b =   primToJSIO "setPing" $ prim__setPing (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  export
  referrerPolicy : (obj : SVGAElement) -> JSIO String
  referrerPolicy a =
    primToJSIO "referrerPolicy" $ prim__referrerPolicy (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy  = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setReferrerPolicy : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setReferrerPolicy a b =
    primToJSIO "setReferrerPolicy" $ prim__setReferrerPolicy (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  export
  rel : (obj : SVGAElement) -> JSIO String
  rel a =   primToJSIO "rel" $ prim__rel (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.rel  = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRel : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setRel a b =   primToJSIO "setRel" $ prim__setRel (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  export
  text : (obj : SVGAElement) -> JSIO String
  text a =   primToJSIO "text" $ prim__text (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.text  = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setText : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setText a b =   primToJSIO "setText" $ prim__setText (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGAElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGAElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

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
  unitType a =   primToJSIO "unitType" $ prim__unitType (toJS a)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGAngle) -> JSIO Double
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGAngle) -> (v : Double) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGAngle) -> JSIO String
  valueAsString a =   primToJSIO "valueAsString" $ prim__valueAsString (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGAngle) -> (v : String) -> JSIO ()
  setValueAsString a b =
    primToJSIO "setValueAsString" $ prim__setValueAsString (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGAngle) -> JSIO Double
  valueInSpecifiedUnits a =
    primToJSIO "valueInSpecifiedUnits" $ prim__valueInSpecifiedUnits (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGAngle) -> (v : Double) -> JSIO ()
  setValueInSpecifiedUnits a b =
    primToJSIO "setValueInSpecifiedUnits" $ prim__setValueInSpecifiedUnits (toJS a)
                                                                           (toJS b)

namespace SVGAnimatedAngle
  
  public export
  JSType SVGAnimatedAngle where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

namespace SVGAnimatedBoolean
  
  public export
  JSType SVGAnimatedBoolean where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedBoolean) -> (v : Bool) -> JSIO ()
  setBaseVal a b =
    primToJSIO "setBaseVal" $ prim__setBaseVal (toJS a) (toJS b)

namespace SVGAnimatedEnumeration
  
  public export
  JSType SVGAnimatedEnumeration where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedEnumeration) -> JSIO UInt16
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedEnumeration) -> JSIO UInt16
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedEnumeration) -> (v : UInt16) -> JSIO ()
  setBaseVal a b =
    primToJSIO "setBaseVal" $ prim__setBaseVal (toJS a) (toJS b)

namespace SVGAnimatedInteger
  
  public export
  JSType SVGAnimatedInteger where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedInteger) -> JSIO Int32
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedInteger) -> JSIO Int32
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedInteger) -> (v : Int32) -> JSIO ()
  setBaseVal a b =
    primToJSIO "setBaseVal" $ prim__setBaseVal (toJS a) (toJS b)

namespace SVGAnimatedLength
  
  public export
  JSType SVGAnimatedLength where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

namespace SVGAnimatedLengthList
  
  public export
  JSType SVGAnimatedLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

namespace SVGAnimatedNumber
  
  public export
  JSType SVGAnimatedNumber where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumber) -> JSIO Double
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumber) -> JSIO Double
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedNumber) -> (v : Double) -> JSIO ()
  setBaseVal a b =
    primToJSIO "setBaseVal" $ prim__setBaseVal (toJS a) (toJS b)

namespace SVGAnimatedNumberList
  
  public export
  JSType SVGAnimatedNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

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
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal :  (obj : SVGAnimatedPreserveAspectRatio)
          -> JSIO SVGPreserveAspectRatio
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

namespace SVGAnimatedRect
  
  public export
  JSType SVGAnimatedRect where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedRect) -> JSIO DOMRectReadOnly
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedRect) -> JSIO DOMRect
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

namespace SVGAnimatedString
  
  public export
  JSType SVGAnimatedString where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedString) -> JSIO String
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedString) -> JSIO String
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.baseVal  = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setBaseVal : (obj : SVGAnimatedString) -> (v : String) -> JSIO ()
  setBaseVal a b =
    primToJSIO "setBaseVal" $ prim__setBaseVal (toJS a) (toJS b)

namespace SVGAnimatedTransformList
  
  public export
  JSType SVGAnimatedTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr

  export
  animVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  animVal a =   primToJSIO "animVal" $ prim__animVal (toJS a)
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  export
  baseVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
  baseVal a =   primToJSIO "baseVal" $ prim__baseVal (toJS a)

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
  cx a =   primToJSIO "cx" $ prim__cx (toJS a)
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  cy a =   primToJSIO "cy" $ prim__cy (toJS a)
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGCircleElement) -> JSIO SVGAnimatedLength
  r a =   primToJSIO "r" $ prim__r (toJS a)

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
  className a =   primToJSIO "className" $ prim__className (toJS a)
  
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : AnyPtr -> PrimIO AnyPtr

  export
  ownerSVGElement : (obj : SVGElement) -> JSIO (Maybe SVGSVGElement)
  ownerSVGElement a =
    primToJSIO "ownerSVGElement" $ prim__ownerSVGElement (toJS a)
  
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : AnyPtr -> PrimIO AnyPtr

  export
  viewportElement : (obj : SVGElement) -> JSIO (Maybe SVGElement)
  viewportElement a =
    primToJSIO "viewportElement" $ prim__viewportElement (toJS a)

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
  cx a =   primToJSIO "cx" $ prim__cx (toJS a)
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  cy a =   primToJSIO "cy" $ prim__cy (toJS a)
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  rx a =   primToJSIO "rx" $ prim__rx (toJS a)
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGEllipseElement) -> JSIO SVGAnimatedLength
  ry a =   primToJSIO "ry" $ prim__ry (toJS a)

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
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGForeignObjectElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)

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
  pathLength a =   primToJSIO "pathLength" $ prim__pathLength (toJS a)

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
  gradientTransform a =
    primToJSIO "gradientTransform" $ prim__gradientTransform (toJS a)
  
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : AnyPtr -> PrimIO AnyPtr

  export
  gradientUnits : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration
  gradientUnits a =   primToJSIO "gradientUnits" $ prim__gradientUnits (toJS a)
  
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : AnyPtr -> PrimIO AnyPtr

  export
  spreadMethod : (obj : SVGGradientElement) -> JSIO SVGAnimatedEnumeration
  spreadMethod a =   primToJSIO "spreadMethod" $ prim__spreadMethod (toJS a)

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
  transform a =   primToJSIO "transform" $ prim__transform (toJS a)

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
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGImageElement)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a =
    primToJSIO "preserveAspectRatio" $ prim__preserveAspectRatio (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  export
  crossOrigin : (obj : SVGImageElement) -> JSIO (Maybe String)
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGImageElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)

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
  unitType a =   primToJSIO "unitType" $ prim__unitType (toJS a)
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  export
  value : (obj : SVGLength) -> JSIO Double
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGLength) -> (v : Double) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  export
  valueAsString : (obj : SVGLength) -> JSIO String
  valueAsString a =   primToJSIO "valueAsString" $ prim__valueAsString (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueAsString  = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueAsString : (obj : SVGLength) -> (v : String) -> JSIO ()
  setValueAsString a b =
    primToJSIO "setValueAsString" $ prim__setValueAsString (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  export
  valueInSpecifiedUnits : (obj : SVGLength) -> JSIO Double
  valueInSpecifiedUnits a =
    primToJSIO "valueInSpecifiedUnits" $ prim__valueInSpecifiedUnits (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits  = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValueInSpecifiedUnits : (obj : SVGLength) -> (v : Double) -> JSIO ()
  setValueInSpecifiedUnits a b =
    primToJSIO "setValueInSpecifiedUnits" $ prim__setValueInSpecifiedUnits (toJS a)
                                                                           (toJS b)

namespace SVGLengthList
  
  public export
  JSType SVGLengthList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGLengthList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGLengthList) -> JSIO UInt32
  numberOfItems a =   primToJSIO "numberOfItems" $ prim__numberOfItems (toJS a)

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
  x1 a =   primToJSIO "x1" $ prim__x1 (toJS a)
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  x2 a =   primToJSIO "x2" $ prim__x2 (toJS a)
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  y1 a =   primToJSIO "y1" $ prim__y1 (toJS a)
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLineElement) -> JSIO SVGAnimatedLength
  y2 a =   primToJSIO "y2" $ prim__y2 (toJS a)

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
  x1 a =   primToJSIO "x1" $ prim__x1 (toJS a)
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr

  export
  x2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  x2 a =   primToJSIO "x2" $ prim__x2 (toJS a)
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr

  export
  y1 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  y1 a =   primToJSIO "y1" $ prim__y1 (toJS a)
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

  export
  y2 : (obj : SVGLinearGradientElement) -> JSIO SVGAnimatedLength
  y2 a =   primToJSIO "y2" $ prim__y2 (toJS a)

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
  markerHeight a =   primToJSIO "markerHeight" $ prim__markerHeight (toJS a)
  
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : AnyPtr -> PrimIO AnyPtr

  export
  markerUnits : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  markerUnits a =   primToJSIO "markerUnits" $ prim__markerUnits (toJS a)
  
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : AnyPtr -> PrimIO AnyPtr

  export
  markerWidth : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  markerWidth a =   primToJSIO "markerWidth" $ prim__markerWidth (toJS a)
  
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : AnyPtr -> PrimIO AnyPtr

  export
  orientAngle : (obj : SVGMarkerElement) -> JSIO SVGAnimatedAngle
  orientAngle a =   primToJSIO "orientAngle" $ prim__orientAngle (toJS a)
  
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : AnyPtr -> PrimIO AnyPtr

  export
  orientType : (obj : SVGMarkerElement) -> JSIO SVGAnimatedEnumeration
  orientType a =   primToJSIO "orientType" $ prim__orientType (toJS a)
  
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : AnyPtr -> PrimIO AnyPtr

  export
  refX : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  refX a =   primToJSIO "refX" $ prim__refX (toJS a)
  
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : AnyPtr -> PrimIO AnyPtr

  export
  refY : (obj : SVGMarkerElement) -> JSIO SVGAnimatedLength
  refY a =   primToJSIO "refY" $ prim__refY (toJS a)
  
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : AnyPtr -> PrimIO AnyPtr

  export
  orient : (obj : SVGMarkerElement) -> JSIO String
  orient a =   primToJSIO "orient" $ prim__orient (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.orient  = v}"
  prim__setOrient : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setOrient : (obj : SVGMarkerElement) -> (v : String) -> JSIO ()
  setOrient a b =   primToJSIO "setOrient" $ prim__setOrient (toJS a) (toJS b)

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
  value a =   primToJSIO "value" $ prim__value (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.value  = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setValue : (obj : SVGNumber) -> (v : Double) -> JSIO ()
  setValue a b =   primToJSIO "setValue" $ prim__setValue (toJS a) (toJS b)

namespace SVGNumberList
  
  public export
  JSType SVGNumberList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGNumberList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGNumberList) -> JSIO UInt32
  numberOfItems a =   primToJSIO "numberOfItems" $ prim__numberOfItems (toJS a)

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
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.patternContentUnits"
  prim__patternContentUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternContentUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
  patternContentUnits a =
    primToJSIO "patternContentUnits" $ prim__patternContentUnits (toJS a)
  
  %foreign "browser:lambda:x=>x.patternTransform"
  prim__patternTransform : AnyPtr -> PrimIO AnyPtr

  export
  patternTransform : (obj : SVGPatternElement) -> JSIO SVGAnimatedTransformList
  patternTransform a =
    primToJSIO "patternTransform" $ prim__patternTransform (toJS a)
  
  %foreign "browser:lambda:x=>x.patternUnits"
  prim__patternUnits : AnyPtr -> PrimIO AnyPtr

  export
  patternUnits : (obj : SVGPatternElement) -> JSIO SVGAnimatedEnumeration
  patternUnits a =   primToJSIO "patternUnits" $ prim__patternUnits (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGPatternElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)

namespace SVGPointList
  
  public export
  JSType SVGPointList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGPointList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGPointList) -> JSIO UInt32
  numberOfItems a =   primToJSIO "numberOfItems" $ prim__numberOfItems (toJS a)

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
  align a =   primToJSIO "align" $ prim__align (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.align  = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAlign : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> JSIO ()
  setAlign a b =   primToJSIO "setAlign" $ prim__setAlign (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : AnyPtr -> PrimIO AnyPtr

  export
  meetOrSlice : (obj : SVGPreserveAspectRatio) -> JSIO UInt16
  meetOrSlice a =   primToJSIO "meetOrSlice" $ prim__meetOrSlice (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice  = v}"
  prim__setMeetOrSlice : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMeetOrSlice : (obj : SVGPreserveAspectRatio) -> (v : UInt16) -> JSIO ()
  setMeetOrSlice a b =
    primToJSIO "setMeetOrSlice" $ prim__setMeetOrSlice (toJS a) (toJS b)

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
  cx a =   primToJSIO "cx" $ prim__cx (toJS a)
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr

  export
  cy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  cy a =   primToJSIO "cy" $ prim__cy (toJS a)
  
  %foreign "browser:lambda:x=>x.fr"
  prim__fr : AnyPtr -> PrimIO AnyPtr

  export
  fr : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  fr a =   primToJSIO "fr" $ prim__fr (toJS a)
  
  %foreign "browser:lambda:x=>x.fx"
  prim__fx : AnyPtr -> PrimIO AnyPtr

  export
  fx : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  fx a =   primToJSIO "fx" $ prim__fx (toJS a)
  
  %foreign "browser:lambda:x=>x.fy"
  prim__fy : AnyPtr -> PrimIO AnyPtr

  export
  fy : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  fy a =   primToJSIO "fy" $ prim__fy (toJS a)
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

  export
  r : (obj : SVGRadialGradientElement) -> JSIO SVGAnimatedLength
  r a =   primToJSIO "r" $ prim__r (toJS a)

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
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr

  export
  rx : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  rx a =   primToJSIO "rx" $ prim__rx (toJS a)
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

  export
  ry : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  ry a =   primToJSIO "ry" $ prim__ry (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGRectElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)

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
  currentTranslate a =
    primToJSIO "currentTranslate" $ prim__currentTranslate (toJS a)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGSVGElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)
  
  %foreign "browser:lambda:x=>x.currentScale"
  prim__currentScale : AnyPtr -> PrimIO AnyPtr

  export
  currentScale : (obj : SVGSVGElement) -> JSIO Double
  currentScale a =   primToJSIO "currentScale" $ prim__currentScale (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.currentScale  = v}"
  prim__setCurrentScale : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCurrentScale : (obj : SVGSVGElement) -> (v : Double) -> JSIO ()
  setCurrentScale a b =
    primToJSIO "setCurrentScale" $ prim__setCurrentScale (toJS a) (toJS b)

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
  crossOrigin a =   primToJSIO "crossOrigin" $ prim__crossOrigin (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin  = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCrossOrigin : (obj : SVGScriptElement) -> (v : Maybe String) -> JSIO ()
  setCrossOrigin a b =
    primToJSIO "setCrossOrigin" $ prim__setCrossOrigin (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGScriptElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGScriptElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

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
  offset a =   primToJSIO "offset" $ prim__offset (toJS a)

namespace SVGStringList
  
  public export
  JSType SVGStringList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGStringList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGStringList) -> JSIO UInt32
  numberOfItems a =   primToJSIO "numberOfItems" $ prim__numberOfItems (toJS a)

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
  media a =   primToJSIO "media" $ prim__media (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.media  = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMedia : (obj : SVGStyleElement) -> (v : String) -> JSIO ()
  setMedia a b =   primToJSIO "setMedia" $ prim__setMedia (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  export
  title : (obj : SVGStyleElement) -> JSIO String
  title a =   primToJSIO "title" $ prim__title (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.title  = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setTitle : (obj : SVGStyleElement) -> (v : String) -> JSIO ()
  setTitle a b =   primToJSIO "setTitle" $ prim__setTitle (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGStyleElement) -> JSIO String
  type a =   primToJSIO "type" $ prim__type (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.type  = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setType : (obj : SVGStyleElement) -> (v : String) -> JSIO ()
  setType a b =   primToJSIO "setType" $ prim__setType (toJS a) (toJS b)

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
  lengthAdjust a =   primToJSIO "lengthAdjust" $ prim__lengthAdjust (toJS a)
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

  export
  textLength : (obj : SVGTextContentElement) -> JSIO SVGAnimatedLength
  textLength a =   primToJSIO "textLength" $ prim__textLength (toJS a)

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
  method a =   primToJSIO "method" $ prim__method (toJS a)
  
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : AnyPtr -> PrimIO AnyPtr

  export
  spacing : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
  spacing a =   primToJSIO "spacing" $ prim__spacing (toJS a)
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

  export
  startOffset : (obj : SVGTextPathElement) -> JSIO SVGAnimatedLength
  startOffset a =   primToJSIO "startOffset" $ prim__startOffset (toJS a)

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
  dx a =   primToJSIO "dx" $ prim__dx (toJS a)
  
  %foreign "browser:lambda:x=>x.dy"
  prim__dy : AnyPtr -> PrimIO AnyPtr

  export
  dy : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  dy a =   primToJSIO "dy" $ prim__dy (toJS a)
  
  %foreign "browser:lambda:x=>x.rotate"
  prim__rotate : AnyPtr -> PrimIO AnyPtr

  export
  rotate : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedNumberList
  rotate a =   primToJSIO "rotate" $ prim__rotate (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGTextPositioningElement) -> JSIO SVGAnimatedLengthList
  y a =   primToJSIO "y" $ prim__y (toJS a)

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
  angle a =   primToJSIO "angle" $ prim__angle (toJS a)
  
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : AnyPtr -> PrimIO AnyPtr

  export
  matrix : (obj : SVGTransform) -> JSIO DOMMatrix
  matrix a =   primToJSIO "matrix" $ prim__matrix (toJS a)
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  export
  type : (obj : SVGTransform) -> JSIO UInt16
  type a =   primToJSIO "type" $ prim__type (toJS a)

namespace SVGTransformList
  
  public export
  JSType SVGTransformList where
    parents =  [ JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr

  export
  length : (obj : SVGTransformList) -> JSIO UInt32
  length a =   primToJSIO "length" $ prim__length (toJS a)
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

  export
  numberOfItems : (obj : SVGTransformList) -> JSIO UInt32
  numberOfItems a =   primToJSIO "numberOfItems" $ prim__numberOfItems (toJS a)

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
  animatedInstanceRoot a =
    primToJSIO "animatedInstanceRoot" $ prim__animatedInstanceRoot (toJS a)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr

  export
  height : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  height a =   primToJSIO "height" $ prim__height (toJS a)
  
  %foreign "browser:lambda:x=>x.instanceRoot"
  prim__instanceRoot : AnyPtr -> PrimIO AnyPtr

  export
  instanceRoot : (obj : SVGUseElement) -> JSIO (Maybe SVGElement)
  instanceRoot a =   primToJSIO "instanceRoot" $ prim__instanceRoot (toJS a)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr

  export
  width : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  width a =   primToJSIO "width" $ prim__width (toJS a)
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr

  export
  x : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  x a =   primToJSIO "x" $ prim__x (toJS a)
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

  export
  y : (obj : SVGUseElement) -> JSIO SVGAnimatedLength
  y a =   primToJSIO "y" $ prim__y (toJS a)

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
  sourceAnimation a =
    primToJSIO "sourceAnimation" $ prim__sourceAnimation (toJS a)

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


namespace SVGAnimatedPoints
  
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : AnyPtr -> PrimIO AnyPtr

  export
  animatedPoints : (obj : SVGAnimatedPoints) -> JSIO SVGPointList
  animatedPoints a =
    primToJSIO "animatedPoints" $ prim__animatedPoints (toJS a)
  
  %foreign "browser:lambda:x=>x.points"
  prim__points : AnyPtr -> PrimIO AnyPtr

  export
  points : (obj : SVGAnimatedPoints) -> JSIO SVGPointList
  points a =   primToJSIO "points" $ prim__points (toJS a)

namespace SVGElementInstance
  
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingElement : (obj : SVGElementInstance) -> JSIO (Maybe SVGElement)
  correspondingElement a =
    primToJSIO "correspondingElement" $ prim__correspondingElement (toJS a)
  
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement : AnyPtr -> PrimIO AnyPtr

  export
  correspondingUseElement :  (obj : SVGElementInstance)
                          -> JSIO (Maybe SVGUseElement)
  correspondingUseElement a =
    primToJSIO "correspondingUseElement" $ prim__correspondingUseElement (toJS a)

namespace SVGFitToViewBox
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr

  export
  preserveAspectRatio :  (obj : SVGFitToViewBox)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a =
    primToJSIO "preserveAspectRatio" $ prim__preserveAspectRatio (toJS a)
  
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : AnyPtr -> PrimIO AnyPtr

  export
  viewBox : (obj : SVGFitToViewBox) -> JSIO SVGAnimatedRect
  viewBox a =   primToJSIO "viewBox" $ prim__viewBox (toJS a)

namespace SVGTests
  
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : AnyPtr -> PrimIO AnyPtr

  export
  requiredExtensions : (obj : SVGTests) -> JSIO SVGStringList
  requiredExtensions a =
    primToJSIO "requiredExtensions" $ prim__requiredExtensions (toJS a)
  
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : AnyPtr -> PrimIO AnyPtr

  export
  systemLanguage : (obj : SVGTests) -> JSIO SVGStringList
  systemLanguage a =
    primToJSIO "systemLanguage" $ prim__systemLanguage (toJS a)

namespace SVGURIReference
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

  export
  href : (obj : SVGURIReference) -> JSIO SVGAnimatedString
  href a =   primToJSIO "href" $ prim__href (toJS a)

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
  clipped a =   primToJSIO "clipped" $ prim__clipped (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.clipped  = v}"
  prim__setClipped : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClipped : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  setClipped a b =
    primToJSIO "setClipped" $ prim__setClipped (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  export
  fill : (obj : SVGBoundingBoxOptions) -> JSIO Bool
  fill a =   primToJSIO "fill" $ prim__fill (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.fill  = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setFill : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  setFill a b =   primToJSIO "setFill" $ prim__setFill (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : AnyPtr -> PrimIO AnyPtr

  export
  markers : (obj : SVGBoundingBoxOptions) -> JSIO Bool
  markers a =   primToJSIO "markers" $ prim__markers (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.markers  = v}"
  prim__setMarkers : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMarkers : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  setMarkers a b =
    primToJSIO "setMarkers" $ prim__setMarkers (toJS a) (toJS b)
  
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : AnyPtr -> PrimIO AnyPtr

  export
  stroke : (obj : SVGBoundingBoxOptions) -> JSIO Bool
  stroke a =   primToJSIO "stroke" $ prim__stroke (toJS a)

  %foreign "browser:lambda:(x,v)=>{x.stroke  = v}"
  prim__setStroke : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setStroke : (obj : SVGBoundingBoxOptions) -> (v : Bool) -> JSIO ()
  setStroke a b =   primToJSIO "setStroke" $ prim__setStroke (toJS a) (toJS b)

