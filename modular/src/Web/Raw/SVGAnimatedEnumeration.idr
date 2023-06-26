module Web.Raw.SVGAnimatedEnumeration

import JS
import Web.Types.SVGAnimatedEnumeration


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedEnumeration -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedEnumeration -> PrimIO Bits16



export
%foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
prim__setBaseVal : SVGAnimatedEnumeration -> Bits16 -> PrimIO ()



export
animVal : (obj : SVGAnimatedEnumeration) -> JSIO Bits16
animVal a = primJS $ SVGAnimatedEnumeration.prim__animVal a


export
baseVal : SVGAnimatedEnumeration -> Attribute True Prelude.id Bits16
baseVal v = fromPrim
              "SVGAnimatedEnumeration.getbaseVal"
              prim__baseVal
              prim__setBaseVal
              v
