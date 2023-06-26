module Web.Raw.SVGAnimatedNumberList

import JS
import Web.Types.SVGAnimatedNumberList
import Web.Types.SVGNumberList


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedNumberList -> PrimIO SVGNumberList


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedNumberList -> PrimIO SVGNumberList


export
animVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
animVal a = primJS $ SVGAnimatedNumberList.prim__animVal a


export
baseVal : (obj : SVGAnimatedNumberList) -> JSIO SVGNumberList
baseVal a = primJS $ SVGAnimatedNumberList.prim__baseVal a
