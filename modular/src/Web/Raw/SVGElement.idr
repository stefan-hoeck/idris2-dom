module Web.Raw.SVGElement

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
import Web.Types.SVGAnimatedString
import Web.Types.SVGElement
import Web.Types.SVGElementInstance
import Web.Types.SVGSVGElement
import Web.Types.Slottable


%default total


export
%foreign "browser:lambda:x=>x.className"
prim__className : SVGElement -> PrimIO SVGAnimatedString


export
%foreign "browser:lambda:x=>x.ownerSVGElement"
prim__ownerSVGElement : SVGElement -> PrimIO (Nullable SVGSVGElement)


export
%foreign "browser:lambda:x=>x.viewportElement"
prim__viewportElement : SVGElement -> PrimIO (Nullable SVGElement)


export
className :
     {auto _ : Cast t1 SVGElement}
  -> (obj : t1)
  -> JSIO SVGAnimatedString
className a = primJS $ SVGElement.prim__className (cast a)


export
ownerSVGElement :
     {auto _ : Cast t1 SVGElement}
  -> (obj : t1)
  -> JSIO (Maybe SVGSVGElement)
ownerSVGElement a = tryJS "SVGElement.ownerSVGElement" $
  SVGElement.prim__ownerSVGElement (cast a)


export
viewportElement :
     {auto _ : Cast t1 SVGElement}
  -> (obj : t1)
  -> JSIO (Maybe SVGElement)
viewportElement a = tryJS "SVGElement.viewportElement" $
  SVGElement.prim__viewportElement (cast a)

