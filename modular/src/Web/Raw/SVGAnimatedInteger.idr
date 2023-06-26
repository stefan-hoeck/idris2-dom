module Web.Raw.SVGAnimatedInteger

import JS
import Web.Types.SVGAnimatedInteger


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedInteger -> PrimIO Int32


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedInteger -> PrimIO Int32



export
%foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
prim__setBaseVal : SVGAnimatedInteger -> Int32 -> PrimIO ()



export
animVal : (obj : SVGAnimatedInteger) -> JSIO Int32
animVal a = primJS $ SVGAnimatedInteger.prim__animVal a


export
baseVal : SVGAnimatedInteger -> Attribute True Prelude.id Int32
baseVal v = fromPrim
              "SVGAnimatedInteger.getbaseVal"
              prim__baseVal
              prim__setBaseVal
              v

