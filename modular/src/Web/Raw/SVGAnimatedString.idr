module Web.Raw.SVGAnimatedString

import JS
import Web.Types.SVGAnimatedString


%default total


export
%foreign "browser:lambda:x=>x.animVal"
prim__animVal : SVGAnimatedString -> PrimIO String


export
%foreign "browser:lambda:x=>x.baseVal"
prim__baseVal : SVGAnimatedString -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.baseVal = v}"
prim__setBaseVal : SVGAnimatedString -> String -> PrimIO ()



export
animVal : (obj : SVGAnimatedString) -> JSIO String
animVal a = primJS $ SVGAnimatedString.prim__animVal a


export
baseVal : SVGAnimatedString -> Attribute True Prelude.id String
baseVal v = fromPrim
              "SVGAnimatedString.getbaseVal"
              prim__baseVal
              prim__setBaseVal
              v

