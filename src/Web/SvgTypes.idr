module Web.SvgTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data MathMLElement : Type where [external]

export
SafeCast MathMLElement where
  safeCast = unsafeCastOnPrototypeName "MathMLElement"

export ToJS MathMLElement where toJS = believe_me
export FromJS MathMLElement where fromJS = safeCast

export data SVGAElement : Type where [external]

export
SafeCast SVGAElement where
  safeCast = unsafeCastOnPrototypeName "SVGAElement"

export ToJS SVGAElement where toJS = believe_me
export FromJS SVGAElement where fromJS = safeCast

export data SVGAngle : Type where [external]

export
SafeCast SVGAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAngle"

export ToJS SVGAngle where toJS = believe_me
export FromJS SVGAngle where fromJS = safeCast

export data SVGAnimatedAngle : Type where [external]

export
SafeCast SVGAnimatedAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedAngle"

export ToJS SVGAnimatedAngle where toJS = believe_me
export FromJS SVGAnimatedAngle where fromJS = safeCast

export data SVGAnimatedBoolean : Type where [external]

export
SafeCast SVGAnimatedBoolean where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedBoolean"

export ToJS SVGAnimatedBoolean where toJS = believe_me
export FromJS SVGAnimatedBoolean where fromJS = safeCast

export data SVGAnimatedEnumeration : Type where [external]

export
SafeCast SVGAnimatedEnumeration where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedEnumeration"

export ToJS SVGAnimatedEnumeration where toJS = believe_me
export FromJS SVGAnimatedEnumeration where fromJS = safeCast

export data SVGAnimatedInteger : Type where [external]

export
SafeCast SVGAnimatedInteger where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedInteger"

export ToJS SVGAnimatedInteger where toJS = believe_me
export FromJS SVGAnimatedInteger where fromJS = safeCast

export data SVGAnimatedLength : Type where [external]

export
SafeCast SVGAnimatedLength where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLength"

export ToJS SVGAnimatedLength where toJS = believe_me
export FromJS SVGAnimatedLength where fromJS = safeCast

export data SVGAnimatedLengthList : Type where [external]

export
SafeCast SVGAnimatedLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLengthList"

export ToJS SVGAnimatedLengthList where toJS = believe_me
export FromJS SVGAnimatedLengthList where fromJS = safeCast

export data SVGAnimatedNumber : Type where [external]

export
SafeCast SVGAnimatedNumber where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumber"

export ToJS SVGAnimatedNumber where toJS = believe_me
export FromJS SVGAnimatedNumber where fromJS = safeCast

export data SVGAnimatedNumberList : Type where [external]

export
SafeCast SVGAnimatedNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumberList"

export ToJS SVGAnimatedNumberList where toJS = believe_me
export FromJS SVGAnimatedNumberList where fromJS = safeCast

export data SVGAnimatedPreserveAspectRatio : Type where [external]

export
SafeCast SVGAnimatedPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedPreserveAspectRatio"

export ToJS SVGAnimatedPreserveAspectRatio where toJS = believe_me
export FromJS SVGAnimatedPreserveAspectRatio where fromJS = safeCast

export data SVGAnimatedRect : Type where [external]

export
SafeCast SVGAnimatedRect where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedRect"

export ToJS SVGAnimatedRect where toJS = believe_me
export FromJS SVGAnimatedRect where fromJS = safeCast

export data SVGAnimatedString : Type where [external]

export
SafeCast SVGAnimatedString where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedString"

export ToJS SVGAnimatedString where toJS = believe_me
export FromJS SVGAnimatedString where fromJS = safeCast

export data SVGAnimatedTransformList : Type where [external]

export
SafeCast SVGAnimatedTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedTransformList"

export ToJS SVGAnimatedTransformList where toJS = believe_me
export FromJS SVGAnimatedTransformList where fromJS = safeCast

export data SVGCircleElement : Type where [external]

export
SafeCast SVGCircleElement where
  safeCast = unsafeCastOnPrototypeName "SVGCircleElement"

export ToJS SVGCircleElement where toJS = believe_me
export FromJS SVGCircleElement where fromJS = safeCast

export data SVGDefsElement : Type where [external]

export
SafeCast SVGDefsElement where
  safeCast = unsafeCastOnPrototypeName "SVGDefsElement"

export ToJS SVGDefsElement where toJS = believe_me
export FromJS SVGDefsElement where fromJS = safeCast

export data SVGDescElement : Type where [external]

export
SafeCast SVGDescElement where
  safeCast = unsafeCastOnPrototypeName "SVGDescElement"

export ToJS SVGDescElement where toJS = believe_me
export FromJS SVGDescElement where fromJS = safeCast

export data SVGElement : Type where [external]

export
SafeCast SVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGElement"

export ToJS SVGElement where toJS = believe_me
export FromJS SVGElement where fromJS = safeCast

export data SVGEllipseElement : Type where [external]

export
SafeCast SVGEllipseElement where
  safeCast = unsafeCastOnPrototypeName "SVGEllipseElement"

export ToJS SVGEllipseElement where toJS = believe_me
export FromJS SVGEllipseElement where fromJS = safeCast

export data SVGForeignObjectElement : Type where [external]

export
SafeCast SVGForeignObjectElement where
  safeCast = unsafeCastOnPrototypeName "SVGForeignObjectElement"

export ToJS SVGForeignObjectElement where toJS = believe_me
export FromJS SVGForeignObjectElement where fromJS = safeCast

export data SVGGElement : Type where [external]

export
SafeCast SVGGElement where
  safeCast = unsafeCastOnPrototypeName "SVGGElement"

export ToJS SVGGElement where toJS = believe_me
export FromJS SVGGElement where fromJS = safeCast

export data SVGGeometryElement : Type where [external]

export
SafeCast SVGGeometryElement where
  safeCast = unsafeCastOnPrototypeName "SVGGeometryElement"

export ToJS SVGGeometryElement where toJS = believe_me
export FromJS SVGGeometryElement where fromJS = safeCast

export data SVGGradientElement : Type where [external]

export
SafeCast SVGGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGGradientElement"

export ToJS SVGGradientElement where toJS = believe_me
export FromJS SVGGradientElement where fromJS = safeCast

export data SVGGraphicsElement : Type where [external]

export
SafeCast SVGGraphicsElement where
  safeCast = unsafeCastOnPrototypeName "SVGGraphicsElement"

export ToJS SVGGraphicsElement where toJS = believe_me
export FromJS SVGGraphicsElement where fromJS = safeCast

export data SVGImageElement : Type where [external]

export
SafeCast SVGImageElement where
  safeCast = unsafeCastOnPrototypeName "SVGImageElement"

export ToJS SVGImageElement where toJS = believe_me
export FromJS SVGImageElement where fromJS = safeCast

export data SVGLength : Type where [external]

export
SafeCast SVGLength where
  safeCast = unsafeCastOnPrototypeName "SVGLength"

export ToJS SVGLength where toJS = believe_me
export FromJS SVGLength where fromJS = safeCast

export data SVGLengthList : Type where [external]

export
SafeCast SVGLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGLengthList"

export ToJS SVGLengthList where toJS = believe_me
export FromJS SVGLengthList where fromJS = safeCast

export data SVGLineElement : Type where [external]

export
SafeCast SVGLineElement where
  safeCast = unsafeCastOnPrototypeName "SVGLineElement"

export ToJS SVGLineElement where toJS = believe_me
export FromJS SVGLineElement where fromJS = safeCast

export data SVGLinearGradientElement : Type where [external]

export
SafeCast SVGLinearGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGLinearGradientElement"

export ToJS SVGLinearGradientElement where toJS = believe_me
export FromJS SVGLinearGradientElement where fromJS = safeCast

export data SVGMarkerElement : Type where [external]

export
SafeCast SVGMarkerElement where
  safeCast = unsafeCastOnPrototypeName "SVGMarkerElement"

export ToJS SVGMarkerElement where toJS = believe_me
export FromJS SVGMarkerElement where fromJS = safeCast

export data SVGMetadataElement : Type where [external]

export
SafeCast SVGMetadataElement where
  safeCast = unsafeCastOnPrototypeName "SVGMetadataElement"

export ToJS SVGMetadataElement where toJS = believe_me
export FromJS SVGMetadataElement where fromJS = safeCast

export data SVGNumber : Type where [external]

export
SafeCast SVGNumber where
  safeCast = unsafeCastOnPrototypeName "SVGNumber"

export ToJS SVGNumber where toJS = believe_me
export FromJS SVGNumber where fromJS = safeCast

export data SVGNumberList : Type where [external]

export
SafeCast SVGNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGNumberList"

export ToJS SVGNumberList where toJS = believe_me
export FromJS SVGNumberList where fromJS = safeCast

export data SVGPathElement : Type where [external]

export
SafeCast SVGPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGPathElement"

export ToJS SVGPathElement where toJS = believe_me
export FromJS SVGPathElement where fromJS = safeCast

export data SVGPatternElement : Type where [external]

export
SafeCast SVGPatternElement where
  safeCast = unsafeCastOnPrototypeName "SVGPatternElement"

export ToJS SVGPatternElement where toJS = believe_me
export FromJS SVGPatternElement where fromJS = safeCast

export data SVGPointList : Type where [external]

export
SafeCast SVGPointList where
  safeCast = unsafeCastOnPrototypeName "SVGPointList"

export ToJS SVGPointList where toJS = believe_me
export FromJS SVGPointList where fromJS = safeCast

export data SVGPolygonElement : Type where [external]

export
SafeCast SVGPolygonElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolygonElement"

export ToJS SVGPolygonElement where toJS = believe_me
export FromJS SVGPolygonElement where fromJS = safeCast

export data SVGPolylineElement : Type where [external]

export
SafeCast SVGPolylineElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolylineElement"

export ToJS SVGPolylineElement where toJS = believe_me
export FromJS SVGPolylineElement where fromJS = safeCast

export data SVGPreserveAspectRatio : Type where [external]

export
SafeCast SVGPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGPreserveAspectRatio"

export ToJS SVGPreserveAspectRatio where toJS = believe_me
export FromJS SVGPreserveAspectRatio where fromJS = safeCast

export data SVGRadialGradientElement : Type where [external]

export
SafeCast SVGRadialGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGRadialGradientElement"

export ToJS SVGRadialGradientElement where toJS = believe_me
export FromJS SVGRadialGradientElement where fromJS = safeCast

export data SVGRectElement : Type where [external]

export
SafeCast SVGRectElement where
  safeCast = unsafeCastOnPrototypeName "SVGRectElement"

export ToJS SVGRectElement where toJS = believe_me
export FromJS SVGRectElement where fromJS = safeCast

export data SVGSVGElement : Type where [external]

export
SafeCast SVGSVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGSVGElement"

export ToJS SVGSVGElement where toJS = believe_me
export FromJS SVGSVGElement where fromJS = safeCast

export data SVGScriptElement : Type where [external]

export
SafeCast SVGScriptElement where
  safeCast = unsafeCastOnPrototypeName "SVGScriptElement"

export ToJS SVGScriptElement where toJS = believe_me
export FromJS SVGScriptElement where fromJS = safeCast

export data SVGStopElement : Type where [external]

export
SafeCast SVGStopElement where
  safeCast = unsafeCastOnPrototypeName "SVGStopElement"

export ToJS SVGStopElement where toJS = believe_me
export FromJS SVGStopElement where fromJS = safeCast

export data SVGStringList : Type where [external]

export
SafeCast SVGStringList where
  safeCast = unsafeCastOnPrototypeName "SVGStringList"

export ToJS SVGStringList where toJS = believe_me
export FromJS SVGStringList where fromJS = safeCast

export data SVGStyleElement : Type where [external]

export
SafeCast SVGStyleElement where
  safeCast = unsafeCastOnPrototypeName "SVGStyleElement"

export ToJS SVGStyleElement where toJS = believe_me
export FromJS SVGStyleElement where fromJS = safeCast

export data SVGSwitchElement : Type where [external]

export
SafeCast SVGSwitchElement where
  safeCast = unsafeCastOnPrototypeName "SVGSwitchElement"

export ToJS SVGSwitchElement where toJS = believe_me
export FromJS SVGSwitchElement where fromJS = safeCast

export data SVGSymbolElement : Type where [external]

export
SafeCast SVGSymbolElement where
  safeCast = unsafeCastOnPrototypeName "SVGSymbolElement"

export ToJS SVGSymbolElement where toJS = believe_me
export FromJS SVGSymbolElement where fromJS = safeCast

export data SVGTSpanElement : Type where [external]

export
SafeCast SVGTSpanElement where
  safeCast = unsafeCastOnPrototypeName "SVGTSpanElement"

export ToJS SVGTSpanElement where toJS = believe_me
export FromJS SVGTSpanElement where fromJS = safeCast

export data SVGTextContentElement : Type where [external]

export
SafeCast SVGTextContentElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextContentElement"

export ToJS SVGTextContentElement where toJS = believe_me
export FromJS SVGTextContentElement where fromJS = safeCast

export data SVGTextElement : Type where [external]

export
SafeCast SVGTextElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextElement"

export ToJS SVGTextElement where toJS = believe_me
export FromJS SVGTextElement where fromJS = safeCast

export data SVGTextPathElement : Type where [external]

export
SafeCast SVGTextPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPathElement"

export ToJS SVGTextPathElement where toJS = believe_me
export FromJS SVGTextPathElement where fromJS = safeCast

export data SVGTextPositioningElement : Type where [external]

export
SafeCast SVGTextPositioningElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPositioningElement"

export ToJS SVGTextPositioningElement where toJS = believe_me
export FromJS SVGTextPositioningElement where fromJS = safeCast

export data SVGTitleElement : Type where [external]

export
SafeCast SVGTitleElement where
  safeCast = unsafeCastOnPrototypeName "SVGTitleElement"

export ToJS SVGTitleElement where toJS = believe_me
export FromJS SVGTitleElement where fromJS = safeCast

export data SVGTransform : Type where [external]

export
SafeCast SVGTransform where
  safeCast = unsafeCastOnPrototypeName "SVGTransform"

export ToJS SVGTransform where toJS = believe_me
export FromJS SVGTransform where fromJS = safeCast

export data SVGTransformList : Type where [external]

export
SafeCast SVGTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGTransformList"

export ToJS SVGTransformList where toJS = believe_me
export FromJS SVGTransformList where fromJS = safeCast

export data SVGUnitTypes : Type where [external]

export
SafeCast SVGUnitTypes where
  safeCast = unsafeCastOnPrototypeName "SVGUnitTypes"

export ToJS SVGUnitTypes where toJS = believe_me
export FromJS SVGUnitTypes where fromJS = safeCast

export data SVGUseElement : Type where [external]

export
SafeCast SVGUseElement where
  safeCast = unsafeCastOnPrototypeName "SVGUseElement"

export ToJS SVGUseElement where toJS = believe_me
export FromJS SVGUseElement where fromJS = safeCast

export data SVGUseElementShadowRoot : Type where [external]

export
SafeCast SVGUseElementShadowRoot where
  safeCast = unsafeCastOnPrototypeName "SVGUseElementShadowRoot"

export ToJS SVGUseElementShadowRoot where toJS = believe_me
export FromJS SVGUseElementShadowRoot where fromJS = safeCast

export data SVGViewElement : Type where [external]

export
SafeCast SVGViewElement where
  safeCast = unsafeCastOnPrototypeName "SVGViewElement"

export ToJS SVGViewElement where toJS = believe_me
export FromJS SVGViewElement where fromJS = safeCast

export data ShadowAnimation : Type where [external]

export
SafeCast ShadowAnimation where
  safeCast = unsafeCastOnPrototypeName "ShadowAnimation"

export ToJS ShadowAnimation where toJS = believe_me
export FromJS ShadowAnimation where fromJS = safeCast

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GetSVGDocument : Type where [external]

export ToJS GetSVGDocument where toJS = believe_me
export FromJS GetSVGDocument where fromJS ptr = Just (believe_me ptr)

export data SVGAnimatedPoints : Type where [external]

export ToJS SVGAnimatedPoints where toJS = believe_me
export FromJS SVGAnimatedPoints where fromJS ptr = Just (believe_me ptr)

export data SVGElementInstance : Type where [external]

export ToJS SVGElementInstance where toJS = believe_me
export FromJS SVGElementInstance where fromJS ptr = Just (believe_me ptr)

export data SVGFitToViewBox : Type where [external]

export ToJS SVGFitToViewBox where toJS = believe_me
export FromJS SVGFitToViewBox where fromJS ptr = Just (believe_me ptr)

export data SVGTests : Type where [external]

export ToJS SVGTests where toJS = believe_me
export FromJS SVGTests where fromJS ptr = Just (believe_me ptr)

export data SVGURIReference : Type where [external]

export ToJS SVGURIReference where toJS = believe_me
export FromJS SVGURIReference where fromJS ptr = Just (believe_me ptr)

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data SVGBoundingBoxOptions : Type where [external]

export
SafeCast SVGBoundingBoxOptions where
  safeCast = unsafeCastOnPrototypeName "SVGBoundingBoxOptions"

export ToJS SVGBoundingBoxOptions where toJS = believe_me
export FromJS SVGBoundingBoxOptions where fromJS = safeCast