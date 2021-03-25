module Web.Svg

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace SVGAElement
  
  %foreign "browser:lambda:x=>x.relList"
  prim__relList : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.target"
  prim__target : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.download"
  prim__download : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.download = v}"
  prim__setDownload : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.hreflang"
  prim__hreflang : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.hreflang = v}"
  prim__setHreflang : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ping"
  prim__ping : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ping = v}"
  prim__setPing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.referrerPolicy"
  prim__referrerPolicy : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.referrerPolicy = v}"
  prim__setReferrerPolicy : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rel"
  prim__rel : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.rel = v}"
  prim__setRel : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.text"
  prim__text : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.text = v}"
  prim__setText : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedAngle
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedBoolean
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedEnumeration
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedInteger
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedLength
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedLengthList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedNumber
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedNumberList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedPreserveAspectRatio
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedRect
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedString
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
  prim__setBaseVal : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGAnimatedTransformList
  
  %foreign "browser:lambda:x=>x.animVal"
  prim__animVal : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.baseVal"
  prim__baseVal : AnyPtr -> PrimIO AnyPtr

namespace SVGCircleElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

namespace SVGElement
  
  %foreign "browser:lambda:x=>x.className"
  prim__className : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ownerSVGElement"
  prim__ownerSVGElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.viewportElement"
  prim__viewportElement : AnyPtr -> PrimIO AnyPtr

namespace SVGEllipseElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr

namespace SVGForeignObjectElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

namespace SVGGeometryElement
  
  %foreign "browser:lambda:x=>x.pathLength"
  prim__pathLength : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.gradientUnits"
  prim__gradientUnits : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.spreadMethod"
  prim__spreadMethod : AnyPtr -> PrimIO AnyPtr

namespace SVGGraphicsElement
  
  %foreign "browser:lambda:x=>x.transform"
  prim__transform : AnyPtr -> PrimIO AnyPtr

namespace SVGImageElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueAsString"
  prim__valueAsString : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueAsString = v}"
  prim__setValueAsString : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.valueInSpecifiedUnits"
  prim__valueInSpecifiedUnits : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.valueInSpecifiedUnits = v}"
  prim__setValueInSpecifiedUnits : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGLengthList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

namespace SVGLineElement
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

namespace SVGLinearGradientElement
  
  %foreign "browser:lambda:x=>x.x1"
  prim__x1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x2"
  prim__x2 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y1"
  prim__y1 : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y2"
  prim__y2 : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.markerUnits"
  prim__markerUnits : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.markerWidth"
  prim__markerWidth : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.orientAngle"
  prim__orientAngle : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.orientType"
  prim__orientType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.refX"
  prim__refX : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.refY"
  prim__refY : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.orient"
  prim__orient : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.orient = v}"
  prim__setOrient : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGNumber
  
  %foreign "browser:lambda:x=>x.value"
  prim__value : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.value = v}"
  prim__setValue : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGNumberList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

namespace SVGPatternElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.patternContentUnits"
  prim__patternContentUnits : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.patternTransform"
  prim__patternTransform : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.patternUnits"
  prim__patternUnits : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

namespace SVGPointList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

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

  %foreign "browser:lambda:(x,v)=>{x.align = v}"
  prim__setAlign : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.meetOrSlice"
  prim__meetOrSlice : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.meetOrSlice = v}"
  prim__setMeetOrSlice : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGRadialGradientElement
  
  %foreign "browser:lambda:x=>x.cx"
  prim__cx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.cy"
  prim__cy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fr"
  prim__fr : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fx"
  prim__fx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fy"
  prim__fy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.r"
  prim__r : AnyPtr -> PrimIO AnyPtr

namespace SVGRectElement
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rx"
  prim__rx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ry"
  prim__ry : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

namespace SVGSVGElement
  
  %foreign "browser:lambda:x=>x.currentTranslate"
  prim__currentTranslate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.currentScale"
  prim__currentScale : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.currentScale = v}"
  prim__setCurrentScale : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGScriptElement
  
  %foreign "browser:lambda:x=>x.crossOrigin"
  prim__crossOrigin : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
  prim__setCrossOrigin : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace SVGStopElement
  
  %foreign "browser:lambda:x=>x.offset"
  prim__offset : AnyPtr -> PrimIO AnyPtr

namespace SVGStringList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

namespace SVGStyleElement
  
  %foreign "browser:lambda:x=>x.media"
  prim__media : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.media = v}"
  prim__setMedia : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.title"
  prim__title : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.title = v}"
  prim__setTitle : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.type = v}"
  prim__setType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.textLength"
  prim__textLength : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.spacing"
  prim__spacing : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.startOffset"
  prim__startOffset : AnyPtr -> PrimIO AnyPtr

namespace SVGTextPositioningElement
  
  %foreign "browser:lambda:x=>x.dx"
  prim__dx : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.dy"
  prim__dy : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.rotate"
  prim__rotate : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.matrix"
  prim__matrix : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.type"
  prim__type : AnyPtr -> PrimIO AnyPtr

namespace SVGTransformList
  
  %foreign "browser:lambda:x=>x.length"
  prim__length : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.numberOfItems"
  prim__numberOfItems : AnyPtr -> PrimIO AnyPtr

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
  
  %foreign "browser:lambda:x=>x.height"
  prim__height : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.instanceRoot"
  prim__instanceRoot : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.width"
  prim__width : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.x"
  prim__x : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.y"
  prim__y : AnyPtr -> PrimIO AnyPtr

namespace ShadowAnimation
  
  %foreign "browser:lambda:x=>x.sourceAnimation"
  prim__sourceAnimation : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

namespace SVGAnimatedPoints
  
  %foreign "browser:lambda:x=>x.animatedPoints"
  prim__animatedPoints : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.points"
  prim__points : AnyPtr -> PrimIO AnyPtr

namespace SVGElementInstance
  
  %foreign "browser:lambda:x=>x.correspondingElement"
  prim__correspondingElement : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.correspondingUseElement"
  prim__correspondingUseElement : AnyPtr -> PrimIO AnyPtr

namespace SVGFitToViewBox
  
  %foreign "browser:lambda:x=>x.preserveAspectRatio"
  prim__preserveAspectRatio : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.viewBox"
  prim__viewBox : AnyPtr -> PrimIO AnyPtr

namespace SVGTests
  
  %foreign "browser:lambda:x=>x.requiredExtensions"
  prim__requiredExtensions : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.systemLanguage"
  prim__systemLanguage : AnyPtr -> PrimIO AnyPtr

namespace SVGURIReference
  
  %foreign "browser:lambda:x=>x.href"
  prim__href : AnyPtr -> PrimIO AnyPtr

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  %foreign "browser:lambda:x=>x.clipped"
  prim__clipped : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clipped = v}"
  prim__setClipped : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.fill"
  prim__fill : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.fill = v}"
  prim__setFill : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.markers"
  prim__markers : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.markers = v}"
  prim__setMarkers : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.stroke"
  prim__stroke : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.stroke = v}"
  prim__setStroke : AnyPtr -> AnyPtr -> PrimIO AnyPtr



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