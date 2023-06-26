module Web.Raw.DOMPoint

import JS
import Web.Types.DOMPoint
import Web.Types.DOMPointInit
import Web.Types.DOMPointReadOnly


%default total


export
%foreign "browser:lambda:(a)=>DOMPoint.fromPoint(a)"
prim__fromPoint : UndefOr DOMPointInit -> PrimIO DOMPoint


export
fromPoint' :
     {auto _ : Cast t1 DOMPointInit}
  -> (other : Optional t1)
  -> JSIO DOMPoint
fromPoint' a = primJS $ DOMPoint.prim__fromPoint (optUp a)

export
fromPoint : JSIO DOMPoint
fromPoint = primJS $ DOMPoint.prim__fromPoint undef

