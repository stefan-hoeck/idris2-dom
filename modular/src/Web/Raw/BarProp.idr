module Web.Raw.BarProp

import JS
import Web.Types.BarProp


%default total


export
%foreign "browser:lambda:x=>x.visible"
prim__visible : BarProp -> PrimIO Boolean


export
visible : (obj : BarProp) -> JSIO Bool
visible a = tryJS "BarProp.visible" $ BarProp.prim__visible a
