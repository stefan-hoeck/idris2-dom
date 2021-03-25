module Web.Svg

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

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