module Web.Raw.SVGAnimatedLength

import JS
import Web.Types.SVGAnimatedLength
import Web.Types.SVGLength


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedLength -> PrimIO SVGLength


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedLength -> PrimIO SVGLength


export
animVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
animVal a = primJS $ SVGAnimatedLength.prim__animVal a


export
baseVal : (obj : SVGAnimatedLength) -> JSIO SVGLength
baseVal a = primJS $ SVGAnimatedLength.prim__baseVal a

