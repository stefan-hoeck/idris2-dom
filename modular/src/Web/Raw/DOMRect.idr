module Web.Raw.DOMRect

import JS
import Web.Types.DOMRect
import Web.Types.DOMRectInit
import Web.Types.DOMRectReadOnly


%default total


export
%foreign "browser:lambda:(a)=>DOMRect.fromRect(a)"
prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMRect


export
fromRect' :
     {auto _ : Cast t1 DOMRectInit}
  -> (other : Optional t1)
  -> JSIO DOMRect
fromRect' a = primJS $ DOMRect.prim__fromRect (optUp a)

export
fromRect : JSIO DOMRect
fromRect = primJS $ DOMRect.prim__fromRect undef
