module Web.Raw.SVGImageElement

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
import Web.Types.SVGAnimatedLength
import Web.Types.SVGAnimatedPreserveAspectRatio
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGGraphicsElement
import Web.Types.SVGImageElement
import Web.Types.SVGTests
import Web.Types.SVGURIReference
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.crossOrigin"
prim__crossOrigin : SVGImageElement -> PrimIO (Nullable String)



export
%foreign "browser:lambda:(x,v)=>{x.crossOrigin = v}"
prim__setCrossOrigin : SVGImageElement -> Nullable String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.height"
prim__height : SVGImageElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.preserveAspectRatio"
prim__preserveAspectRatio :
     SVGImageElement
  -> PrimIO SVGAnimatedPreserveAspectRatio


export
%foreign "browser:lambda:x=>x.width"
prim__width : SVGImageElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.x"
prim__x : SVGImageElement -> PrimIO SVGAnimatedLength


export
%foreign "browser:lambda:x=>x.y"
prim__y : SVGImageElement -> PrimIO SVGAnimatedLength


export
crossOrigin : SVGImageElement -> Attribute False Maybe String
crossOrigin v = fromNullablePrim
                  "SVGImageElement.getcrossOrigin"
                  prim__crossOrigin
                  prim__setCrossOrigin
                  v


export
height : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
height a = primJS $ SVGImageElement.prim__height a


export
preserveAspectRatio :
     (obj : SVGImageElement)
  -> JSIO SVGAnimatedPreserveAspectRatio
preserveAspectRatio a = primJS $ SVGImageElement.prim__preserveAspectRatio a


export
width : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
width a = primJS $ SVGImageElement.prim__width a


export
x : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
x a = primJS $ SVGImageElement.prim__x a


export
y : (obj : SVGImageElement) -> JSIO SVGAnimatedLength
y a = primJS $ SVGImageElement.prim__y a
