module Web.Raw.LinkStyle

import JS
import Web.Types.CSSStyleSheet
import Web.Types.LinkStyle


%default total


export
%foreign "browser:lambda:x=>x.sheet"
prim__sheet : LinkStyle -> PrimIO (Nullable CSSStyleSheet)


export
sheet : {auto _ : Cast t1 LinkStyle} -> (obj : t1) -> JSIO (Maybe CSSStyleSheet)
sheet a = tryJS "LinkStyle.sheet" $ LinkStyle.prim__sheet (cast a)

