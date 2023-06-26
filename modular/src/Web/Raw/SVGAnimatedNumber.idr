module Web.Raw.SVGAnimatedNumber

import JS
import Web.Types.SVGAnimatedNumber


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedNumber -> PrimIO Double


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedNumber -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
prim__setBaseVal : SVGAnimatedNumber -> Double -> PrimIO ()



export
animVal : (obj : SVGAnimatedNumber) -> JSIO Double
animVal a = primJS $ SVGAnimatedNumber.prim__animVal a


export
baseVal : SVGAnimatedNumber -> Attribute True Prelude.id Double
baseVal v = fromPrim
              "SVGAnimatedNumber.getbaseVal"
              prim__baseVal
              prim__setBaseVal
              v
