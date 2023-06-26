module Web.Raw.SVGAnimatedLengthList

import JS
import Web.Types.SVGAnimatedLengthList
import Web.Types.SVGLengthList


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedLengthList -> PrimIO SVGLengthList


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedLengthList -> PrimIO SVGLengthList


export
animVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
animVal a = primJS $ SVGAnimatedLengthList.prim__animVal a


export
baseVal : (obj : SVGAnimatedLengthList) -> JSIO SVGLengthList
baseVal a = primJS $ SVGAnimatedLengthList.prim__baseVal a

