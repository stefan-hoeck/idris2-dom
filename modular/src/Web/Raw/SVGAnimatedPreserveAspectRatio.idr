module Web.Raw.SVGAnimatedPreserveAspectRatio

import JS
import Web.Types.SVGAnimatedPreserveAspectRatio
import Web.Types.SVGPreserveAspectRatio


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedPreserveAspectRatio -> PrimIO SVGPreserveAspectRatio


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedPreserveAspectRatio -> PrimIO SVGPreserveAspectRatio


export
animVal : (obj : SVGAnimatedPreserveAspectRatio) -> JSIO SVGPreserveAspectRatio
animVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__animVal a


export
baseVal : (obj : SVGAnimatedPreserveAspectRatio) -> JSIO SVGPreserveAspectRatio
baseVal a = primJS $ SVGAnimatedPreserveAspectRatio.prim__baseVal a

