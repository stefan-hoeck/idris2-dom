module Web.Raw.SVGAnimatedAngle

import JS
import Web.Types.SVGAngle
import Web.Types.SVGAnimatedAngle


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedAngle -> PrimIO SVGAngle


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedAngle -> PrimIO SVGAngle


export
animVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
animVal a = primJS $ SVGAnimatedAngle.prim__animVal a


export
baseVal : (obj : SVGAnimatedAngle) -> JSIO SVGAngle
baseVal a = primJS $ SVGAnimatedAngle.prim__baseVal a

