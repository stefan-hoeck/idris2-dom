module Web.Raw.SVGURIReference

import JS
import Web.Types.SVGAnimatedString
import Web.Types.SVGURIReference


%default total


export
%foreign "browser:lambda:x=>x.href"
prim__href : SVGURIReference -> PrimIO SVGAnimatedString


export
href :
     {auto _ : Cast t1 SVGURIReference}
  -> (obj : t1)
  -> JSIO SVGAnimatedString
href a = primJS $ SVGURIReference.prim__href (cast a)
