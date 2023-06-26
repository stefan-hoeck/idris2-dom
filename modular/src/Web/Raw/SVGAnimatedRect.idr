module Web.Raw.SVGAnimatedRect

import JS
import Web.Types.DOMRect
import Web.Types.DOMRectReadOnly
import Web.Types.SVGAnimatedRect


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedRect -> PrimIO DOMRectReadOnly


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedRect -> PrimIO DOMRect


export
animVal : (obj : SVGAnimatedRect) -> JSIO DOMRectReadOnly
animVal a = primJS $ SVGAnimatedRect.prim__animVal a


export
baseVal : (obj : SVGAnimatedRect) -> JSIO DOMRect
baseVal a = primJS $ SVGAnimatedRect.prim__baseVal a

