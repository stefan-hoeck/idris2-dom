module Web.Internal.SvgTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data MathMLElement : Type where [external]

export
SafeCast MathMLElement where
  safeCast = unsafeCastOnPrototypeName "MathMLElement"

export data SVGAElement : Type where [external]

export
SafeCast SVGAElement where
  safeCast = unsafeCastOnPrototypeName "SVGAElement"

export data SVGAngle : Type where [external]

export
SafeCast SVGAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAngle"

export data SVGAnimatedAngle : Type where [external]

export
SafeCast SVGAnimatedAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedAngle"

export data SVGAnimatedBoolean : Type where [external]

export
SafeCast SVGAnimatedBoolean where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedBoolean"

export data SVGAnimatedEnumeration : Type where [external]

export
SafeCast SVGAnimatedEnumeration where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedEnumeration"

export data SVGAnimatedInteger : Type where [external]

export
SafeCast SVGAnimatedInteger where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedInteger"

export data SVGAnimatedLength : Type where [external]

export
SafeCast SVGAnimatedLength where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLength"

export data SVGAnimatedLengthList : Type where [external]

export
SafeCast SVGAnimatedLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLengthList"

export data SVGAnimatedNumber : Type where [external]

export
SafeCast SVGAnimatedNumber where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumber"

export data SVGAnimatedNumberList : Type where [external]

export
SafeCast SVGAnimatedNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumberList"

export data SVGAnimatedPreserveAspectRatio : Type where [external]

export
SafeCast SVGAnimatedPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedPreserveAspectRatio"

export data SVGAnimatedRect : Type where [external]

export
SafeCast SVGAnimatedRect where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedRect"

export data SVGAnimatedString : Type where [external]

export
SafeCast SVGAnimatedString where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedString"

export data SVGAnimatedTransformList : Type where [external]

export
SafeCast SVGAnimatedTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedTransformList"

export data SVGCircleElement : Type where [external]

export
SafeCast SVGCircleElement where
  safeCast = unsafeCastOnPrototypeName "SVGCircleElement"

export data SVGDefsElement : Type where [external]

export
SafeCast SVGDefsElement where
  safeCast = unsafeCastOnPrototypeName "SVGDefsElement"

export data SVGDescElement : Type where [external]

export
SafeCast SVGDescElement where
  safeCast = unsafeCastOnPrototypeName "SVGDescElement"

export data SVGElement : Type where [external]

export
SafeCast SVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGElement"

export data SVGEllipseElement : Type where [external]

export
SafeCast SVGEllipseElement where
  safeCast = unsafeCastOnPrototypeName "SVGEllipseElement"

export data SVGForeignObjectElement : Type where [external]

export
SafeCast SVGForeignObjectElement where
  safeCast = unsafeCastOnPrototypeName "SVGForeignObjectElement"

export data SVGGElement : Type where [external]

export
SafeCast SVGGElement where
  safeCast = unsafeCastOnPrototypeName "SVGGElement"

export data SVGGeometryElement : Type where [external]

export
SafeCast SVGGeometryElement where
  safeCast = unsafeCastOnPrototypeName "SVGGeometryElement"

export data SVGGradientElement : Type where [external]

export
SafeCast SVGGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGGradientElement"

export data SVGGraphicsElement : Type where [external]

export
SafeCast SVGGraphicsElement where
  safeCast = unsafeCastOnPrototypeName "SVGGraphicsElement"

export data SVGImageElement : Type where [external]

export
SafeCast SVGImageElement where
  safeCast = unsafeCastOnPrototypeName "SVGImageElement"

export data SVGLength : Type where [external]

export
SafeCast SVGLength where
  safeCast = unsafeCastOnPrototypeName "SVGLength"

export data SVGLengthList : Type where [external]

export
SafeCast SVGLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGLengthList"

export data SVGLineElement : Type where [external]

export
SafeCast SVGLineElement where
  safeCast = unsafeCastOnPrototypeName "SVGLineElement"

export data SVGLinearGradientElement : Type where [external]

export
SafeCast SVGLinearGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGLinearGradientElement"

export data SVGMarkerElement : Type where [external]

export
SafeCast SVGMarkerElement where
  safeCast = unsafeCastOnPrototypeName "SVGMarkerElement"

export data SVGMetadataElement : Type where [external]

export
SafeCast SVGMetadataElement where
  safeCast = unsafeCastOnPrototypeName "SVGMetadataElement"

export data SVGNumber : Type where [external]

export
SafeCast SVGNumber where
  safeCast = unsafeCastOnPrototypeName "SVGNumber"

export data SVGNumberList : Type where [external]

export
SafeCast SVGNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGNumberList"

export data SVGPathElement : Type where [external]

export
SafeCast SVGPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGPathElement"

export data SVGPatternElement : Type where [external]

export
SafeCast SVGPatternElement where
  safeCast = unsafeCastOnPrototypeName "SVGPatternElement"

export data SVGPointList : Type where [external]

export
SafeCast SVGPointList where
  safeCast = unsafeCastOnPrototypeName "SVGPointList"

export data SVGPolygonElement : Type where [external]

export
SafeCast SVGPolygonElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolygonElement"

export data SVGPolylineElement : Type where [external]

export
SafeCast SVGPolylineElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolylineElement"

export data SVGPreserveAspectRatio : Type where [external]

export
SafeCast SVGPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGPreserveAspectRatio"

export data SVGRadialGradientElement : Type where [external]

export
SafeCast SVGRadialGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGRadialGradientElement"

export data SVGRectElement : Type where [external]

export
SafeCast SVGRectElement where
  safeCast = unsafeCastOnPrototypeName "SVGRectElement"

export data SVGSVGElement : Type where [external]

export
SafeCast SVGSVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGSVGElement"

export data SVGScriptElement : Type where [external]

export
SafeCast SVGScriptElement where
  safeCast = unsafeCastOnPrototypeName "SVGScriptElement"

export data SVGStopElement : Type where [external]

export
SafeCast SVGStopElement where
  safeCast = unsafeCastOnPrototypeName "SVGStopElement"

export data SVGStringList : Type where [external]

export
SafeCast SVGStringList where
  safeCast = unsafeCastOnPrototypeName "SVGStringList"

export data SVGStyleElement : Type where [external]

export
SafeCast SVGStyleElement where
  safeCast = unsafeCastOnPrototypeName "SVGStyleElement"

export data SVGSwitchElement : Type where [external]

export
SafeCast SVGSwitchElement where
  safeCast = unsafeCastOnPrototypeName "SVGSwitchElement"

export data SVGSymbolElement : Type where [external]

export
SafeCast SVGSymbolElement where
  safeCast = unsafeCastOnPrototypeName "SVGSymbolElement"

export data SVGTSpanElement : Type where [external]

export
SafeCast SVGTSpanElement where
  safeCast = unsafeCastOnPrototypeName "SVGTSpanElement"

export data SVGTextContentElement : Type where [external]

export
SafeCast SVGTextContentElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextContentElement"

export data SVGTextElement : Type where [external]

export
SafeCast SVGTextElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextElement"

export data SVGTextPathElement : Type where [external]

export
SafeCast SVGTextPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPathElement"

export data SVGTextPositioningElement : Type where [external]

export
SafeCast SVGTextPositioningElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPositioningElement"

export data SVGTitleElement : Type where [external]

export
SafeCast SVGTitleElement where
  safeCast = unsafeCastOnPrototypeName "SVGTitleElement"

export data SVGTransform : Type where [external]

export
SafeCast SVGTransform where
  safeCast = unsafeCastOnPrototypeName "SVGTransform"

export data SVGTransformList : Type where [external]

export
SafeCast SVGTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGTransformList"

export data SVGUnitTypes : Type where [external]

export
SafeCast SVGUnitTypes where
  safeCast = unsafeCastOnPrototypeName "SVGUnitTypes"

export data SVGUseElement : Type where [external]

export
SafeCast SVGUseElement where
  safeCast = unsafeCastOnPrototypeName "SVGUseElement"

export data SVGUseElementShadowRoot : Type where [external]

export
SafeCast SVGUseElementShadowRoot where
  safeCast = unsafeCastOnPrototypeName "SVGUseElementShadowRoot"

export data SVGViewElement : Type where [external]

export
SafeCast SVGViewElement where
  safeCast = unsafeCastOnPrototypeName "SVGViewElement"

export data ShadowAnimation : Type where [external]

export
SafeCast ShadowAnimation where
  safeCast = unsafeCastOnPrototypeName "ShadowAnimation"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data SVGBoundingBoxOptions : Type where [external]

export
SafeCast SVGBoundingBoxOptions where
  safeCast = unsafeCastOnPrototypeName "SVGBoundingBoxOptions"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GetSVGDocument : Type where [external]

export data SVGAnimatedPoints : Type where [external]

export data SVGElementInstance : Type where [external]

export data SVGFitToViewBox : Type where [external]

export data SVGTests : Type where [external]

export data SVGURIReference : Type where [external]
