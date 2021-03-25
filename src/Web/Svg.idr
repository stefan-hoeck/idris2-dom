module Web.Svg

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace SVGAElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  export
  relList :  Cast sVGAElement SVGAElement
          => ToJS SVGAElement
          => (obj : sVGAElement)
          -> IO DOMTokenList
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  export
  target :  Cast sVGAElement SVGAElement
         => ToJS SVGAElement
         => (obj : sVGAElement)
         -> IO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr
  
  export
  download :  Cast sVGAElement SVGAElement
           => ToJS SVGAElement
           => (obj : sVGAElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDownload :  Cast sVGAElement SVGAElement
              => ToJS SVGAElement
              => (obj : sVGAElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr
  
  export
  hreflang :  Cast sVGAElement SVGAElement
           => ToJS SVGAElement
           => (obj : sVGAElement)
           -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setHreflang :  Cast sVGAElement SVGAElement
              => ToJS SVGAElement
              => (obj : sVGAElement)
              -> (v : String)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr
  
  export
  ping :  Cast sVGAElement SVGAElement
       => ToJS SVGAElement
       => (obj : sVGAElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setPing :  Cast sVGAElement SVGAElement
          => ToJS SVGAElement
          => (obj : sVGAElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr
  
  export
  referrerPolicy :  Cast sVGAElement SVGAElement
                 => ToJS SVGAElement
                 => (obj : sVGAElement)
                 -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setReferrerPolicy :  Cast sVGAElement SVGAElement
                    => ToJS SVGAElement
                    => (obj : sVGAElement)
                    -> (v : String)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr
  
  export
  rel :  Cast sVGAElement SVGAElement
      => ToJS SVGAElement
      => (obj : sVGAElement)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRel :  Cast sVGAElement SVGAElement
         => ToJS SVGAElement
         => (obj : sVGAElement)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr
  
  export
  text :  Cast sVGAElement SVGAElement
       => ToJS SVGAElement
       => (obj : sVGAElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setText :  Cast sVGAElement SVGAElement
          => ToJS SVGAElement
          => (obj : sVGAElement)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast sVGAElement SVGAElement
       => ToJS SVGAElement
       => (obj : sVGAElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast sVGAElement SVGAElement
          => ToJS SVGAElement
          => (obj : sVGAElement)
          -> (v : String)
          -> IO ()

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
  SVG_ANGLETYPE_UNKNOWN = 0o0
  
  public export
  SVG_ANGLETYPE_UNSPECIFIED : UInt16
  SVG_ANGLETYPE_UNSPECIFIED = 1
  
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : AnyPtr -> PrimIO AnyPtr
  
  export
  unitType :  Cast sVGAngle SVGAngle
           => ToJS SVGAngle
           => (obj : sVGAngle)
           -> IO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast sVGAngle SVGAngle
        => ToJS SVGAngle
        => (obj : sVGAngle)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast sVGAngle SVGAngle
           => ToJS SVGAngle
           => (obj : sVGAngle)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr
  
  export
  valueAsString :  Cast sVGAngle SVGAngle
                => ToJS SVGAngle
                => (obj : sVGAngle)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueAsString :  Cast sVGAngle SVGAngle
                   => ToJS SVGAngle
                   => (obj : sVGAngle)
                   -> (v : String)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  valueInSpecifiedUnits :  Cast sVGAngle SVGAngle
                        => ToJS SVGAngle
                        => (obj : sVGAngle)
                        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueInSpecifiedUnits :  Cast sVGAngle SVGAngle
                           => ToJS SVGAngle
                           => (obj : sVGAngle)
                           -> (v : Double)
                           -> IO ()

namespace SVGAnimatedAngle
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedAngle SVGAnimatedAngle
          => ToJS SVGAnimatedAngle
          => (obj : sVGAnimatedAngle)
          -> IO SVGAngle
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedAngle SVGAnimatedAngle
          => ToJS SVGAnimatedAngle
          => (obj : sVGAnimatedAngle)
          -> IO SVGAngle

namespace SVGAnimatedBoolean
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedBoolean SVGAnimatedBoolean
          => ToJS SVGAnimatedBoolean
          => (obj : sVGAnimatedBoolean)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedBoolean SVGAnimatedBoolean
          => ToJS SVGAnimatedBoolean
          => (obj : sVGAnimatedBoolean)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBaseVal :  Cast sVGAnimatedBoolean SVGAnimatedBoolean
             => ToJS SVGAnimatedBoolean
             => (obj : sVGAnimatedBoolean)
             -> (v : Bool)
             -> IO ()

namespace SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedEnumeration SVGAnimatedEnumeration
          => ToJS SVGAnimatedEnumeration
          => (obj : sVGAnimatedEnumeration)
          -> IO UInt16
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedEnumeration SVGAnimatedEnumeration
          => ToJS SVGAnimatedEnumeration
          => (obj : sVGAnimatedEnumeration)
          -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBaseVal :  Cast sVGAnimatedEnumeration SVGAnimatedEnumeration
             => ToJS SVGAnimatedEnumeration
             => (obj : sVGAnimatedEnumeration)
             -> (v : UInt16)
             -> IO ()

namespace SVGAnimatedInteger
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedInteger SVGAnimatedInteger
          => ToJS SVGAnimatedInteger
          => (obj : sVGAnimatedInteger)
          -> IO Int32
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedInteger SVGAnimatedInteger
          => ToJS SVGAnimatedInteger
          => (obj : sVGAnimatedInteger)
          -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBaseVal :  Cast sVGAnimatedInteger SVGAnimatedInteger
             => ToJS SVGAnimatedInteger
             => (obj : sVGAnimatedInteger)
             -> (v : Int32)
             -> IO ()

namespace SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedLength SVGAnimatedLength
          => ToJS SVGAnimatedLength
          => (obj : sVGAnimatedLength)
          -> IO SVGLength
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedLength SVGAnimatedLength
          => ToJS SVGAnimatedLength
          => (obj : sVGAnimatedLength)
          -> IO SVGLength

namespace SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedLengthList SVGAnimatedLengthList
          => ToJS SVGAnimatedLengthList
          => (obj : sVGAnimatedLengthList)
          -> IO SVGLengthList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedLengthList SVGAnimatedLengthList
          => ToJS SVGAnimatedLengthList
          => (obj : sVGAnimatedLengthList)
          -> IO SVGLengthList

namespace SVGAnimatedNumber
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedNumber SVGAnimatedNumber
          => ToJS SVGAnimatedNumber
          => (obj : sVGAnimatedNumber)
          -> IO Double
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedNumber SVGAnimatedNumber
          => ToJS SVGAnimatedNumber
          => (obj : sVGAnimatedNumber)
          -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBaseVal :  Cast sVGAnimatedNumber SVGAnimatedNumber
             => ToJS SVGAnimatedNumber
             => (obj : sVGAnimatedNumber)
             -> (v : Double)
             -> IO ()

namespace SVGAnimatedNumberList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedNumberList SVGAnimatedNumberList
          => ToJS SVGAnimatedNumberList
          => (obj : sVGAnimatedNumberList)
          -> IO SVGNumberList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedNumberList SVGAnimatedNumberList
          => ToJS SVGAnimatedNumberList
          => (obj : sVGAnimatedNumberList)
          -> IO SVGNumberList

namespace SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio
          => ToJS SVGAnimatedPreserveAspectRatio
          => (obj : sVGAnimatedPreserveAspectRatio)
          -> IO SVGPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio
          => ToJS SVGAnimatedPreserveAspectRatio
          => (obj : sVGAnimatedPreserveAspectRatio)
          -> IO SVGPreserveAspectRatio

namespace SVGAnimatedRect
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedRect SVGAnimatedRect
          => ToJS SVGAnimatedRect
          => (obj : sVGAnimatedRect)
          -> IO DOMRectReadOnly
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedRect SVGAnimatedRect
          => ToJS SVGAnimatedRect
          => (obj : sVGAnimatedRect)
          -> IO DOMRect

namespace SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedString SVGAnimatedString
          => ToJS SVGAnimatedString
          => (obj : sVGAnimatedString)
          -> IO String
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedString SVGAnimatedString
          => ToJS SVGAnimatedString
          => (obj : sVGAnimatedString)
          -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setBaseVal :  Cast sVGAnimatedString SVGAnimatedString
             => ToJS SVGAnimatedString
             => (obj : sVGAnimatedString)
             -> (v : String)
             -> IO ()

namespace SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  export
  animVal :  Cast sVGAnimatedTransformList SVGAnimatedTransformList
          => ToJS SVGAnimatedTransformList
          => (obj : sVGAnimatedTransformList)
          -> IO SVGTransformList
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr
  
  export
  baseVal :  Cast sVGAnimatedTransformList SVGAnimatedTransformList
          => ToJS SVGAnimatedTransformList
          => (obj : sVGAnimatedTransformList)
          -> IO SVGTransformList

namespace SVGCircleElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  export
  cx :  Cast sVGCircleElement SVGCircleElement
     => ToJS SVGCircleElement
     => (obj : sVGCircleElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  export
  cy :  Cast sVGCircleElement SVGCircleElement
     => ToJS SVGCircleElement
     => (obj : sVGCircleElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr
  
  export
  r :  Cast sVGCircleElement SVGCircleElement
    => ToJS SVGCircleElement
    => (obj : sVGCircleElement)
    -> IO SVGAnimatedLength

namespace SVGElement
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr
  
  export
  className :  Cast sVGElement SVGElement
            => ToJS SVGElement
            => (obj : sVGElement)
            -> IO SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : AnyPtr -> PrimIO AnyPtr
  
  export
  ownerSVGElement :  Cast sVGElement SVGElement
                  => ToJS SVGElement
                  => (obj : sVGElement)
                  -> IO (Maybe SVGSVGElement)
  
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : AnyPtr -> PrimIO AnyPtr
  
  export
  viewportElement :  Cast sVGElement SVGElement
                  => ToJS SVGElement
                  => (obj : sVGElement)
                  -> IO (Maybe SVGElement)

namespace SVGEllipseElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  export
  cx :  Cast sVGEllipseElement SVGEllipseElement
     => ToJS SVGEllipseElement
     => (obj : sVGEllipseElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  export
  cy :  Cast sVGEllipseElement SVGEllipseElement
     => ToJS SVGEllipseElement
     => (obj : sVGEllipseElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr
  
  export
  rx :  Cast sVGEllipseElement SVGEllipseElement
     => ToJS SVGEllipseElement
     => (obj : sVGEllipseElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr
  
  export
  ry :  Cast sVGEllipseElement SVGEllipseElement
     => ToJS SVGEllipseElement
     => (obj : sVGEllipseElement)
     -> IO SVGAnimatedLength

namespace SVGForeignObjectElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGForeignObjectElement SVGForeignObjectElement
         => ToJS SVGForeignObjectElement
         => (obj : sVGForeignObjectElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGForeignObjectElement SVGForeignObjectElement
        => ToJS SVGForeignObjectElement
        => (obj : sVGForeignObjectElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGForeignObjectElement SVGForeignObjectElement
    => ToJS SVGForeignObjectElement
    => (obj : sVGForeignObjectElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGForeignObjectElement SVGForeignObjectElement
    => ToJS SVGForeignObjectElement
    => (obj : sVGForeignObjectElement)
    -> IO SVGAnimatedLength

namespace SVGGeometryElement
  
  %foreign "browser:lambda:x=>x.pathLength"
  prim__pathLength : AnyPtr -> PrimIO AnyPtr
  
  export
  pathLength :  Cast sVGGeometryElement SVGGeometryElement
             => ToJS SVGGeometryElement
             => (obj : sVGGeometryElement)
             -> IO SVGAnimatedNumber

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
  SVG_SPREADMETHOD_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.gradientTransform"
  prim__gradientTransform : AnyPtr -> PrimIO AnyPtr
  
  export
  gradientTransform :  Cast sVGGradientElement SVGGradientElement
                    => ToJS SVGGradientElement
                    => (obj : sVGGradientElement)
                    -> IO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  gradientUnits :  Cast sVGGradientElement SVGGradientElement
                => ToJS SVGGradientElement
                => (obj : sVGGradientElement)
                -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : AnyPtr -> PrimIO AnyPtr
  
  export
  spreadMethod :  Cast sVGGradientElement SVGGradientElement
               => ToJS SVGGradientElement
               => (obj : sVGGradientElement)
               -> IO SVGAnimatedEnumeration

namespace SVGGraphicsElement
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr
  
  export
  transform :  Cast sVGGraphicsElement SVGGraphicsElement
            => ToJS SVGGraphicsElement
            => (obj : sVGGraphicsElement)
            -> IO SVGAnimatedTransformList

namespace SVGImageElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGImageElement SVGImageElement
         => ToJS SVGImageElement
         => (obj : sVGImageElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  preserveAspectRatio :  Cast sVGImageElement SVGImageElement
                      => ToJS SVGImageElement
                      => (obj : sVGImageElement)
                      -> IO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGImageElement SVGImageElement
        => ToJS SVGImageElement
        => (obj : sVGImageElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGImageElement SVGImageElement
    => ToJS SVGImageElement
    => (obj : sVGImageElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGImageElement SVGImageElement
    => ToJS SVGImageElement
    => (obj : sVGImageElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast sVGImageElement SVGImageElement
              => ToJS SVGImageElement
              => (obj : sVGImageElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast sVGImageElement SVGImageElement
                 => ToJS SVGImageElement
                 => (obj : sVGImageElement)
                 -> (v : Maybe String)
                 -> IO ()

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
  SVG_LENGTHTYPE_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.unitType"
  prim__unitType : AnyPtr -> PrimIO AnyPtr
  
  export
  unitType :  Cast sVGLength SVGLength
           => ToJS SVGLength
           => (obj : sVGLength)
           -> IO UInt16
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast sVGLength SVGLength
        => ToJS SVGLength
        => (obj : sVGLength)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast sVGLength SVGLength
           => ToJS SVGLength
           => (obj : sVGLength)
           -> (v : Double)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr
  
  export
  valueAsString :  Cast sVGLength SVGLength
                => ToJS SVGLength
                => (obj : sVGLength)
                -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueAsString :  Cast sVGLength SVGLength
                   => ToJS SVGLength
                   => (obj : sVGLength)
                   -> (v : String)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  valueInSpecifiedUnits :  Cast sVGLength SVGLength
                        => ToJS SVGLength
                        => (obj : sVGLength)
                        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValueInSpecifiedUnits :  Cast sVGLength SVGLength
                           => ToJS SVGLength
                           => (obj : sVGLength)
                           -> (v : Double)
                           -> IO ()

namespace SVGLengthList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sVGLengthList SVGLengthList
         => ToJS SVGLengthList
         => (obj : sVGLengthList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr
  
  export
  numberOfItems :  Cast sVGLengthList SVGLengthList
                => ToJS SVGLengthList
                => (obj : sVGLengthList)
                -> IO UInt32

namespace SVGLineElement
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr
  
  export
  x1 :  Cast sVGLineElement SVGLineElement
     => ToJS SVGLineElement
     => (obj : sVGLineElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr
  
  export
  x2 :  Cast sVGLineElement SVGLineElement
     => ToJS SVGLineElement
     => (obj : sVGLineElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr
  
  export
  y1 :  Cast sVGLineElement SVGLineElement
     => ToJS SVGLineElement
     => (obj : sVGLineElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr
  
  export
  y2 :  Cast sVGLineElement SVGLineElement
     => ToJS SVGLineElement
     => (obj : sVGLineElement)
     -> IO SVGAnimatedLength

namespace SVGLinearGradientElement
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr
  
  export
  x1 :  Cast sVGLinearGradientElement SVGLinearGradientElement
     => ToJS SVGLinearGradientElement
     => (obj : sVGLinearGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr
  
  export
  x2 :  Cast sVGLinearGradientElement SVGLinearGradientElement
     => ToJS SVGLinearGradientElement
     => (obj : sVGLinearGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr
  
  export
  y1 :  Cast sVGLinearGradientElement SVGLinearGradientElement
     => ToJS SVGLinearGradientElement
     => (obj : sVGLinearGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr
  
  export
  y2 :  Cast sVGLinearGradientElement SVGLinearGradientElement
     => ToJS SVGLinearGradientElement
     => (obj : sVGLinearGradientElement)
     -> IO SVGAnimatedLength

namespace SVGMarkerElement
  
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
  markerHeight :  Cast sVGMarkerElement SVGMarkerElement
               => ToJS SVGMarkerElement
               => (obj : sVGMarkerElement)
               -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  markerUnits :  Cast sVGMarkerElement SVGMarkerElement
              => ToJS SVGMarkerElement
              => (obj : sVGMarkerElement)
              -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : AnyPtr -> PrimIO AnyPtr
  
  export
  markerWidth :  Cast sVGMarkerElement SVGMarkerElement
              => ToJS SVGMarkerElement
              => (obj : sVGMarkerElement)
              -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : AnyPtr -> PrimIO AnyPtr
  
  export
  orientAngle :  Cast sVGMarkerElement SVGMarkerElement
              => ToJS SVGMarkerElement
              => (obj : sVGMarkerElement)
              -> IO SVGAnimatedAngle
  
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : AnyPtr -> PrimIO AnyPtr
  
  export
  orientType :  Cast sVGMarkerElement SVGMarkerElement
             => ToJS SVGMarkerElement
             => (obj : sVGMarkerElement)
             -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : AnyPtr -> PrimIO AnyPtr
  
  export
  refX :  Cast sVGMarkerElement SVGMarkerElement
       => ToJS SVGMarkerElement
       => (obj : sVGMarkerElement)
       -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : AnyPtr -> PrimIO AnyPtr
  
  export
  refY :  Cast sVGMarkerElement SVGMarkerElement
       => ToJS SVGMarkerElement
       => (obj : sVGMarkerElement)
       -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : AnyPtr -> PrimIO AnyPtr
  
  export
  orient :  Cast sVGMarkerElement SVGMarkerElement
         => ToJS SVGMarkerElement
         => (obj : sVGMarkerElement)
         -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.orient = v}"
  prim__setOrient : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setOrient :  Cast sVGMarkerElement SVGMarkerElement
            => ToJS SVGMarkerElement
            => (obj : sVGMarkerElement)
            -> (v : String)
            -> IO ()

namespace SVGNumber
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr
  
  export
  value :  Cast sVGNumber SVGNumber
        => ToJS SVGNumber
        => (obj : sVGNumber)
        -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setValue :  Cast sVGNumber SVGNumber
           => ToJS SVGNumber
           => (obj : sVGNumber)
           -> (v : Double)
           -> IO ()

namespace SVGNumberList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sVGNumberList SVGNumberList
         => ToJS SVGNumberList
         => (obj : sVGNumberList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr
  
  export
  numberOfItems :  Cast sVGNumberList SVGNumberList
                => ToJS SVGNumberList
                => (obj : sVGNumberList)
                -> IO UInt32

namespace SVGPatternElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGPatternElement SVGPatternElement
         => ToJS SVGPatternElement
         => (obj : sVGPatternElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.patternContentUnits"
  prim__patternContentUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  patternContentUnits :  Cast sVGPatternElement SVGPatternElement
                      => ToJS SVGPatternElement
                      => (obj : sVGPatternElement)
                      -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.patternTransform"
  prim__patternTransform : AnyPtr -> PrimIO AnyPtr
  
  export
  patternTransform :  Cast sVGPatternElement SVGPatternElement
                   => ToJS SVGPatternElement
                   => (obj : sVGPatternElement)
                   -> IO SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.patternUnits"
  prim__patternUnits : AnyPtr -> PrimIO AnyPtr
  
  export
  patternUnits :  Cast sVGPatternElement SVGPatternElement
               => ToJS SVGPatternElement
               => (obj : sVGPatternElement)
               -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGPatternElement SVGPatternElement
        => ToJS SVGPatternElement
        => (obj : sVGPatternElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGPatternElement SVGPatternElement
    => ToJS SVGPatternElement
    => (obj : sVGPatternElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGPatternElement SVGPatternElement
    => ToJS SVGPatternElement
    => (obj : sVGPatternElement)
    -> IO SVGAnimatedLength

namespace SVGPointList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sVGPointList SVGPointList
         => ToJS SVGPointList
         => (obj : sVGPointList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr
  
  export
  numberOfItems :  Cast sVGPointList SVGPointList
                => ToJS SVGPointList
                => (obj : sVGPointList)
                -> IO UInt32

namespace SVGPreserveAspectRatio
  
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
  align :  Cast sVGPreserveAspectRatio SVGPreserveAspectRatio
        => ToJS SVGPreserveAspectRatio
        => (obj : sVGPreserveAspectRatio)
        -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAlign :  Cast sVGPreserveAspectRatio SVGPreserveAspectRatio
           => ToJS SVGPreserveAspectRatio
           => (obj : sVGPreserveAspectRatio)
           -> (v : UInt16)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : AnyPtr -> PrimIO AnyPtr
  
  export
  meetOrSlice :  Cast sVGPreserveAspectRatio SVGPreserveAspectRatio
              => ToJS SVGPreserveAspectRatio
              => (obj : sVGPreserveAspectRatio)
              -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice = v}"
  prim__setMeetOrSlice : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMeetOrSlice :  Cast sVGPreserveAspectRatio SVGPreserveAspectRatio
                 => ToJS SVGPreserveAspectRatio
                 => (obj : sVGPreserveAspectRatio)
                 -> (v : UInt16)
                 -> IO ()

namespace SVGRadialGradientElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  export
  cx :  Cast sVGRadialGradientElement SVGRadialGradientElement
     => ToJS SVGRadialGradientElement
     => (obj : sVGRadialGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  export
  cy :  Cast sVGRadialGradientElement SVGRadialGradientElement
     => ToJS SVGRadialGradientElement
     => (obj : sVGRadialGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fr"
  prim__fr : AnyPtr -> PrimIO AnyPtr
  
  export
  fr :  Cast sVGRadialGradientElement SVGRadialGradientElement
     => ToJS SVGRadialGradientElement
     => (obj : sVGRadialGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fx"
  prim__fx : AnyPtr -> PrimIO AnyPtr
  
  export
  fx :  Cast sVGRadialGradientElement SVGRadialGradientElement
     => ToJS SVGRadialGradientElement
     => (obj : sVGRadialGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.fy"
  prim__fy : AnyPtr -> PrimIO AnyPtr
  
  export
  fy :  Cast sVGRadialGradientElement SVGRadialGradientElement
     => ToJS SVGRadialGradientElement
     => (obj : sVGRadialGradientElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr
  
  export
  r :  Cast sVGRadialGradientElement SVGRadialGradientElement
    => ToJS SVGRadialGradientElement
    => (obj : sVGRadialGradientElement)
    -> IO SVGAnimatedLength

namespace SVGRectElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGRectElement SVGRectElement
         => ToJS SVGRectElement
         => (obj : sVGRectElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr
  
  export
  rx :  Cast sVGRectElement SVGRectElement
     => ToJS SVGRectElement
     => (obj : sVGRectElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr
  
  export
  ry :  Cast sVGRectElement SVGRectElement
     => ToJS SVGRectElement
     => (obj : sVGRectElement)
     -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGRectElement SVGRectElement
        => ToJS SVGRectElement
        => (obj : sVGRectElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGRectElement SVGRectElement
    => ToJS SVGRectElement
    => (obj : sVGRectElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGRectElement SVGRectElement
    => ToJS SVGRectElement
    => (obj : sVGRectElement)
    -> IO SVGAnimatedLength

namespace SVGSVGElement
  
  %foreign "browser:lambda:x=>x.currentTranslate"
  prim__currentTranslate : AnyPtr -> PrimIO AnyPtr
  
  export
  currentTranslate :  Cast sVGSVGElement SVGSVGElement
                   => ToJS SVGSVGElement
                   => (obj : sVGSVGElement)
                   -> IO DOMPointReadOnly
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGSVGElement SVGSVGElement
         => ToJS SVGSVGElement
         => (obj : sVGSVGElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGSVGElement SVGSVGElement
        => ToJS SVGSVGElement
        => (obj : sVGSVGElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGSVGElement SVGSVGElement
    => ToJS SVGSVGElement
    => (obj : sVGSVGElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGSVGElement SVGSVGElement
    => ToJS SVGSVGElement
    => (obj : sVGSVGElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.currentScale"
  prim__currentScale : AnyPtr -> PrimIO AnyPtr
  
  export
  currentScale :  Cast sVGSVGElement SVGSVGElement
               => ToJS SVGSVGElement
               => (obj : sVGSVGElement)
               -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.currentScale = v}"
  prim__setCurrentScale : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCurrentScale :  Cast sVGSVGElement SVGSVGElement
                  => ToJS SVGSVGElement
                  => (obj : sVGSVGElement)
                  -> (v : Double)
                  -> IO ()

namespace SVGScriptElement
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr
  
  export
  crossOrigin :  Cast sVGScriptElement SVGScriptElement
              => ToJS SVGScriptElement
              => (obj : sVGScriptElement)
              -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCrossOrigin :  Cast sVGScriptElement SVGScriptElement
                 => ToJS SVGScriptElement
                 => (obj : sVGScriptElement)
                 -> (v : Maybe String)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast sVGScriptElement SVGScriptElement
       => ToJS SVGScriptElement
       => (obj : sVGScriptElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast sVGScriptElement SVGScriptElement
          => ToJS SVGScriptElement
          => (obj : sVGScriptElement)
          -> (v : String)
          -> IO ()

namespace SVGStopElement
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr
  
  export
  offset :  Cast sVGStopElement SVGStopElement
         => ToJS SVGStopElement
         => (obj : sVGStopElement)
         -> IO SVGAnimatedNumber

namespace SVGStringList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sVGStringList SVGStringList
         => ToJS SVGStringList
         => (obj : sVGStringList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr
  
  export
  numberOfItems :  Cast sVGStringList SVGStringList
                => ToJS SVGStringList
                => (obj : sVGStringList)
                -> IO UInt32

namespace SVGStyleElement
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr
  
  export
  media :  Cast sVGStyleElement SVGStyleElement
        => ToJS SVGStyleElement
        => (obj : sVGStyleElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMedia :  Cast sVGStyleElement SVGStyleElement
           => ToJS SVGStyleElement
           => (obj : sVGStyleElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr
  
  export
  title :  Cast sVGStyleElement SVGStyleElement
        => ToJS SVGStyleElement
        => (obj : sVGStyleElement)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setTitle :  Cast sVGStyleElement SVGStyleElement
           => ToJS SVGStyleElement
           => (obj : sVGStyleElement)
           -> (v : String)
           -> IO ()
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast sVGStyleElement SVGStyleElement
       => ToJS SVGStyleElement
       => (obj : sVGStyleElement)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setType :  Cast sVGStyleElement SVGStyleElement
          => ToJS SVGStyleElement
          => (obj : sVGStyleElement)
          -> (v : String)
          -> IO ()

namespace SVGTextContentElement
  
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
  lengthAdjust :  Cast sVGTextContentElement SVGTextContentElement
               => ToJS SVGTextContentElement
               => (obj : sVGTextContentElement)
               -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr
  
  export
  textLength :  Cast sVGTextContentElement SVGTextContentElement
             => ToJS SVGTextContentElement
             => (obj : sVGTextContentElement)
             -> IO SVGAnimatedLength

namespace SVGTextPathElement
  
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
  method :  Cast sVGTextPathElement SVGTextPathElement
         => ToJS SVGTextPathElement
         => (obj : sVGTextPathElement)
         -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : AnyPtr -> PrimIO AnyPtr
  
  export
  spacing :  Cast sVGTextPathElement SVGTextPathElement
          => ToJS SVGTextPathElement
          => (obj : sVGTextPathElement)
          -> IO SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr
  
  export
  startOffset :  Cast sVGTextPathElement SVGTextPathElement
              => ToJS SVGTextPathElement
              => (obj : sVGTextPathElement)
              -> IO SVGAnimatedLength

namespace SVGTextPositioningElement
  
  %foreign "browser:lambda:x=>x.dx"
  prim__dx : AnyPtr -> PrimIO AnyPtr
  
  export
  dx :  Cast sVGTextPositioningElement SVGTextPositioningElement
     => ToJS SVGTextPositioningElement
     => (obj : sVGTextPositioningElement)
     -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.dy"
  prim__dy : AnyPtr -> PrimIO AnyPtr
  
  export
  dy :  Cast sVGTextPositioningElement SVGTextPositioningElement
     => ToJS SVGTextPositioningElement
     => (obj : sVGTextPositioningElement)
     -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.rotate"
  prim__rotate : AnyPtr -> PrimIO AnyPtr
  
  export
  rotate :  Cast sVGTextPositioningElement SVGTextPositioningElement
         => ToJS SVGTextPositioningElement
         => (obj : sVGTextPositioningElement)
         -> IO SVGAnimatedNumberList
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGTextPositioningElement SVGTextPositioningElement
    => ToJS SVGTextPositioningElement
    => (obj : sVGTextPositioningElement)
    -> IO SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGTextPositioningElement SVGTextPositioningElement
    => ToJS SVGTextPositioningElement
    => (obj : sVGTextPositioningElement)
    -> IO SVGAnimatedLengthList

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
  SVG_TRANSFORM_UNKNOWN = 0o0
  
  %foreign "browser:lambda:x=>x.angle"
  prim__angle : AnyPtr -> PrimIO AnyPtr
  
  export
  angle :  Cast sVGTransform SVGTransform
        => ToJS SVGTransform
        => (obj : sVGTransform)
        -> IO Double
  
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : AnyPtr -> PrimIO AnyPtr
  
  export
  matrix :  Cast sVGTransform SVGTransform
         => ToJS SVGTransform
         => (obj : sVGTransform)
         -> IO DOMMatrix
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr
  
  export
  type :  Cast sVGTransform SVGTransform
       => ToJS SVGTransform
       => (obj : sVGTransform)
       -> IO UInt16

namespace SVGTransformList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  export
  length :  Cast sVGTransformList SVGTransformList
         => ToJS SVGTransformList
         => (obj : sVGTransformList)
         -> IO UInt32
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr
  
  export
  numberOfItems :  Cast sVGTransformList SVGTransformList
                => ToJS SVGTransformList
                => (obj : sVGTransformList)
                -> IO UInt32

namespace SVGUnitTypes
  
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
  
  %foreign "browser:lambda:x=>x.animatedInstanceRoot"
  prim__animatedInstanceRoot : AnyPtr -> PrimIO AnyPtr
  
  export
  animatedInstanceRoot :  Cast sVGUseElement SVGUseElement
                       => ToJS SVGUseElement
                       => (obj : sVGUseElement)
                       -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  export
  height :  Cast sVGUseElement SVGUseElement
         => ToJS SVGUseElement
         => (obj : sVGUseElement)
         -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.instanceRoot"
  prim__instanceRoot : AnyPtr -> PrimIO AnyPtr
  
  export
  instanceRoot :  Cast sVGUseElement SVGUseElement
               => ToJS SVGUseElement
               => (obj : sVGUseElement)
               -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  export
  width :  Cast sVGUseElement SVGUseElement
        => ToJS SVGUseElement
        => (obj : sVGUseElement)
        -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  export
  x :  Cast sVGUseElement SVGUseElement
    => ToJS SVGUseElement
    => (obj : sVGUseElement)
    -> IO SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  export
  y :  Cast sVGUseElement SVGUseElement
    => ToJS SVGUseElement
    => (obj : sVGUseElement)
    -> IO SVGAnimatedLength

namespace ShadowAnimation
  
  %foreign "browser:lambda:x=>x.sourceAnimation"
  prim__sourceAnimation : AnyPtr -> PrimIO AnyPtr
  
  export
  sourceAnimation :  Cast shadowAnimation ShadowAnimation
                  => ToJS ShadowAnimation
                  => (obj : shadowAnimation)
                  -> IO Animation

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace SVGAnimatedPoints
  
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : AnyPtr -> PrimIO AnyPtr
  
  export
  animatedPoints :  Cast sVGAnimatedPoints SVGAnimatedPoints
                 => ToJS SVGAnimatedPoints
                 => (obj : sVGAnimatedPoints)
                 -> IO SVGPointList
  
  %foreign "browser:lambda:x=>x.points"
  prim__points : AnyPtr -> PrimIO AnyPtr
  
  export
  points :  Cast sVGAnimatedPoints SVGAnimatedPoints
         => ToJS SVGAnimatedPoints
         => (obj : sVGAnimatedPoints)
         -> IO SVGPointList

namespace SVGElementInstance
  
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement : AnyPtr -> PrimIO AnyPtr
  
  export
  correspondingElement :  Cast sVGElementInstance SVGElementInstance
                       => ToJS SVGElementInstance
                       => (obj : sVGElementInstance)
                       -> IO (Maybe SVGElement)
  
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement : AnyPtr -> PrimIO AnyPtr
  
  export
  correspondingUseElement :  Cast sVGElementInstance SVGElementInstance
                          => ToJS SVGElementInstance
                          => (obj : sVGElementInstance)
                          -> IO (Maybe SVGUseElement)

namespace SVGFitToViewBox
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr
  
  export
  preserveAspectRatio :  Cast sVGFitToViewBox SVGFitToViewBox
                      => ToJS SVGFitToViewBox
                      => (obj : sVGFitToViewBox)
                      -> IO SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : AnyPtr -> PrimIO AnyPtr
  
  export
  viewBox :  Cast sVGFitToViewBox SVGFitToViewBox
          => ToJS SVGFitToViewBox
          => (obj : sVGFitToViewBox)
          -> IO SVGAnimatedRect

namespace SVGTests
  
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : AnyPtr -> PrimIO AnyPtr
  
  export
  requiredExtensions :  Cast sVGTests SVGTests
                     => ToJS SVGTests
                     => (obj : sVGTests)
                     -> IO SVGStringList
  
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : AnyPtr -> PrimIO AnyPtr
  
  export
  systemLanguage :  Cast sVGTests SVGTests
                 => ToJS SVGTests
                 => (obj : sVGTests)
                 -> IO SVGStringList

namespace SVGURIReference
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr
  
  export
  href :  Cast sVGURIReference SVGURIReference
       => ToJS SVGURIReference
       => (obj : sVGURIReference)
       -> IO SVGAnimatedString

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  %foreign "browser:lambda:x=>x.clipped"
  prim__clipped : AnyPtr -> PrimIO AnyPtr
  
  export
  clipped :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
          => ToJS SVGBoundingBoxOptions
          => (obj : sVGBoundingBoxOptions)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.clipped = v}"
  prim__setClipped : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClipped :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
             => ToJS SVGBoundingBoxOptions
             => (obj : sVGBoundingBoxOptions)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr
  
  export
  fill :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
       => ToJS SVGBoundingBoxOptions
       => (obj : sVGBoundingBoxOptions)
       -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setFill :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
          => ToJS SVGBoundingBoxOptions
          => (obj : sVGBoundingBoxOptions)
          -> (v : Bool)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : AnyPtr -> PrimIO AnyPtr
  
  export
  markers :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
          => ToJS SVGBoundingBoxOptions
          => (obj : sVGBoundingBoxOptions)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.markers = v}"
  prim__setMarkers : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMarkers :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
             => ToJS SVGBoundingBoxOptions
             => (obj : sVGBoundingBoxOptions)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : AnyPtr -> PrimIO AnyPtr
  
  export
  stroke :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
         => ToJS SVGBoundingBoxOptions
         => (obj : sVGBoundingBoxOptions)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.stroke = v}"
  prim__setStroke : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setStroke :  Cast sVGBoundingBoxOptions SVGBoundingBoxOptions
            => ToJS SVGBoundingBoxOptions
            => (obj : sVGBoundingBoxOptions)
            -> (v : Bool)
            -> IO ()



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast MathMLElement DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast MathMLElement Element where
  cast = believe_me

export
Cast MathMLElement ElementCSSInlineStyle where
  cast = believe_me

export
Cast MathMLElement GlobalEventHandlers where
  cast = believe_me

export
Cast MathMLElement HTMLOrSVGElement where
  cast = believe_me

export
Cast SVGAElement HTMLHyperlinkElementUtils where
  cast = believe_me

export
Cast SVGAElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGAElement SVGURIReference where
  cast = believe_me

export
Cast SVGCircleElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGDefsElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGDescElement SVGElement where
  cast = believe_me

export
Cast SVGElement DocumentAndElementEventHandlers where
  cast = believe_me

export
Cast SVGElement Element where
  cast = believe_me

export
Cast SVGElement GlobalEventHandlers where
  cast = believe_me

export
Cast SVGElement HTMLOrSVGElement where
  cast = believe_me

export
Cast SVGElement SVGElementInstance where
  cast = believe_me

export
Cast SVGEllipseElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGForeignObjectElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGGElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGGeometryElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGGradientElement SVGElement where
  cast = believe_me

export
Cast SVGGradientElement SVGURIReference where
  cast = believe_me

export
Cast SVGGraphicsElement SVGElement where
  cast = believe_me

export
Cast SVGGraphicsElement SVGTests where
  cast = believe_me

export
Cast SVGImageElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGImageElement SVGURIReference where
  cast = believe_me

export
Cast SVGLineElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGLinearGradientElement SVGGradientElement where
  cast = believe_me

export
Cast SVGMarkerElement SVGElement where
  cast = believe_me

export
Cast SVGMarkerElement SVGFitToViewBox where
  cast = believe_me

export
Cast SVGMetadataElement SVGElement where
  cast = believe_me

export
Cast SVGPathElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGPatternElement SVGElement where
  cast = believe_me

export
Cast SVGPatternElement SVGFitToViewBox where
  cast = believe_me

export
Cast SVGPatternElement SVGURIReference where
  cast = believe_me

export
Cast SVGPolygonElement SVGAnimatedPoints where
  cast = believe_me

export
Cast SVGPolygonElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGPolylineElement SVGAnimatedPoints where
  cast = believe_me

export
Cast SVGPolylineElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGRadialGradientElement SVGGradientElement where
  cast = believe_me

export
Cast SVGRectElement SVGGeometryElement where
  cast = believe_me

export
Cast SVGSVGElement SVGFitToViewBox where
  cast = believe_me

export
Cast SVGSVGElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGSVGElement WindowEventHandlers where
  cast = believe_me

export
Cast SVGScriptElement SVGElement where
  cast = believe_me

export
Cast SVGScriptElement SVGURIReference where
  cast = believe_me

export
Cast SVGStopElement SVGElement where
  cast = believe_me

export
Cast SVGStyleElement LinkStyle where
  cast = believe_me

export
Cast SVGStyleElement SVGElement where
  cast = believe_me

export
Cast SVGSwitchElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGSymbolElement SVGFitToViewBox where
  cast = believe_me

export
Cast SVGSymbolElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGTSpanElement SVGTextPositioningElement where
  cast = believe_me

export
Cast SVGTextContentElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGTextElement SVGTextPositioningElement where
  cast = believe_me

export
Cast SVGTextPathElement SVGTextContentElement where
  cast = believe_me

export
Cast SVGTextPathElement SVGURIReference where
  cast = believe_me

export
Cast SVGTextPositioningElement SVGTextContentElement where
  cast = believe_me

export
Cast SVGTitleElement SVGElement where
  cast = believe_me

export
Cast SVGUseElement SVGGraphicsElement where
  cast = believe_me

export
Cast SVGUseElement SVGURIReference where
  cast = believe_me

export
Cast SVGUseElementShadowRoot ShadowRoot where
  cast = believe_me

export
Cast SVGViewElement SVGElement where
  cast = believe_me

export
Cast SVGViewElement SVGFitToViewBox where
  cast = believe_me

export
Cast ShadowAnimation Animation where
  cast = believe_me