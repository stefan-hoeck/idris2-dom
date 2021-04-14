module Web.Internal.SvgTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data MathMLElement : Type where [external]
  
export
ToFFI MathMLElement MathMLElement where toFFI = id
  
export
FromFFI MathMLElement MathMLElement where fromFFI = Just

export
SafeCast MathMLElement where
  safeCast = unsafeCastOnPrototypeName "MathMLElement"

export data SVGAElement : Type where [external]
  
export
ToFFI SVGAElement SVGAElement where toFFI = id
  
export
FromFFI SVGAElement SVGAElement where fromFFI = Just

export
SafeCast SVGAElement where
  safeCast = unsafeCastOnPrototypeName "SVGAElement"

export data SVGAngle : Type where [external]
  
export
ToFFI SVGAngle SVGAngle where toFFI = id
  
export
FromFFI SVGAngle SVGAngle where fromFFI = Just

export
SafeCast SVGAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAngle"

export data SVGAnimatedAngle : Type where [external]
  
export
ToFFI SVGAnimatedAngle SVGAnimatedAngle where toFFI = id
  
export
FromFFI SVGAnimatedAngle SVGAnimatedAngle where fromFFI = Just

export
SafeCast SVGAnimatedAngle where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedAngle"

export data SVGAnimatedBoolean : Type where [external]
  
export
ToFFI SVGAnimatedBoolean SVGAnimatedBoolean where toFFI = id
  
export
FromFFI SVGAnimatedBoolean SVGAnimatedBoolean where fromFFI = Just

export
SafeCast SVGAnimatedBoolean where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedBoolean"

export data SVGAnimatedEnumeration : Type where [external]
  
export
ToFFI SVGAnimatedEnumeration SVGAnimatedEnumeration where toFFI = id
  
export
FromFFI SVGAnimatedEnumeration SVGAnimatedEnumeration where fromFFI = Just

export
SafeCast SVGAnimatedEnumeration where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedEnumeration"

export data SVGAnimatedInteger : Type where [external]
  
export
ToFFI SVGAnimatedInteger SVGAnimatedInteger where toFFI = id
  
export
FromFFI SVGAnimatedInteger SVGAnimatedInteger where fromFFI = Just

export
SafeCast SVGAnimatedInteger where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedInteger"

export data SVGAnimatedLength : Type where [external]
  
export
ToFFI SVGAnimatedLength SVGAnimatedLength where toFFI = id
  
export
FromFFI SVGAnimatedLength SVGAnimatedLength where fromFFI = Just

export
SafeCast SVGAnimatedLength where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLength"

export data SVGAnimatedLengthList : Type where [external]
  
export
ToFFI SVGAnimatedLengthList SVGAnimatedLengthList where toFFI = id
  
export
FromFFI SVGAnimatedLengthList SVGAnimatedLengthList where fromFFI = Just

export
SafeCast SVGAnimatedLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedLengthList"

export data SVGAnimatedNumber : Type where [external]
  
export
ToFFI SVGAnimatedNumber SVGAnimatedNumber where toFFI = id
  
export
FromFFI SVGAnimatedNumber SVGAnimatedNumber where fromFFI = Just

export
SafeCast SVGAnimatedNumber where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumber"

export data SVGAnimatedNumberList : Type where [external]
  
export
ToFFI SVGAnimatedNumberList SVGAnimatedNumberList where toFFI = id
  
export
FromFFI SVGAnimatedNumberList SVGAnimatedNumberList where fromFFI = Just

export
SafeCast SVGAnimatedNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedNumberList"

export data SVGAnimatedPreserveAspectRatio : Type where [external]
  
export
ToFFI SVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio where toFFI = id
  
export
FromFFI SVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio where fromFFI = Just

export
SafeCast SVGAnimatedPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedPreserveAspectRatio"

export data SVGAnimatedRect : Type where [external]
  
export
ToFFI SVGAnimatedRect SVGAnimatedRect where toFFI = id
  
export
FromFFI SVGAnimatedRect SVGAnimatedRect where fromFFI = Just

export
SafeCast SVGAnimatedRect where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedRect"

export data SVGAnimatedString : Type where [external]
  
export
ToFFI SVGAnimatedString SVGAnimatedString where toFFI = id
  
export
FromFFI SVGAnimatedString SVGAnimatedString where fromFFI = Just

export
SafeCast SVGAnimatedString where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedString"

export data SVGAnimatedTransformList : Type where [external]
  
export
ToFFI SVGAnimatedTransformList SVGAnimatedTransformList where toFFI = id
  
export
FromFFI SVGAnimatedTransformList SVGAnimatedTransformList where fromFFI = Just

export
SafeCast SVGAnimatedTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGAnimatedTransformList"

export data SVGCircleElement : Type where [external]
  
export
ToFFI SVGCircleElement SVGCircleElement where toFFI = id
  
export
FromFFI SVGCircleElement SVGCircleElement where fromFFI = Just

export
SafeCast SVGCircleElement where
  safeCast = unsafeCastOnPrototypeName "SVGCircleElement"

export data SVGDefsElement : Type where [external]
  
export
ToFFI SVGDefsElement SVGDefsElement where toFFI = id
  
export
FromFFI SVGDefsElement SVGDefsElement where fromFFI = Just

export
SafeCast SVGDefsElement where
  safeCast = unsafeCastOnPrototypeName "SVGDefsElement"

export data SVGDescElement : Type where [external]
  
export
ToFFI SVGDescElement SVGDescElement where toFFI = id
  
export
FromFFI SVGDescElement SVGDescElement where fromFFI = Just

export
SafeCast SVGDescElement where
  safeCast = unsafeCastOnPrototypeName "SVGDescElement"

export data SVGElement : Type where [external]
  
export
ToFFI SVGElement SVGElement where toFFI = id
  
export
FromFFI SVGElement SVGElement where fromFFI = Just

export
SafeCast SVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGElement"

export data SVGEllipseElement : Type where [external]
  
export
ToFFI SVGEllipseElement SVGEllipseElement where toFFI = id
  
export
FromFFI SVGEllipseElement SVGEllipseElement where fromFFI = Just

export
SafeCast SVGEllipseElement where
  safeCast = unsafeCastOnPrototypeName "SVGEllipseElement"

export data SVGForeignObjectElement : Type where [external]
  
export
ToFFI SVGForeignObjectElement SVGForeignObjectElement where toFFI = id
  
export
FromFFI SVGForeignObjectElement SVGForeignObjectElement where fromFFI = Just

export
SafeCast SVGForeignObjectElement where
  safeCast = unsafeCastOnPrototypeName "SVGForeignObjectElement"

export data SVGGElement : Type where [external]
  
export
ToFFI SVGGElement SVGGElement where toFFI = id
  
export
FromFFI SVGGElement SVGGElement where fromFFI = Just

export
SafeCast SVGGElement where
  safeCast = unsafeCastOnPrototypeName "SVGGElement"

export data SVGGeometryElement : Type where [external]
  
export
ToFFI SVGGeometryElement SVGGeometryElement where toFFI = id
  
export
FromFFI SVGGeometryElement SVGGeometryElement where fromFFI = Just

export
SafeCast SVGGeometryElement where
  safeCast = unsafeCastOnPrototypeName "SVGGeometryElement"

export data SVGGradientElement : Type where [external]
  
export
ToFFI SVGGradientElement SVGGradientElement where toFFI = id
  
export
FromFFI SVGGradientElement SVGGradientElement where fromFFI = Just

export
SafeCast SVGGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGGradientElement"

export data SVGGraphicsElement : Type where [external]
  
export
ToFFI SVGGraphicsElement SVGGraphicsElement where toFFI = id
  
export
FromFFI SVGGraphicsElement SVGGraphicsElement where fromFFI = Just

export
SafeCast SVGGraphicsElement where
  safeCast = unsafeCastOnPrototypeName "SVGGraphicsElement"

export data SVGImageElement : Type where [external]
  
export
ToFFI SVGImageElement SVGImageElement where toFFI = id
  
export
FromFFI SVGImageElement SVGImageElement where fromFFI = Just

export
SafeCast SVGImageElement where
  safeCast = unsafeCastOnPrototypeName "SVGImageElement"

export data SVGLength : Type where [external]
  
export
ToFFI SVGLength SVGLength where toFFI = id
  
export
FromFFI SVGLength SVGLength where fromFFI = Just

export
SafeCast SVGLength where
  safeCast = unsafeCastOnPrototypeName "SVGLength"

export data SVGLengthList : Type where [external]
  
export
ToFFI SVGLengthList SVGLengthList where toFFI = id
  
export
FromFFI SVGLengthList SVGLengthList where fromFFI = Just

export
SafeCast SVGLengthList where
  safeCast = unsafeCastOnPrototypeName "SVGLengthList"

export data SVGLineElement : Type where [external]
  
export
ToFFI SVGLineElement SVGLineElement where toFFI = id
  
export
FromFFI SVGLineElement SVGLineElement where fromFFI = Just

export
SafeCast SVGLineElement where
  safeCast = unsafeCastOnPrototypeName "SVGLineElement"

export data SVGLinearGradientElement : Type where [external]
  
export
ToFFI SVGLinearGradientElement SVGLinearGradientElement where toFFI = id
  
export
FromFFI SVGLinearGradientElement SVGLinearGradientElement where fromFFI = Just

export
SafeCast SVGLinearGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGLinearGradientElement"

export data SVGMarkerElement : Type where [external]
  
export
ToFFI SVGMarkerElement SVGMarkerElement where toFFI = id
  
export
FromFFI SVGMarkerElement SVGMarkerElement where fromFFI = Just

export
SafeCast SVGMarkerElement where
  safeCast = unsafeCastOnPrototypeName "SVGMarkerElement"

export data SVGMetadataElement : Type where [external]
  
export
ToFFI SVGMetadataElement SVGMetadataElement where toFFI = id
  
export
FromFFI SVGMetadataElement SVGMetadataElement where fromFFI = Just

export
SafeCast SVGMetadataElement where
  safeCast = unsafeCastOnPrototypeName "SVGMetadataElement"

export data SVGNumber : Type where [external]
  
export
ToFFI SVGNumber SVGNumber where toFFI = id
  
export
FromFFI SVGNumber SVGNumber where fromFFI = Just

export
SafeCast SVGNumber where
  safeCast = unsafeCastOnPrototypeName "SVGNumber"

export data SVGNumberList : Type where [external]
  
export
ToFFI SVGNumberList SVGNumberList where toFFI = id
  
export
FromFFI SVGNumberList SVGNumberList where fromFFI = Just

export
SafeCast SVGNumberList where
  safeCast = unsafeCastOnPrototypeName "SVGNumberList"

export data SVGPathElement : Type where [external]
  
export
ToFFI SVGPathElement SVGPathElement where toFFI = id
  
export
FromFFI SVGPathElement SVGPathElement where fromFFI = Just

export
SafeCast SVGPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGPathElement"

export data SVGPatternElement : Type where [external]
  
export
ToFFI SVGPatternElement SVGPatternElement where toFFI = id
  
export
FromFFI SVGPatternElement SVGPatternElement where fromFFI = Just

export
SafeCast SVGPatternElement where
  safeCast = unsafeCastOnPrototypeName "SVGPatternElement"

export data SVGPointList : Type where [external]
  
export
ToFFI SVGPointList SVGPointList where toFFI = id
  
export
FromFFI SVGPointList SVGPointList where fromFFI = Just

export
SafeCast SVGPointList where
  safeCast = unsafeCastOnPrototypeName "SVGPointList"

export data SVGPolygonElement : Type where [external]
  
export
ToFFI SVGPolygonElement SVGPolygonElement where toFFI = id
  
export
FromFFI SVGPolygonElement SVGPolygonElement where fromFFI = Just

export
SafeCast SVGPolygonElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolygonElement"

export data SVGPolylineElement : Type where [external]
  
export
ToFFI SVGPolylineElement SVGPolylineElement where toFFI = id
  
export
FromFFI SVGPolylineElement SVGPolylineElement where fromFFI = Just

export
SafeCast SVGPolylineElement where
  safeCast = unsafeCastOnPrototypeName "SVGPolylineElement"

export data SVGPreserveAspectRatio : Type where [external]
  
export
ToFFI SVGPreserveAspectRatio SVGPreserveAspectRatio where toFFI = id
  
export
FromFFI SVGPreserveAspectRatio SVGPreserveAspectRatio where fromFFI = Just

export
SafeCast SVGPreserveAspectRatio where
  safeCast = unsafeCastOnPrototypeName "SVGPreserveAspectRatio"

export data SVGRadialGradientElement : Type where [external]
  
export
ToFFI SVGRadialGradientElement SVGRadialGradientElement where toFFI = id
  
export
FromFFI SVGRadialGradientElement SVGRadialGradientElement where fromFFI = Just

export
SafeCast SVGRadialGradientElement where
  safeCast = unsafeCastOnPrototypeName "SVGRadialGradientElement"

export data SVGRectElement : Type where [external]
  
export
ToFFI SVGRectElement SVGRectElement where toFFI = id
  
export
FromFFI SVGRectElement SVGRectElement where fromFFI = Just

export
SafeCast SVGRectElement where
  safeCast = unsafeCastOnPrototypeName "SVGRectElement"

export data SVGSVGElement : Type where [external]
  
export
ToFFI SVGSVGElement SVGSVGElement where toFFI = id
  
export
FromFFI SVGSVGElement SVGSVGElement where fromFFI = Just

export
SafeCast SVGSVGElement where
  safeCast = unsafeCastOnPrototypeName "SVGSVGElement"

export data SVGScriptElement : Type where [external]
  
export
ToFFI SVGScriptElement SVGScriptElement where toFFI = id
  
export
FromFFI SVGScriptElement SVGScriptElement where fromFFI = Just

export
SafeCast SVGScriptElement where
  safeCast = unsafeCastOnPrototypeName "SVGScriptElement"

export data SVGStopElement : Type where [external]
  
export
ToFFI SVGStopElement SVGStopElement where toFFI = id
  
export
FromFFI SVGStopElement SVGStopElement where fromFFI = Just

export
SafeCast SVGStopElement where
  safeCast = unsafeCastOnPrototypeName "SVGStopElement"

export data SVGStringList : Type where [external]
  
export
ToFFI SVGStringList SVGStringList where toFFI = id
  
export
FromFFI SVGStringList SVGStringList where fromFFI = Just

export
SafeCast SVGStringList where
  safeCast = unsafeCastOnPrototypeName "SVGStringList"

export data SVGStyleElement : Type where [external]
  
export
ToFFI SVGStyleElement SVGStyleElement where toFFI = id
  
export
FromFFI SVGStyleElement SVGStyleElement where fromFFI = Just

export
SafeCast SVGStyleElement where
  safeCast = unsafeCastOnPrototypeName "SVGStyleElement"

export data SVGSwitchElement : Type where [external]
  
export
ToFFI SVGSwitchElement SVGSwitchElement where toFFI = id
  
export
FromFFI SVGSwitchElement SVGSwitchElement where fromFFI = Just

export
SafeCast SVGSwitchElement where
  safeCast = unsafeCastOnPrototypeName "SVGSwitchElement"

export data SVGSymbolElement : Type where [external]
  
export
ToFFI SVGSymbolElement SVGSymbolElement where toFFI = id
  
export
FromFFI SVGSymbolElement SVGSymbolElement where fromFFI = Just

export
SafeCast SVGSymbolElement where
  safeCast = unsafeCastOnPrototypeName "SVGSymbolElement"

export data SVGTSpanElement : Type where [external]
  
export
ToFFI SVGTSpanElement SVGTSpanElement where toFFI = id
  
export
FromFFI SVGTSpanElement SVGTSpanElement where fromFFI = Just

export
SafeCast SVGTSpanElement where
  safeCast = unsafeCastOnPrototypeName "SVGTSpanElement"

export data SVGTextContentElement : Type where [external]
  
export
ToFFI SVGTextContentElement SVGTextContentElement where toFFI = id
  
export
FromFFI SVGTextContentElement SVGTextContentElement where fromFFI = Just

export
SafeCast SVGTextContentElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextContentElement"

export data SVGTextElement : Type where [external]
  
export
ToFFI SVGTextElement SVGTextElement where toFFI = id
  
export
FromFFI SVGTextElement SVGTextElement where fromFFI = Just

export
SafeCast SVGTextElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextElement"

export data SVGTextPathElement : Type where [external]
  
export
ToFFI SVGTextPathElement SVGTextPathElement where toFFI = id
  
export
FromFFI SVGTextPathElement SVGTextPathElement where fromFFI = Just

export
SafeCast SVGTextPathElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPathElement"

export data SVGTextPositioningElement : Type where [external]
  
export
ToFFI SVGTextPositioningElement SVGTextPositioningElement where toFFI = id
  
export
FromFFI SVGTextPositioningElement SVGTextPositioningElement where fromFFI = Just

export
SafeCast SVGTextPositioningElement where
  safeCast = unsafeCastOnPrototypeName "SVGTextPositioningElement"

export data SVGTitleElement : Type where [external]
  
export
ToFFI SVGTitleElement SVGTitleElement where toFFI = id
  
export
FromFFI SVGTitleElement SVGTitleElement where fromFFI = Just

export
SafeCast SVGTitleElement where
  safeCast = unsafeCastOnPrototypeName "SVGTitleElement"

export data SVGTransform : Type where [external]
  
export
ToFFI SVGTransform SVGTransform where toFFI = id
  
export
FromFFI SVGTransform SVGTransform where fromFFI = Just

export
SafeCast SVGTransform where
  safeCast = unsafeCastOnPrototypeName "SVGTransform"

export data SVGTransformList : Type where [external]
  
export
ToFFI SVGTransformList SVGTransformList where toFFI = id
  
export
FromFFI SVGTransformList SVGTransformList where fromFFI = Just

export
SafeCast SVGTransformList where
  safeCast = unsafeCastOnPrototypeName "SVGTransformList"

export data SVGUnitTypes : Type where [external]
  
export
ToFFI SVGUnitTypes SVGUnitTypes where toFFI = id
  
export
FromFFI SVGUnitTypes SVGUnitTypes where fromFFI = Just

export
SafeCast SVGUnitTypes where
  safeCast = unsafeCastOnPrototypeName "SVGUnitTypes"

export data SVGUseElement : Type where [external]
  
export
ToFFI SVGUseElement SVGUseElement where toFFI = id
  
export
FromFFI SVGUseElement SVGUseElement where fromFFI = Just

export
SafeCast SVGUseElement where
  safeCast = unsafeCastOnPrototypeName "SVGUseElement"

export data SVGUseElementShadowRoot : Type where [external]
  
export
ToFFI SVGUseElementShadowRoot SVGUseElementShadowRoot where toFFI = id
  
export
FromFFI SVGUseElementShadowRoot SVGUseElementShadowRoot where fromFFI = Just

export
SafeCast SVGUseElementShadowRoot where
  safeCast = unsafeCastOnPrototypeName "SVGUseElementShadowRoot"

export data SVGViewElement : Type where [external]
  
export
ToFFI SVGViewElement SVGViewElement where toFFI = id
  
export
FromFFI SVGViewElement SVGViewElement where fromFFI = Just

export
SafeCast SVGViewElement where
  safeCast = unsafeCastOnPrototypeName "SVGViewElement"

export data ShadowAnimation : Type where [external]
  
export
ToFFI ShadowAnimation ShadowAnimation where toFFI = id
  
export
FromFFI ShadowAnimation ShadowAnimation where fromFFI = Just

export
SafeCast ShadowAnimation where
  safeCast = unsafeCastOnPrototypeName "ShadowAnimation"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data SVGBoundingBoxOptions : Type where [external]
  
export
ToFFI SVGBoundingBoxOptions SVGBoundingBoxOptions where toFFI = id
  
export
FromFFI SVGBoundingBoxOptions SVGBoundingBoxOptions where fromFFI = Just

export
SafeCast SVGBoundingBoxOptions where
  safeCast = unsafeCastOnPrototypeName "SVGBoundingBoxOptions"

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data GetSVGDocument : Type where [external]
  
export
ToFFI GetSVGDocument GetSVGDocument where toFFI = id
  
export
FromFFI GetSVGDocument GetSVGDocument where fromFFI = Just

export data SVGAnimatedPoints : Type where [external]
  
export
ToFFI SVGAnimatedPoints SVGAnimatedPoints where toFFI = id
  
export
FromFFI SVGAnimatedPoints SVGAnimatedPoints where fromFFI = Just

export data SVGElementInstance : Type where [external]
  
export
ToFFI SVGElementInstance SVGElementInstance where toFFI = id
  
export
FromFFI SVGElementInstance SVGElementInstance where fromFFI = Just

export data SVGFitToViewBox : Type where [external]
  
export
ToFFI SVGFitToViewBox SVGFitToViewBox where toFFI = id
  
export
FromFFI SVGFitToViewBox SVGFitToViewBox where fromFFI = Just

export data SVGTests : Type where [external]
  
export
ToFFI SVGTests SVGTests where toFFI = id
  
export
FromFFI SVGTests SVGTests where fromFFI = Just

export data SVGURIReference : Type where [external]
  
export
ToFFI SVGURIReference SVGURIReference where toFFI = id
  
export
FromFFI SVGURIReference SVGURIReference where fromFFI = Just
