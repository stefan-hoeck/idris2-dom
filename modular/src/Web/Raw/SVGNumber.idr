module Web.Raw.SVGNumber

import JS
import Web.Types.SVGNumber


%default total


export
%foreign "browser:lambda:x=>x.value"
prim__value : SVGNumber -> PrimIO Double



export
%foreign "browser:lambda:(x,v)=>{x.value = v}"
prim__setValue : SVGNumber -> Double -> PrimIO ()



export
value : SVGNumber -> Attribute True Prelude.id Double
value v = fromPrim "SVGNumber.getvalue" prim__value prim__setValue v

