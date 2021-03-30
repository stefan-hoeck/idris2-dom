module Web.Svg
 
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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]

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

namespace SVGAnimatedAngle
  
  public export
  JSType SVGAnimatedAngle where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedBoolean
  
  public export
  JSType SVGAnimatedBoolean where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedEnumeration
  
  public export
  JSType SVGAnimatedEnumeration where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedInteger
  
  public export
  JSType SVGAnimatedInteger where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedLength
  
  public export
  JSType SVGAnimatedLength where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedLengthList
  
  public export
  JSType SVGAnimatedLengthList where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedNumber
  
  public export
  JSType SVGAnimatedNumber where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedNumberList
  
  public export
  JSType SVGAnimatedNumberList where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedPreserveAspectRatio
  
  public export
  JSType SVGAnimatedPreserveAspectRatio where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedRect
  
  public export
  JSType SVGAnimatedRect where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedString
  
  public export
  JSType SVGAnimatedString where
    parents =  [ Object ]

    mixins =  []

namespace SVGAnimatedTransformList
  
  public export
  JSType SVGAnimatedTransformList where
    parents =  [ Object ]

    mixins =  []

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]

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

namespace SVGLengthList
  
  public export
  JSType SVGLengthList where
    parents =  [ Object ]

    mixins =  []

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]

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

namespace SVGNumberList
  
  public export
  JSType SVGNumberList where
    parents =  [ Object ]

    mixins =  []

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGURIReference
              , Slottable
              ]

namespace SVGPointList
  
  public export
  JSType SVGPointList where
    parents =  [ Object ]

    mixins =  []

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGFitToViewBox
              , SVGTests
              , Slottable
              , WindowEventHandlers
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGURIReference
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

namespace SVGStringList
  
  public export
  JSType SVGStringList where
    parents =  [ Object ]

    mixins =  []

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
              , LinkStyle
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , Slottable
              ]

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , Slottable
              ]

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

namespace SVGTransformList
  
  public export
  JSType SVGTransformList where
    parents =  [ Object ]

    mixins =  []

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
              , NonDocumentTypeChildNode
              , ParentNode
              , SVGElementInstance
              , SVGTests
              , SVGURIReference
              , Slottable
              ]

namespace SVGUseElementShadowRoot
  
  public export
  JSType SVGUseElementShadowRoot where
    parents =  [ ShadowRoot , DocumentFragment , Node , EventTarget , Object ]

    mixins =  [ DocumentOrShadowRoot , NonElementParentNode , ParentNode ]

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

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------







--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace SVGBoundingBoxOptions
  
  public export
  JSType SVGBoundingBoxOptions where
    parents =  [ Object ]

    mixins =  []
