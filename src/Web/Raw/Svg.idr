module Web.Raw.Svg
 
import JS
import Web.Internal.SvgPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------


namespace SVGAElement
  
  export
  download :  JSType t
           => {auto 0 _ : Elem SVGAElement (Types t)}
           -> t
           -> Attribute True I String
  download v = fromPrim "SVGAElement.getdownload"
                        prim__download
                        prim__setDownload
                        (v :> SVGAElement)
  
  export
  hreflang :  JSType t
           => {auto 0 _ : Elem SVGAElement (Types t)}
           -> t
           -> Attribute True I String
  hreflang v = fromPrim "SVGAElement.gethreflang"
                        prim__hreflang
                        prim__setHreflang
                        (v :> SVGAElement)
  
  export
  ping :  JSType t
       => {auto 0 _ : Elem SVGAElement (Types t)}
       -> t
       -> Attribute True I String
  ping v = fromPrim "SVGAElement.getping"
                    prim__ping
                    prim__setPing
                    (v :> SVGAElement)
  
  export
  referrerPolicy :  JSType t
                 => {auto 0 _ : Elem SVGAElement (Types t)}
                 -> t
                 -> Attribute True I String
  referrerPolicy v = fromPrim "SVGAElement.getreferrerPolicy"
                              prim__referrerPolicy
                              prim__setReferrerPolicy
                              (v :> SVGAElement)
  
  export
  rel :  JSType t
      => {auto 0 _ : Elem SVGAElement (Types t)}
      -> t
      -> Attribute True I String
  rel v = fromPrim "SVGAElement.getrel"
                   prim__rel
                   prim__setRel
                   (v :> SVGAElement)
  
  export
  relList :  JSType t1
          => {auto 0 _ : Elem SVGAElement (Types t1)}
          -> (obj : t1)
          -> JSIO DOMTokenList
  relList a = primJS $ SVGAElement.prim__relList (up a)
  
  export
  target :  JSType t1
         => {auto 0 _ : Elem SVGAElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedString
  target a = primJS $ SVGAElement.prim__target (up a)
  
  export
  text :  JSType t
       => {auto 0 _ : Elem SVGAElement (Types t)}
       -> t
       -> Attribute True I String
  text v = fromPrim "SVGAElement.gettext"
                    prim__text
                    prim__setText
                    (v :> SVGAElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem SVGAElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "SVGAElement.gettype"
                    prim__type
                    prim__setType
                    (v :> SVGAElement)

namespace SVGAngle
  
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
  unitType :  JSType t1
           => {auto 0 _ : Elem SVGAngle (Types t1)}
           -> (obj : t1)
           -> JSIO UInt16
  unitType a = primJS $ SVGAngle.prim__unitType (up a)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem SVGAngle (Types t)}
        -> t
        -> Attribute True I Double
  value v = fromPrim "SVGAngle.getvalue"
                     prim__value
                     prim__setValue
                     (v :> SVGAngle)
  
  export
  valueAsString :  JSType t
                => {auto 0 _ : Elem SVGAngle (Types t)}
                -> t
                -> Attribute True I String
  valueAsString v = fromPrim "SVGAngle.getvalueAsString"
                             prim__valueAsString
                             prim__setValueAsString
                             (v :> SVGAngle)
  
  export
  valueInSpecifiedUnits :  JSType t
                        => {auto 0 _ : Elem SVGAngle (Types t)}
                        -> t
                        -> Attribute True I Double
  valueInSpecifiedUnits v = fromPrim "SVGAngle.getvalueInSpecifiedUnits"
                                     prim__valueInSpecifiedUnits
                                     prim__setValueInSpecifiedUnits
                                     (v :> SVGAngle)
  
  export
  convertToSpecifiedUnits :  JSType t1
                          => {auto 0 _ : Elem SVGAngle (Types t1)}
                          -> (obj : t1)
                          -> (unitType : UInt16)
                          -> JSIO ()
  convertToSpecifiedUnits a b = primJS
                              $ SVGAngle.prim__convertToSpecifiedUnits (up a) b
  
  export
  newValueSpecifiedUnits :  JSType t1
                         => {auto 0 _ : Elem SVGAngle (Types t1)}
                         -> (obj : t1)
                         -> (unitType : UInt16)
                         -> (valueInSpecifiedUnits : Double)
                         -> JSIO ()
  newValueSpecifiedUnits a b c = primJS
                               $ SVGAngle.prim__newValueSpecifiedUnits (up a)
                                                                       b
                                                                       c

namespace SVGAnimatedAngle
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedAngle (Types t1)}
          -> (obj : t1)
          -> JSIO SVGAngle
  animVal a = primJS $ SVGAnimatedAngle.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedAngle (Types t1)}
          -> (obj : t1)
          -> JSIO SVGAngle
  baseVal a = primJS $ SVGAnimatedAngle.prim__baseVal (up a)

namespace SVGAnimatedBoolean
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedBoolean (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  animVal a = tryJS "SVGAnimatedBoolean.animVal"
            $ SVGAnimatedBoolean.prim__animVal (up a)
  
  export
  baseVal :  JSType t
          => {auto 0 _ : Elem SVGAnimatedBoolean (Types t)}
          -> t
          -> Attribute True I Bool
  baseVal v = fromPrim "SVGAnimatedBoolean.getbaseVal"
                       prim__baseVal
                       prim__setBaseVal
                       (v :> SVGAnimatedBoolean)

namespace SVGAnimatedEnumeration
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedEnumeration (Types t1)}
          -> (obj : t1)
          -> JSIO UInt16
  animVal a = primJS $ SVGAnimatedEnumeration.prim__animVal (up a)
  
  export
  baseVal :  JSType t
          => {auto 0 _ : Elem SVGAnimatedEnumeration (Types t)}
          -> t
          -> Attribute True I UInt16
  baseVal v = fromPrim "SVGAnimatedEnumeration.getbaseVal"
                       prim__baseVal
                       prim__setBaseVal
                       (v :> SVGAnimatedEnumeration)

namespace SVGAnimatedInteger
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedInteger (Types t1)}
          -> (obj : t1)
          -> JSIO Int32
  animVal a = primJS $ SVGAnimatedInteger.prim__animVal (up a)
  
  export
  baseVal :  JSType t
          => {auto 0 _ : Elem SVGAnimatedInteger (Types t)}
          -> t
          -> Attribute True I Int32
  baseVal v = fromPrim "SVGAnimatedInteger.getbaseVal"
                       prim__baseVal
                       prim__setBaseVal
                       (v :> SVGAnimatedInteger)

namespace SVGAnimatedLength
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedLength (Types t1)}
          -> (obj : t1)
          -> JSIO SVGLength
  animVal a = primJS $ SVGAnimatedLength.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedLength (Types t1)}
          -> (obj : t1)
          -> JSIO SVGLength
  baseVal a = primJS $ SVGAnimatedLength.prim__baseVal (up a)

namespace SVGAnimatedLengthList
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedLengthList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGLengthList
  animVal a = primJS $ SVGAnimatedLengthList.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedLengthList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGLengthList
  baseVal a = primJS $ SVGAnimatedLengthList.prim__baseVal (up a)

namespace SVGAnimatedNumber
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedNumber (Types t1)}
          -> (obj : t1)
          -> JSIO Double
  animVal a = primJS $ SVGAnimatedNumber.prim__animVal (up a)
  
  export
  baseVal :  JSType t
          => {auto 0 _ : Elem SVGAnimatedNumber (Types t)}
          -> t
          -> Attribute True I Double
  baseVal v = fromPrim "SVGAnimatedNumber.getbaseVal"
                       prim__baseVal
                       prim__setBaseVal
                       (v :> SVGAnimatedNumber)

namespace SVGAnimatedNumberList
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedNumberList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGNumberList
  animVal a = primJS $ SVGAnimatedNumberList.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedNumberList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGNumberList
  baseVal a = primJS $ SVGAnimatedNumberList.prim__baseVal (up a)

namespace SVGAnimatedPreserveAspectRatio
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedPreserveAspectRatio (Types t1)}
          -> (obj : t1)
          -> JSIO SVGPreserveAspectRatio
  animVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedPreserveAspectRatio (Types t1)}
          -> (obj : t1)
          -> JSIO SVGPreserveAspectRatio
  baseVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__baseVal (up a)

namespace SVGAnimatedRect
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedRect (Types t1)}
          -> (obj : t1)
          -> JSIO DOMRectReadOnly
  animVal a = primJS $ SVGAnimatedRect.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedRect (Types t1)}
          -> (obj : t1)
          -> JSIO DOMRect
  baseVal a = primJS $ SVGAnimatedRect.prim__baseVal (up a)

namespace SVGAnimatedString
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedString (Types t1)}
          -> (obj : t1)
          -> JSIO String
  animVal a = primJS $ SVGAnimatedString.prim__animVal (up a)
  
  export
  baseVal :  JSType t
          => {auto 0 _ : Elem SVGAnimatedString (Types t)}
          -> t
          -> Attribute True I String
  baseVal v = fromPrim "SVGAnimatedString.getbaseVal"
                       prim__baseVal
                       prim__setBaseVal
                       (v :> SVGAnimatedString)

namespace SVGAnimatedTransformList
  
  export
  animVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedTransformList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGTransformList
  animVal a = primJS $ SVGAnimatedTransformList.prim__animVal (up a)
  
  export
  baseVal :  JSType t1
          => {auto 0 _ : Elem SVGAnimatedTransformList (Types t1)}
          -> (obj : t1)
          -> JSIO SVGTransformList
  baseVal a = primJS $ SVGAnimatedTransformList.prim__baseVal (up a)

namespace SVGCircleElement
  
  export
  cx :  JSType t1
     => {auto 0 _ : Elem SVGCircleElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGCircleElement.prim__cx (up a)
  
  export
  cy :  JSType t1
     => {auto 0 _ : Elem SVGCircleElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGCircleElement.prim__cy (up a)
  
  export
  r :  JSType t1
    => {auto 0 _ : Elem SVGCircleElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  r a = primJS $ SVGCircleElement.prim__r (up a)



namespace SVGElement
  
  export
  className :  JSType t1
            => {auto 0 _ : Elem SVGElement (Types t1)}
            -> (obj : t1)
            -> JSIO SVGAnimatedString
  className a = primJS $ SVGElement.prim__className (up a)
  
  export
  ownerSVGElement :  JSType t1
                  => {auto 0 _ : Elem SVGElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Maybe SVGSVGElement)
  ownerSVGElement a = tryJS "SVGElement.ownerSVGElement"
                    $ SVGElement.prim__ownerSVGElement (up a)
  
  export
  viewportElement :  JSType t1
                  => {auto 0 _ : Elem SVGElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO (Maybe SVGElement)
  viewportElement a = tryJS "SVGElement.viewportElement"
                    $ SVGElement.prim__viewportElement (up a)

namespace SVGEllipseElement
  
  export
  cx :  JSType t1
     => {auto 0 _ : Elem SVGEllipseElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGEllipseElement.prim__cx (up a)
  
  export
  cy :  JSType t1
     => {auto 0 _ : Elem SVGEllipseElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGEllipseElement.prim__cy (up a)
  
  export
  rx :  JSType t1
     => {auto 0 _ : Elem SVGEllipseElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  rx a = primJS $ SVGEllipseElement.prim__rx (up a)
  
  export
  ry :  JSType t1
     => {auto 0 _ : Elem SVGEllipseElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  ry a = primJS $ SVGEllipseElement.prim__ry (up a)

namespace SVGForeignObjectElement
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGForeignObjectElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGForeignObjectElement.prim__height (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGForeignObjectElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGForeignObjectElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGForeignObjectElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGForeignObjectElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGForeignObjectElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGForeignObjectElement.prim__y (up a)


namespace SVGGeometryElement
  
  export
  pathLength :  JSType t1
             => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
             -> (obj : t1)
             -> JSIO SVGAnimatedNumber
  pathLength a = primJS $ SVGGeometryElement.prim__pathLength (up a)
  
  export
  getPointAtLength :  JSType t1
                   => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                   -> (obj : t1)
                   -> (distance : Double)
                   -> JSIO DOMPoint
  getPointAtLength a b = primJS
                       $ SVGGeometryElement.prim__getPointAtLength (up a) b
  
  export
  getTotalLength :  JSType t1
                 => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Double
  getTotalLength a = primJS $ SVGGeometryElement.prim__getTotalLength (up a)
  
  export
  isPointInFill :  JSType t1
                => JSType t2
                => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                -> {auto 0 _ : Elem DOMPointInit (Types t2)}
                -> (obj : t1)
                -> (point : Optional t2)
                -> JSIO Bool
  isPointInFill a b = tryJS "SVGGeometryElement.isPointInFill"
                    $ SVGGeometryElement.prim__isPointInFill (up a) (optUp b)

  export
  isPointInFill' :  JSType t1
                 => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO Bool
  isPointInFill' a = tryJS "SVGGeometryElement.isPointInFill'"
                   $ SVGGeometryElement.prim__isPointInFill (up a) undef
  
  export
  isPointInStroke :  JSType t1
                  => JSType t2
                  => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                  -> {auto 0 _ : Elem DOMPointInit (Types t2)}
                  -> (obj : t1)
                  -> (point : Optional t2)
                  -> JSIO Bool
  isPointInStroke a b = tryJS "SVGGeometryElement.isPointInStroke"
                      $ SVGGeometryElement.prim__isPointInStroke (up a)
                                                                 (optUp b)

  export
  isPointInStroke' :  JSType t1
                   => {auto 0 _ : Elem SVGGeometryElement (Types t1)}
                   -> (obj : t1)
                   -> JSIO Bool
  isPointInStroke' a = tryJS "SVGGeometryElement.isPointInStroke'"
                     $ SVGGeometryElement.prim__isPointInStroke (up a) undef

namespace SVGGradientElement
  
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
  gradientTransform :  JSType t1
                    => {auto 0 _ : Elem SVGGradientElement (Types t1)}
                    -> (obj : t1)
                    -> JSIO SVGAnimatedTransformList
  gradientTransform a = primJS
                      $ SVGGradientElement.prim__gradientTransform (up a)
  
  export
  gradientUnits :  JSType t1
                => {auto 0 _ : Elem SVGGradientElement (Types t1)}
                -> (obj : t1)
                -> JSIO SVGAnimatedEnumeration
  gradientUnits a = primJS $ SVGGradientElement.prim__gradientUnits (up a)
  
  export
  spreadMethod :  JSType t1
               => {auto 0 _ : Elem SVGGradientElement (Types t1)}
               -> (obj : t1)
               -> JSIO SVGAnimatedEnumeration
  spreadMethod a = primJS $ SVGGradientElement.prim__spreadMethod (up a)

namespace SVGGraphicsElement
  
  export
  transform :  JSType t1
            => {auto 0 _ : Elem SVGGraphicsElement (Types t1)}
            -> (obj : t1)
            -> JSIO SVGAnimatedTransformList
  transform a = primJS $ SVGGraphicsElement.prim__transform (up a)
  
  export
  getBBox :  JSType t1
          => JSType t2
          => {auto 0 _ : Elem SVGGraphicsElement (Types t1)}
          -> {auto 0 _ : Elem SVGBoundingBoxOptions (Types t2)}
          -> (obj : t1)
          -> (options : Optional t2)
          -> JSIO DOMRect
  getBBox a b = primJS $ SVGGraphicsElement.prim__getBBox (up a) (optUp b)

  export
  getBBox' :  JSType t1
           => {auto 0 _ : Elem SVGGraphicsElement (Types t1)}
           -> (obj : t1)
           -> JSIO DOMRect
  getBBox' a = primJS $ SVGGraphicsElement.prim__getBBox (up a) undef
  
  export
  getCTM :  JSType t1
         => {auto 0 _ : Elem SVGGraphicsElement (Types t1)}
         -> (obj : t1)
         -> JSIO (Maybe DOMMatrix)
  getCTM a = tryJS "SVGGraphicsElement.getCTM"
           $ SVGGraphicsElement.prim__getCTM (up a)
  
  export
  getScreenCTM :  JSType t1
               => {auto 0 _ : Elem SVGGraphicsElement (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe DOMMatrix)
  getScreenCTM a = tryJS "SVGGraphicsElement.getScreenCTM"
                 $ SVGGraphicsElement.prim__getScreenCTM (up a)

namespace SVGImageElement
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem SVGImageElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "SVGImageElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> SVGImageElement)
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGImageElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGImageElement.prim__height (up a)
  
  export
  preserveAspectRatio :  JSType t1
                      => {auto 0 _ : Elem SVGImageElement (Types t1)}
                      -> (obj : t1)
                      -> JSIO SVGAnimatedPreserveAspectRatio
  preserveAspectRatio a = primJS
                        $ SVGImageElement.prim__preserveAspectRatio (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGImageElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGImageElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGImageElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGImageElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGImageElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGImageElement.prim__y (up a)

namespace SVGLength
  
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
  unitType :  JSType t1
           => {auto 0 _ : Elem SVGLength (Types t1)}
           -> (obj : t1)
           -> JSIO UInt16
  unitType a = primJS $ SVGLength.prim__unitType (up a)
  
  export
  value :  JSType t
        => {auto 0 _ : Elem SVGLength (Types t)}
        -> t
        -> Attribute True I Double
  value v = fromPrim "SVGLength.getvalue"
                     prim__value
                     prim__setValue
                     (v :> SVGLength)
  
  export
  valueAsString :  JSType t
                => {auto 0 _ : Elem SVGLength (Types t)}
                -> t
                -> Attribute True I String
  valueAsString v = fromPrim "SVGLength.getvalueAsString"
                             prim__valueAsString
                             prim__setValueAsString
                             (v :> SVGLength)
  
  export
  valueInSpecifiedUnits :  JSType t
                        => {auto 0 _ : Elem SVGLength (Types t)}
                        -> t
                        -> Attribute True I Double
  valueInSpecifiedUnits v = fromPrim "SVGLength.getvalueInSpecifiedUnits"
                                     prim__valueInSpecifiedUnits
                                     prim__setValueInSpecifiedUnits
                                     (v :> SVGLength)
  
  export
  convertToSpecifiedUnits :  JSType t1
                          => {auto 0 _ : Elem SVGLength (Types t1)}
                          -> (obj : t1)
                          -> (unitType : UInt16)
                          -> JSIO ()
  convertToSpecifiedUnits a b = primJS
                              $ SVGLength.prim__convertToSpecifiedUnits (up a) b
  
  export
  newValueSpecifiedUnits :  JSType t1
                         => {auto 0 _ : Elem SVGLength (Types t1)}
                         -> (obj : t1)
                         -> (unitType : UInt16)
                         -> (valueInSpecifiedUnits : Double)
                         -> JSIO ()
  newValueSpecifiedUnits a b c = primJS
                               $ SVGLength.prim__newValueSpecifiedUnits (up a)
                                                                        b
                                                                        c

namespace SVGLengthList
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem SVGLengthList (Types t1)}
      -> {auto 0 _ : Elem SVGLength (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (newItem : t2)
      -> JSIO ()
  set a b c = primJS $ SVGLengthList.prim__set (up a) b (up c)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SVGLengthList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SVGLengthList.prim__length (up a)
  
  export
  numberOfItems :  JSType t1
                => {auto 0 _ : Elem SVGLengthList (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  numberOfItems a = primJS $ SVGLengthList.prim__numberOfItems (up a)
  
  export
  appendItem :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGLengthList (Types t1)}
             -> {auto 0 _ : Elem SVGLength (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGLength
  appendItem a b = primJS $ SVGLengthList.prim__appendItem (up a) (up b)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem SVGLengthList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ SVGLengthList.prim__clear (up a)
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem SVGLengthList (Types t1)}
          -> (obj : t1)
          -> (index : UInt32)
          -> JSIO SVGLength
  getItem a b = primJS $ SVGLengthList.prim__getItem (up a) b
  
  export
  initialize :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGLengthList (Types t1)}
             -> {auto 0 _ : Elem SVGLength (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGLength
  initialize a b = primJS $ SVGLengthList.prim__initialize (up a) (up b)
  
  export
  insertItemBefore :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem SVGLengthList (Types t1)}
                   -> {auto 0 _ : Elem SVGLength (Types t2)}
                   -> (obj : t1)
                   -> (newItem : t2)
                   -> (index : UInt32)
                   -> JSIO SVGLength
  insertItemBefore a b c = primJS
                         $ SVGLengthList.prim__insertItemBefore (up a) (up b) c
  
  export
  removeItem :  JSType t1
             => {auto 0 _ : Elem SVGLengthList (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO SVGLength
  removeItem a b = primJS $ SVGLengthList.prim__removeItem (up a) b
  
  export
  replaceItem :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem SVGLengthList (Types t1)}
              -> {auto 0 _ : Elem SVGLength (Types t2)}
              -> (obj : t1)
              -> (newItem : t2)
              -> (index : UInt32)
              -> JSIO SVGLength
  replaceItem a b c = primJS $ SVGLengthList.prim__replaceItem (up a) (up b) c

namespace SVGLineElement
  
  export
  x1 :  JSType t1
     => {auto 0 _ : Elem SVGLineElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  x1 a = primJS $ SVGLineElement.prim__x1 (up a)
  
  export
  x2 :  JSType t1
     => {auto 0 _ : Elem SVGLineElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  x2 a = primJS $ SVGLineElement.prim__x2 (up a)
  
  export
  y1 :  JSType t1
     => {auto 0 _ : Elem SVGLineElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  y1 a = primJS $ SVGLineElement.prim__y1 (up a)
  
  export
  y2 :  JSType t1
     => {auto 0 _ : Elem SVGLineElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  y2 a = primJS $ SVGLineElement.prim__y2 (up a)

namespace SVGLinearGradientElement
  
  export
  x1 :  JSType t1
     => {auto 0 _ : Elem SVGLinearGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  x1 a = primJS $ SVGLinearGradientElement.prim__x1 (up a)
  
  export
  x2 :  JSType t1
     => {auto 0 _ : Elem SVGLinearGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  x2 a = primJS $ SVGLinearGradientElement.prim__x2 (up a)
  
  export
  y1 :  JSType t1
     => {auto 0 _ : Elem SVGLinearGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  y1 a = primJS $ SVGLinearGradientElement.prim__y1 (up a)
  
  export
  y2 :  JSType t1
     => {auto 0 _ : Elem SVGLinearGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  y2 a = primJS $ SVGLinearGradientElement.prim__y2 (up a)

namespace SVGMarkerElement
  
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
  markerHeight :  JSType t1
               => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
               -> (obj : t1)
               -> JSIO SVGAnimatedLength
  markerHeight a = primJS $ SVGMarkerElement.prim__markerHeight (up a)
  
  export
  markerUnits :  JSType t1
              => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
              -> (obj : t1)
              -> JSIO SVGAnimatedEnumeration
  markerUnits a = primJS $ SVGMarkerElement.prim__markerUnits (up a)
  
  export
  markerWidth :  JSType t1
              => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
              -> (obj : t1)
              -> JSIO SVGAnimatedLength
  markerWidth a = primJS $ SVGMarkerElement.prim__markerWidth (up a)
  
  export
  orient :  JSType t
         => {auto 0 _ : Elem SVGMarkerElement (Types t)}
         -> t
         -> Attribute True I String
  orient v = fromPrim "SVGMarkerElement.getorient"
                      prim__orient
                      prim__setOrient
                      (v :> SVGMarkerElement)
  
  export
  orientAngle :  JSType t1
              => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
              -> (obj : t1)
              -> JSIO SVGAnimatedAngle
  orientAngle a = primJS $ SVGMarkerElement.prim__orientAngle (up a)
  
  export
  orientType :  JSType t1
             => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
             -> (obj : t1)
             -> JSIO SVGAnimatedEnumeration
  orientType a = primJS $ SVGMarkerElement.prim__orientType (up a)
  
  export
  refX :  JSType t1
       => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
       -> (obj : t1)
       -> JSIO SVGAnimatedLength
  refX a = primJS $ SVGMarkerElement.prim__refX (up a)
  
  export
  refY :  JSType t1
       => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
       -> (obj : t1)
       -> JSIO SVGAnimatedLength
  refY a = primJS $ SVGMarkerElement.prim__refY (up a)
  
  export
  setOrientToAngle :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
                   -> {auto 0 _ : Elem SVGAngle (Types t2)}
                   -> (obj : t1)
                   -> (angle : t2)
                   -> JSIO ()
  setOrientToAngle a b = primJS
                       $ SVGMarkerElement.prim__setOrientToAngle (up a) (up b)
  
  export
  setOrientToAuto :  JSType t1
                  => {auto 0 _ : Elem SVGMarkerElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO ()
  setOrientToAuto a = primJS $ SVGMarkerElement.prim__setOrientToAuto (up a)


namespace SVGNumber
  
  export
  value :  JSType t
        => {auto 0 _ : Elem SVGNumber (Types t)}
        -> t
        -> Attribute True I Double
  value v = fromPrim "SVGNumber.getvalue"
                     prim__value
                     prim__setValue
                     (v :> SVGNumber)

namespace SVGNumberList
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem SVGNumberList (Types t1)}
      -> {auto 0 _ : Elem SVGNumber (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (newItem : t2)
      -> JSIO ()
  set a b c = primJS $ SVGNumberList.prim__set (up a) b (up c)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SVGNumberList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SVGNumberList.prim__length (up a)
  
  export
  numberOfItems :  JSType t1
                => {auto 0 _ : Elem SVGNumberList (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  numberOfItems a = primJS $ SVGNumberList.prim__numberOfItems (up a)
  
  export
  appendItem :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGNumberList (Types t1)}
             -> {auto 0 _ : Elem SVGNumber (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGNumber
  appendItem a b = primJS $ SVGNumberList.prim__appendItem (up a) (up b)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem SVGNumberList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ SVGNumberList.prim__clear (up a)
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem SVGNumberList (Types t1)}
          -> (obj : t1)
          -> (index : UInt32)
          -> JSIO SVGNumber
  getItem a b = primJS $ SVGNumberList.prim__getItem (up a) b
  
  export
  initialize :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGNumberList (Types t1)}
             -> {auto 0 _ : Elem SVGNumber (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGNumber
  initialize a b = primJS $ SVGNumberList.prim__initialize (up a) (up b)
  
  export
  insertItemBefore :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem SVGNumberList (Types t1)}
                   -> {auto 0 _ : Elem SVGNumber (Types t2)}
                   -> (obj : t1)
                   -> (newItem : t2)
                   -> (index : UInt32)
                   -> JSIO SVGNumber
  insertItemBefore a b c = primJS
                         $ SVGNumberList.prim__insertItemBefore (up a) (up b) c
  
  export
  removeItem :  JSType t1
             => {auto 0 _ : Elem SVGNumberList (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO SVGNumber
  removeItem a b = primJS $ SVGNumberList.prim__removeItem (up a) b
  
  export
  replaceItem :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem SVGNumberList (Types t1)}
              -> {auto 0 _ : Elem SVGNumber (Types t2)}
              -> (obj : t1)
              -> (newItem : t2)
              -> (index : UInt32)
              -> JSIO SVGNumber
  replaceItem a b c = primJS $ SVGNumberList.prim__replaceItem (up a) (up b) c


namespace SVGPatternElement
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGPatternElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGPatternElement.prim__height (up a)
  
  export
  patternContentUnits :  JSType t1
                      => {auto 0 _ : Elem SVGPatternElement (Types t1)}
                      -> (obj : t1)
                      -> JSIO SVGAnimatedEnumeration
  patternContentUnits a = primJS
                        $ SVGPatternElement.prim__patternContentUnits (up a)
  
  export
  patternTransform :  JSType t1
                   => {auto 0 _ : Elem SVGPatternElement (Types t1)}
                   -> (obj : t1)
                   -> JSIO SVGAnimatedTransformList
  patternTransform a = primJS $ SVGPatternElement.prim__patternTransform (up a)
  
  export
  patternUnits :  JSType t1
               => {auto 0 _ : Elem SVGPatternElement (Types t1)}
               -> (obj : t1)
               -> JSIO SVGAnimatedEnumeration
  patternUnits a = primJS $ SVGPatternElement.prim__patternUnits (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGPatternElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGPatternElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGPatternElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGPatternElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGPatternElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGPatternElement.prim__y (up a)

namespace SVGPointList
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem SVGPointList (Types t1)}
      -> {auto 0 _ : Elem DOMPoint (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (newItem : t2)
      -> JSIO ()
  set a b c = primJS $ SVGPointList.prim__set (up a) b (up c)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SVGPointList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SVGPointList.prim__length (up a)
  
  export
  numberOfItems :  JSType t1
                => {auto 0 _ : Elem SVGPointList (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  numberOfItems a = primJS $ SVGPointList.prim__numberOfItems (up a)
  
  export
  appendItem :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGPointList (Types t1)}
             -> {auto 0 _ : Elem DOMPoint (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO DOMPoint
  appendItem a b = primJS $ SVGPointList.prim__appendItem (up a) (up b)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem SVGPointList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ SVGPointList.prim__clear (up a)
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem SVGPointList (Types t1)}
          -> (obj : t1)
          -> (index : UInt32)
          -> JSIO DOMPoint
  getItem a b = primJS $ SVGPointList.prim__getItem (up a) b
  
  export
  initialize :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGPointList (Types t1)}
             -> {auto 0 _ : Elem DOMPoint (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO DOMPoint
  initialize a b = primJS $ SVGPointList.prim__initialize (up a) (up b)
  
  export
  insertItemBefore :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem SVGPointList (Types t1)}
                   -> {auto 0 _ : Elem DOMPoint (Types t2)}
                   -> (obj : t1)
                   -> (newItem : t2)
                   -> (index : UInt32)
                   -> JSIO DOMPoint
  insertItemBefore a b c = primJS
                         $ SVGPointList.prim__insertItemBefore (up a) (up b) c
  
  export
  removeItem :  JSType t1
             => {auto 0 _ : Elem SVGPointList (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO DOMPoint
  removeItem a b = primJS $ SVGPointList.prim__removeItem (up a) b
  
  export
  replaceItem :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem SVGPointList (Types t1)}
              -> {auto 0 _ : Elem DOMPoint (Types t2)}
              -> (obj : t1)
              -> (newItem : t2)
              -> (index : UInt32)
              -> JSIO DOMPoint
  replaceItem a b c = primJS $ SVGPointList.prim__replaceItem (up a) (up b) c



namespace SVGPreserveAspectRatio
  
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
  align :  JSType t
        => {auto 0 _ : Elem SVGPreserveAspectRatio (Types t)}
        -> t
        -> Attribute True I UInt16
  align v = fromPrim "SVGPreserveAspectRatio.getalign"
                     prim__align
                     prim__setAlign
                     (v :> SVGPreserveAspectRatio)
  
  export
  meetOrSlice :  JSType t
              => {auto 0 _ : Elem SVGPreserveAspectRatio (Types t)}
              -> t
              -> Attribute True I UInt16
  meetOrSlice v = fromPrim "SVGPreserveAspectRatio.getmeetOrSlice"
                           prim__meetOrSlice
                           prim__setMeetOrSlice
                           (v :> SVGPreserveAspectRatio)

namespace SVGRadialGradientElement
  
  export
  cx :  JSType t1
     => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cx a = primJS $ SVGRadialGradientElement.prim__cx (up a)
  
  export
  cy :  JSType t1
     => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  cy a = primJS $ SVGRadialGradientElement.prim__cy (up a)
  
  export
  fr :  JSType t1
     => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  fr a = primJS $ SVGRadialGradientElement.prim__fr (up a)
  
  export
  fx :  JSType t1
     => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  fx a = primJS $ SVGRadialGradientElement.prim__fx (up a)
  
  export
  fy :  JSType t1
     => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  fy a = primJS $ SVGRadialGradientElement.prim__fy (up a)
  
  export
  r :  JSType t1
    => {auto 0 _ : Elem SVGRadialGradientElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  r a = primJS $ SVGRadialGradientElement.prim__r (up a)

namespace SVGRectElement
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGRectElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGRectElement.prim__height (up a)
  
  export
  rx :  JSType t1
     => {auto 0 _ : Elem SVGRectElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  rx a = primJS $ SVGRectElement.prim__rx (up a)
  
  export
  ry :  JSType t1
     => {auto 0 _ : Elem SVGRectElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLength
  ry a = primJS $ SVGRectElement.prim__ry (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGRectElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGRectElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGRectElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGRectElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGRectElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGRectElement.prim__y (up a)

namespace SVGSVGElement
  
  export
  currentScale :  JSType t
               => {auto 0 _ : Elem SVGSVGElement (Types t)}
               -> t
               -> Attribute True I Double
  currentScale v = fromPrim "SVGSVGElement.getcurrentScale"
                            prim__currentScale
                            prim__setCurrentScale
                            (v :> SVGSVGElement)
  
  export
  currentTranslate :  JSType t1
                   => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                   -> (obj : t1)
                   -> JSIO DOMPointReadOnly
  currentTranslate a = primJS $ SVGSVGElement.prim__currentTranslate (up a)
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGSVGElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGSVGElement.prim__height (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGSVGElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGSVGElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGSVGElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGSVGElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGSVGElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGSVGElement.prim__y (up a)
  
  export
  checkEnclosure :  JSType t1
                 => JSType t2
                 => JSType t3
                 => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                 -> {auto 0 _ : Elem SVGElement (Types t2)}
                 -> {auto 0 _ : Elem DOMRectReadOnly (Types t3)}
                 -> (obj : t1)
                 -> (element : t2)
                 -> (rect : t3)
                 -> JSIO Bool
  checkEnclosure a b c = tryJS "SVGSVGElement.checkEnclosure"
                       $ SVGSVGElement.prim__checkEnclosure (up a) (up b) (up c)
  
  export
  checkIntersection :  JSType t1
                    => JSType t2
                    => JSType t3
                    => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                    -> {auto 0 _ : Elem SVGElement (Types t2)}
                    -> {auto 0 _ : Elem DOMRectReadOnly (Types t3)}
                    -> (obj : t1)
                    -> (element : t2)
                    -> (rect : t3)
                    -> JSIO Bool
  checkIntersection a b c = tryJS "SVGSVGElement.checkIntersection"
                          $ SVGSVGElement.prim__checkIntersection (up a)
                                                                  (up b)
                                                                  (up c)
  
  export
  createSVGAngle :  JSType t1
                 => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO SVGAngle
  createSVGAngle a = primJS $ SVGSVGElement.prim__createSVGAngle (up a)
  
  export
  createSVGLength :  JSType t1
                  => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO SVGLength
  createSVGLength a = primJS $ SVGSVGElement.prim__createSVGLength (up a)
  
  export
  createSVGMatrix :  JSType t1
                  => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO DOMMatrix
  createSVGMatrix a = primJS $ SVGSVGElement.prim__createSVGMatrix (up a)
  
  export
  createSVGNumber :  JSType t1
                  => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                  -> (obj : t1)
                  -> JSIO SVGNumber
  createSVGNumber a = primJS $ SVGSVGElement.prim__createSVGNumber (up a)
  
  export
  createSVGPoint :  JSType t1
                 => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                 -> (obj : t1)
                 -> JSIO DOMPoint
  createSVGPoint a = primJS $ SVGSVGElement.prim__createSVGPoint (up a)
  
  export
  createSVGRect :  JSType t1
                => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                -> (obj : t1)
                -> JSIO DOMRect
  createSVGRect a = primJS $ SVGSVGElement.prim__createSVGRect (up a)
  
  export
  createSVGTransformFromMatrix :  JSType t1
                               => JSType t2
                               => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                               -> {auto 0 _ : Elem DOMMatrix2DInit (Types t2)}
                               -> (obj : t1)
                               -> (matrix : Optional t2)
                               -> JSIO SVGTransform
  createSVGTransformFromMatrix a b = primJS
                                   $ SVGSVGElement.prim__createSVGTransformFromMatrix (up a)
                                                                                      (optUp b)

  export
  createSVGTransformFromMatrix' :  JSType t1
                                => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                                -> (obj : t1)
                                -> JSIO SVGTransform
  createSVGTransformFromMatrix' a = primJS
                                  $ SVGSVGElement.prim__createSVGTransformFromMatrix (up a)
                                                                                     undef
  
  export
  createSVGTransform :  JSType t1
                     => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                     -> (obj : t1)
                     -> JSIO SVGTransform
  createSVGTransform a = primJS $ SVGSVGElement.prim__createSVGTransform (up a)
  
  export
  deselectAll :  JSType t1
              => {auto 0 _ : Elem SVGSVGElement (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  deselectAll a = primJS $ SVGSVGElement.prim__deselectAll (up a)
  
  export
  forceRedraw :  JSType t1
              => {auto 0 _ : Elem SVGSVGElement (Types t1)}
              -> (obj : t1)
              -> JSIO ()
  forceRedraw a = primJS $ SVGSVGElement.prim__forceRedraw (up a)
  
  export
  getElementById :  JSType t1
                 => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                 -> (obj : t1)
                 -> (elementId : String)
                 -> JSIO Element
  getElementById a b = primJS $ SVGSVGElement.prim__getElementById (up a) b
  
  export
  getEnclosureList :  JSType t1
                   => JSType t2
                   => JSType t3
                   => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                   -> {auto 0 _ : Elem DOMRectReadOnly (Types t2)}
                   -> {auto 0 _ : Elem SVGElement (Types t3)}
                   -> (obj : t1)
                   -> (rect : t2)
                   -> (referenceElement : Maybe t3)
                   -> JSIO NodeList
  getEnclosureList a b c = primJS
                         $ SVGSVGElement.prim__getEnclosureList (up a)
                                                                (up b)
                                                                (mayUp c)
  
  export
  getIntersectionList :  JSType t1
                      => JSType t2
                      => JSType t3
                      => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                      -> {auto 0 _ : Elem DOMRectReadOnly (Types t2)}
                      -> {auto 0 _ : Elem SVGElement (Types t3)}
                      -> (obj : t1)
                      -> (rect : t2)
                      -> (referenceElement : Maybe t3)
                      -> JSIO NodeList
  getIntersectionList a b c = primJS
                            $ SVGSVGElement.prim__getIntersectionList (up a)
                                                                      (up b)
                                                                      (mayUp c)
  
  export
  suspendRedraw :  JSType t1
                => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                -> (obj : t1)
                -> (maxWaitMilliseconds : UInt32)
                -> JSIO UInt32
  suspendRedraw a b = primJS $ SVGSVGElement.prim__suspendRedraw (up a) b
  
  export
  unsuspendRedrawAll :  JSType t1
                     => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                     -> (obj : t1)
                     -> JSIO ()
  unsuspendRedrawAll a = primJS $ SVGSVGElement.prim__unsuspendRedrawAll (up a)
  
  export
  unsuspendRedraw :  JSType t1
                  => {auto 0 _ : Elem SVGSVGElement (Types t1)}
                  -> (obj : t1)
                  -> (suspendHandleID : UInt32)
                  -> JSIO ()
  unsuspendRedraw a b = primJS $ SVGSVGElement.prim__unsuspendRedraw (up a) b

namespace SVGScriptElement
  
  export
  crossOrigin :  JSType t
              => {auto 0 _ : Elem SVGScriptElement (Types t)}
              -> t
              -> Attribute False Maybe String
  crossOrigin v = fromNullablePrim "SVGScriptElement.getcrossOrigin"
                                   prim__crossOrigin
                                   prim__setCrossOrigin
                                   (v :> SVGScriptElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem SVGScriptElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "SVGScriptElement.gettype"
                    prim__type
                    prim__setType
                    (v :> SVGScriptElement)

namespace SVGStopElement
  
  export
  offset :  JSType t1
         => {auto 0 _ : Elem SVGStopElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedNumber
  offset a = primJS $ SVGStopElement.prim__offset (up a)

namespace SVGStringList
  
  export
  set :  JSType t1
      => {auto 0 _ : Elem SVGStringList (Types t1)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (newItem : String)
      -> JSIO ()
  set a b c = primJS $ SVGStringList.prim__set (up a) b c
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SVGStringList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SVGStringList.prim__length (up a)
  
  export
  numberOfItems :  JSType t1
                => {auto 0 _ : Elem SVGStringList (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  numberOfItems a = primJS $ SVGStringList.prim__numberOfItems (up a)
  
  export
  appendItem :  JSType t1
             => {auto 0 _ : Elem SVGStringList (Types t1)}
             -> (obj : t1)
             -> (newItem : String)
             -> JSIO String
  appendItem a b = primJS $ SVGStringList.prim__appendItem (up a) b
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem SVGStringList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ SVGStringList.prim__clear (up a)
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem SVGStringList (Types t1)}
          -> (obj : t1)
          -> (index : UInt32)
          -> JSIO String
  getItem a b = primJS $ SVGStringList.prim__getItem (up a) b
  
  export
  initialize :  JSType t1
             => {auto 0 _ : Elem SVGStringList (Types t1)}
             -> (obj : t1)
             -> (newItem : String)
             -> JSIO String
  initialize a b = primJS $ SVGStringList.prim__initialize (up a) b
  
  export
  insertItemBefore :  JSType t1
                   => {auto 0 _ : Elem SVGStringList (Types t1)}
                   -> (obj : t1)
                   -> (newItem : String)
                   -> (index : UInt32)
                   -> JSIO String
  insertItemBefore a b c = primJS
                         $ SVGStringList.prim__insertItemBefore (up a) b c
  
  export
  removeItem :  JSType t1
             => {auto 0 _ : Elem SVGStringList (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO String
  removeItem a b = primJS $ SVGStringList.prim__removeItem (up a) b
  
  export
  replaceItem :  JSType t1
              => {auto 0 _ : Elem SVGStringList (Types t1)}
              -> (obj : t1)
              -> (newItem : String)
              -> (index : UInt32)
              -> JSIO String
  replaceItem a b c = primJS $ SVGStringList.prim__replaceItem (up a) b c

namespace SVGStyleElement
  
  export
  media :  JSType t
        => {auto 0 _ : Elem SVGStyleElement (Types t)}
        -> t
        -> Attribute True I String
  media v = fromPrim "SVGStyleElement.getmedia"
                     prim__media
                     prim__setMedia
                     (v :> SVGStyleElement)
  
  export
  title :  JSType t
        => {auto 0 _ : Elem SVGStyleElement (Types t)}
        -> t
        -> Attribute True I String
  title v = fromPrim "SVGStyleElement.gettitle"
                     prim__title
                     prim__setTitle
                     (v :> SVGStyleElement)
  
  export
  type :  JSType t
       => {auto 0 _ : Elem SVGStyleElement (Types t)}
       -> t
       -> Attribute True I String
  type v = fromPrim "SVGStyleElement.gettype"
                    prim__type
                    prim__setType
                    (v :> SVGStyleElement)




namespace SVGTextContentElement
  
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
  lengthAdjust :  JSType t1
               => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
               -> (obj : t1)
               -> JSIO SVGAnimatedEnumeration
  lengthAdjust a = primJS $ SVGTextContentElement.prim__lengthAdjust (up a)
  
  export
  textLength :  JSType t1
             => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
             -> (obj : t1)
             -> JSIO SVGAnimatedLength
  textLength a = primJS $ SVGTextContentElement.prim__textLength (up a)
  
  export
  getCharNumAtPosition :  JSType t1
                       => JSType t2
                       => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                       -> {auto 0 _ : Elem DOMPointInit (Types t2)}
                       -> (obj : t1)
                       -> (point : Optional t2)
                       -> JSIO Int32
  getCharNumAtPosition a b = primJS
                           $ SVGTextContentElement.prim__getCharNumAtPosition (up a)
                                                                              (optUp b)

  export
  getCharNumAtPosition' :  JSType t1
                        => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                        -> (obj : t1)
                        -> JSIO Int32
  getCharNumAtPosition' a = primJS
                          $ SVGTextContentElement.prim__getCharNumAtPosition (up a)
                                                                             undef
  
  export
  getComputedTextLength :  JSType t1
                        => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                        -> (obj : t1)
                        -> JSIO Double
  getComputedTextLength a = primJS
                          $ SVGTextContentElement.prim__getComputedTextLength (up a)
  
  export
  getEndPositionOfChar :  JSType t1
                       => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                       -> (obj : t1)
                       -> (charnum : UInt32)
                       -> JSIO DOMPoint
  getEndPositionOfChar a b = primJS
                           $ SVGTextContentElement.prim__getEndPositionOfChar (up a)
                                                                              b
  
  export
  getExtentOfChar :  JSType t1
                  => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                  -> (obj : t1)
                  -> (charnum : UInt32)
                  -> JSIO DOMRect
  getExtentOfChar a b = primJS
                      $ SVGTextContentElement.prim__getExtentOfChar (up a) b
  
  export
  getNumberOfChars :  JSType t1
                   => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                   -> (obj : t1)
                   -> JSIO Int32
  getNumberOfChars a = primJS
                     $ SVGTextContentElement.prim__getNumberOfChars (up a)
  
  export
  getRotationOfChar :  JSType t1
                    => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                    -> (obj : t1)
                    -> (charnum : UInt32)
                    -> JSIO Double
  getRotationOfChar a b = primJS
                        $ SVGTextContentElement.prim__getRotationOfChar (up a) b
  
  export
  getStartPositionOfChar :  JSType t1
                         => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                         -> (obj : t1)
                         -> (charnum : UInt32)
                         -> JSIO DOMPoint
  getStartPositionOfChar a b = primJS
                             $ SVGTextContentElement.prim__getStartPositionOfChar (up a)
                                                                                  b
  
  export
  getSubStringLength :  JSType t1
                     => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                     -> (obj : t1)
                     -> (charnum : UInt32)
                     -> (nchars : UInt32)
                     -> JSIO Double
  getSubStringLength a b c = primJS
                           $ SVGTextContentElement.prim__getSubStringLength (up a)
                                                                            b
                                                                            c
  
  export
  selectSubString :  JSType t1
                  => {auto 0 _ : Elem SVGTextContentElement (Types t1)}
                  -> (obj : t1)
                  -> (charnum : UInt32)
                  -> (nchars : UInt32)
                  -> JSIO ()
  selectSubString a b c = primJS
                        $ SVGTextContentElement.prim__selectSubString (up a) b c


namespace SVGTextPathElement
  
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
  method :  JSType t1
         => {auto 0 _ : Elem SVGTextPathElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedEnumeration
  method a = primJS $ SVGTextPathElement.prim__method (up a)
  
  export
  spacing :  JSType t1
          => {auto 0 _ : Elem SVGTextPathElement (Types t1)}
          -> (obj : t1)
          -> JSIO SVGAnimatedEnumeration
  spacing a = primJS $ SVGTextPathElement.prim__spacing (up a)
  
  export
  startOffset :  JSType t1
              => {auto 0 _ : Elem SVGTextPathElement (Types t1)}
              -> (obj : t1)
              -> JSIO SVGAnimatedLength
  startOffset a = primJS $ SVGTextPathElement.prim__startOffset (up a)

namespace SVGTextPositioningElement
  
  export
  dx :  JSType t1
     => {auto 0 _ : Elem SVGTextPositioningElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLengthList
  dx a = primJS $ SVGTextPositioningElement.prim__dx (up a)
  
  export
  dy :  JSType t1
     => {auto 0 _ : Elem SVGTextPositioningElement (Types t1)}
     -> (obj : t1)
     -> JSIO SVGAnimatedLengthList
  dy a = primJS $ SVGTextPositioningElement.prim__dy (up a)
  
  export
  rotate :  JSType t1
         => {auto 0 _ : Elem SVGTextPositioningElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedNumberList
  rotate a = primJS $ SVGTextPositioningElement.prim__rotate (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGTextPositioningElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLengthList
  x a = primJS $ SVGTextPositioningElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGTextPositioningElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLengthList
  y a = primJS $ SVGTextPositioningElement.prim__y (up a)


namespace SVGTransform
  
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
  angle :  JSType t1
        => {auto 0 _ : Elem SVGTransform (Types t1)}
        -> (obj : t1)
        -> JSIO Double
  angle a = primJS $ SVGTransform.prim__angle (up a)
  
  export
  matrix :  JSType t1
         => {auto 0 _ : Elem SVGTransform (Types t1)}
         -> (obj : t1)
         -> JSIO DOMMatrix
  matrix a = primJS $ SVGTransform.prim__matrix (up a)
  
  export
  type :  JSType t1
       => {auto 0 _ : Elem SVGTransform (Types t1)}
       -> (obj : t1)
       -> JSIO UInt16
  type a = primJS $ SVGTransform.prim__type (up a)
  
  export
  setMatrix :  JSType t1
            => JSType t2
            => {auto 0 _ : Elem SVGTransform (Types t1)}
            -> {auto 0 _ : Elem DOMMatrix2DInit (Types t2)}
            -> (obj : t1)
            -> (matrix : Optional t2)
            -> JSIO ()
  setMatrix a b = primJS $ SVGTransform.prim__setMatrix (up a) (optUp b)

  export
  setMatrix' :  JSType t1
             => {auto 0 _ : Elem SVGTransform (Types t1)}
             -> (obj : t1)
             -> JSIO ()
  setMatrix' a = primJS $ SVGTransform.prim__setMatrix (up a) undef
  
  export
  setRotate :  JSType t1
            => {auto 0 _ : Elem SVGTransform (Types t1)}
            -> (obj : t1)
            -> (angle : Double)
            -> (cx : Double)
            -> (cy : Double)
            -> JSIO ()
  setRotate a b c d = primJS $ SVGTransform.prim__setRotate (up a) b c d
  
  export
  setScale :  JSType t1
           => {auto 0 _ : Elem SVGTransform (Types t1)}
           -> (obj : t1)
           -> (sx : Double)
           -> (sy : Double)
           -> JSIO ()
  setScale a b c = primJS $ SVGTransform.prim__setScale (up a) b c
  
  export
  setSkewX :  JSType t1
           => {auto 0 _ : Elem SVGTransform (Types t1)}
           -> (obj : t1)
           -> (angle : Double)
           -> JSIO ()
  setSkewX a b = primJS $ SVGTransform.prim__setSkewX (up a) b
  
  export
  setSkewY :  JSType t1
           => {auto 0 _ : Elem SVGTransform (Types t1)}
           -> (obj : t1)
           -> (angle : Double)
           -> JSIO ()
  setSkewY a b = primJS $ SVGTransform.prim__setSkewY (up a) b
  
  export
  setTranslate :  JSType t1
               => {auto 0 _ : Elem SVGTransform (Types t1)}
               -> (obj : t1)
               -> (tx : Double)
               -> (ty : Double)
               -> JSIO ()
  setTranslate a b c = primJS $ SVGTransform.prim__setTranslate (up a) b c

namespace SVGTransformList
  
  export
  set :  JSType t1
      => JSType t2
      => {auto 0 _ : Elem SVGTransformList (Types t1)}
      -> {auto 0 _ : Elem SVGTransform (Types t2)}
      -> (obj : t1)
      -> (index : UInt32)
      -> (newItem : t2)
      -> JSIO ()
  set a b c = primJS $ SVGTransformList.prim__set (up a) b (up c)
  
  export
  length :  JSType t1
         => {auto 0 _ : Elem SVGTransformList (Types t1)}
         -> (obj : t1)
         -> JSIO UInt32
  length a = primJS $ SVGTransformList.prim__length (up a)
  
  export
  numberOfItems :  JSType t1
                => {auto 0 _ : Elem SVGTransformList (Types t1)}
                -> (obj : t1)
                -> JSIO UInt32
  numberOfItems a = primJS $ SVGTransformList.prim__numberOfItems (up a)
  
  export
  appendItem :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGTransformList (Types t1)}
             -> {auto 0 _ : Elem SVGTransform (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGTransform
  appendItem a b = primJS $ SVGTransformList.prim__appendItem (up a) (up b)
  
  export
  clear :  JSType t1
        => {auto 0 _ : Elem SVGTransformList (Types t1)}
        -> (obj : t1)
        -> JSIO ()
  clear a = primJS $ SVGTransformList.prim__clear (up a)
  
  export
  consolidate :  JSType t1
              => {auto 0 _ : Elem SVGTransformList (Types t1)}
              -> (obj : t1)
              -> JSIO (Maybe SVGTransform)
  consolidate a = tryJS "SVGTransformList.consolidate"
                $ SVGTransformList.prim__consolidate (up a)
  
  export
  createSVGTransformFromMatrix :  JSType t1
                               => JSType t2
                               => {auto 0 _ : Elem SVGTransformList (Types t1)}
                               -> {auto 0 _ : Elem DOMMatrix2DInit (Types t2)}
                               -> (obj : t1)
                               -> (matrix : Optional t2)
                               -> JSIO SVGTransform
  createSVGTransformFromMatrix a b = primJS
                                   $ SVGTransformList.prim__createSVGTransformFromMatrix (up a)
                                                                                         (optUp b)

  export
  createSVGTransformFromMatrix' :  JSType t1
                                => {auto 0 _ : Elem SVGTransformList (Types t1)}
                                -> (obj : t1)
                                -> JSIO SVGTransform
  createSVGTransformFromMatrix' a = primJS
                                  $ SVGTransformList.prim__createSVGTransformFromMatrix (up a)
                                                                                        undef
  
  export
  getItem :  JSType t1
          => {auto 0 _ : Elem SVGTransformList (Types t1)}
          -> (obj : t1)
          -> (index : UInt32)
          -> JSIO SVGTransform
  getItem a b = primJS $ SVGTransformList.prim__getItem (up a) b
  
  export
  initialize :  JSType t1
             => JSType t2
             => {auto 0 _ : Elem SVGTransformList (Types t1)}
             -> {auto 0 _ : Elem SVGTransform (Types t2)}
             -> (obj : t1)
             -> (newItem : t2)
             -> JSIO SVGTransform
  initialize a b = primJS $ SVGTransformList.prim__initialize (up a) (up b)
  
  export
  insertItemBefore :  JSType t1
                   => JSType t2
                   => {auto 0 _ : Elem SVGTransformList (Types t1)}
                   -> {auto 0 _ : Elem SVGTransform (Types t2)}
                   -> (obj : t1)
                   -> (newItem : t2)
                   -> (index : UInt32)
                   -> JSIO SVGTransform
  insertItemBefore a b c = primJS
                         $ SVGTransformList.prim__insertItemBefore (up a)
                                                                   (up b)
                                                                   c
  
  export
  removeItem :  JSType t1
             => {auto 0 _ : Elem SVGTransformList (Types t1)}
             -> (obj : t1)
             -> (index : UInt32)
             -> JSIO SVGTransform
  removeItem a b = primJS $ SVGTransformList.prim__removeItem (up a) b
  
  export
  replaceItem :  JSType t1
              => JSType t2
              => {auto 0 _ : Elem SVGTransformList (Types t1)}
              -> {auto 0 _ : Elem SVGTransform (Types t2)}
              -> (obj : t1)
              -> (newItem : t2)
              -> (index : UInt32)
              -> JSIO SVGTransform
  replaceItem a b c = primJS
                    $ SVGTransformList.prim__replaceItem (up a) (up b) c

namespace SVGUnitTypes
  
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
  
  export
  animatedInstanceRoot :  JSType t1
                       => {auto 0 _ : Elem SVGUseElement (Types t1)}
                       -> (obj : t1)
                       -> JSIO (Maybe SVGElement)
  animatedInstanceRoot a = tryJS "SVGUseElement.animatedInstanceRoot"
                         $ SVGUseElement.prim__animatedInstanceRoot (up a)
  
  export
  height :  JSType t1
         => {auto 0 _ : Elem SVGUseElement (Types t1)}
         -> (obj : t1)
         -> JSIO SVGAnimatedLength
  height a = primJS $ SVGUseElement.prim__height (up a)
  
  export
  instanceRoot :  JSType t1
               => {auto 0 _ : Elem SVGUseElement (Types t1)}
               -> (obj : t1)
               -> JSIO (Maybe SVGElement)
  instanceRoot a = tryJS "SVGUseElement.instanceRoot"
                 $ SVGUseElement.prim__instanceRoot (up a)
  
  export
  width :  JSType t1
        => {auto 0 _ : Elem SVGUseElement (Types t1)}
        -> (obj : t1)
        -> JSIO SVGAnimatedLength
  width a = primJS $ SVGUseElement.prim__width (up a)
  
  export
  x :  JSType t1
    => {auto 0 _ : Elem SVGUseElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  x a = primJS $ SVGUseElement.prim__x (up a)
  
  export
  y :  JSType t1
    => {auto 0 _ : Elem SVGUseElement (Types t1)}
    -> (obj : t1)
    -> JSIO SVGAnimatedLength
  y a = primJS $ SVGUseElement.prim__y (up a)



namespace ShadowAnimation
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem Animation (Types t1)}
      -> (source : t1)
      -> (newTarget : Animatable)
      -> JSIO ShadowAnimation
  new a b = primJS $ ShadowAnimation.prim__new (up a) b
  
  export
  sourceAnimation :  JSType t1
                  => {auto 0 _ : Elem ShadowAnimation (Types t1)}
                  -> (obj : t1)
                  -> JSIO Animation
  sourceAnimation a = primJS $ ShadowAnimation.prim__sourceAnimation (up a)

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
  clipped :  JSType t
          => {auto 0 _ : Elem SVGBoundingBoxOptions (Types t)}
          -> t
          -> Attribute True Optional Bool
  clipped v = fromUndefOrPrim "SVGBoundingBoxOptions.getclipped"
                              prim__clipped
                              prim__setClipped
                              False
                              (v :> SVGBoundingBoxOptions)
  
  export
  fill :  JSType t
       => {auto 0 _ : Elem SVGBoundingBoxOptions (Types t)}
       -> t
       -> Attribute True Optional Bool
  fill v = fromUndefOrPrim "SVGBoundingBoxOptions.getfill"
                           prim__fill
                           prim__setFill
                           True
                           (v :> SVGBoundingBoxOptions)
  
  export
  markers :  JSType t
          => {auto 0 _ : Elem SVGBoundingBoxOptions (Types t)}
          -> t
          -> Attribute True Optional Bool
  markers v = fromUndefOrPrim "SVGBoundingBoxOptions.getmarkers"
                              prim__markers
                              prim__setMarkers
                              False
                              (v :> SVGBoundingBoxOptions)
  
  export
  stroke :  JSType t
         => {auto 0 _ : Elem SVGBoundingBoxOptions (Types t)}
         -> t
         -> Attribute True Optional Bool
  stroke v = fromUndefOrPrim "SVGBoundingBoxOptions.getstroke"
                             prim__stroke
                             prim__setStroke
                             False
                             (v :> SVGBoundingBoxOptions)
