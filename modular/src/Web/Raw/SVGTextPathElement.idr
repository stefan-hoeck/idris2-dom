module Web.Raw.SVGTextPathElement

import JS
import Web.Types.Animatable
import Web.Types.ChildNode
import Web.Types.DocumentAndElementEventHandlers
import Web.Types.Element
import Web.Types.ElementCSSInlineStyle
import Web.Types.EventTarget
import Web.Types.GeometryUtils
import Web.Types.GlobalEventHandlers
import Web.Types.HTMLOrSVGElement
import Web.Types.InnerHTML
import Web.Types.Node
import Web.Types.NonDocumentTypeChildNode
import Web.Types.ParentNode
import Web.Types.SVGAnimatedEnumeration
import Web.Types.SVGAnimatedLength
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGTests
import Web.Types.SVGTextContentElement
import Web.Types.SVGTextPathElement
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
TEXTPATH_METHODTYPE_ALIGN : Bits16
TEXTPATH_METHODTYPE_ALIGN = 1


export
TEXTPATH_METHODTYPE_STRETCH : Bits16
TEXTPATH_METHODTYPE_STRETCH = 2


export
TEXTPATH_METHODTYPE_UNKNOWN : Bits16
TEXTPATH_METHODTYPE_UNKNOWN = 0


export
TEXTPATH_SPACINGTYPE_AUTO : Bits16
TEXTPATH_SPACINGTYPE_AUTO = 1


export
TEXTPATH_SPACINGTYPE_EXACT : Bits16
TEXTPATH_SPACINGTYPE_EXACT = 2


export
TEXTPATH_SPACINGTYPE_UNKNOWN : Bits16
TEXTPATH_SPACINGTYPE_UNKNOWN = 0


export
%foreign "browser:lambda:x=>x.method"
prim__method : SVGTextPathElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.spacing"
prim__spacing : SVGTextPathElement -> PrimIO SVGAnimatedEnumeration


export
%foreign "browser:lambda:x=>x.startOffset"
prim__startOffset : SVGTextPathElement -> PrimIO SVGAnimatedLength


export
method : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
method a = primJS $ SVGTextPathElement.prim__method a


export
spacing : (obj : SVGTextPathElement) -> JSIO SVGAnimatedEnumeration
spacing a = primJS $ SVGTextPathElement.prim__spacing a


export
startOffset : (obj : SVGTextPathElement) -> JSIO SVGAnimatedLength
startOffset a = primJS $ SVGTextPathElement.prim__startOffset a

