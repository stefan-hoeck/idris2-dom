module Web.Raw.SVGAnimatedBoolean

import JS
import Web.Types.SVGAnimatedBoolean


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedBoolean -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedBoolean -> PrimIO Boolean



export
%foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
prim__setBaseVal : SVGAnimatedBoolean -> Boolean -> PrimIO ()



export
animVal : (obj : SVGAnimatedBoolean) -> JSIO Bool
animVal a = tryJS "SVGAnimatedBoolean.animVal" $
  SVGAnimatedBoolean.prim__animVal a


export
baseVal : SVGAnimatedBoolean -> Attribute True Prelude.id Bool
baseVal v = fromPrim
              "SVGAnimatedBoolean.getbaseVal"
              prim__baseVal
              prim__setBaseVal
              v

