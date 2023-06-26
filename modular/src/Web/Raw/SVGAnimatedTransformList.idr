module Web.Raw.SVGAnimatedTransformList

import JS
import Web.Types.SVGAnimatedTransformList
import Web.Types.SVGTransformList


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedTransformList -> PrimIO SVGTransformList


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedTransformList -> PrimIO SVGTransformList


export
animVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
animVal a = primJS $ SVGAnimatedTransformList.prim__animVal a


export
baseVal : (obj : SVGAnimatedTransformList) -> JSIO SVGTransformList
baseVal a = primJS $ SVGAnimatedTransformList.prim__baseVal a

