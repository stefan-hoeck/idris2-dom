module Web.Raw.DOMQuad

import JS
import Web.Types.DOMPoint
import Web.Types.DOMQuad
import Web.Types.DOMQuadInit
import Web.Types.DOMRect
import Web.Types.DOMRectInit


%default total


export
%foreign "browser:lambda:(a)=>DOMQuad.fromQuad(a)"
prim__fromQuad : UndefOr DOMQuadInit -> PrimIO DOMQuad


export
%foreign "browser:lambda:(a)=>DOMQuad.fromRect(a)"
prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMQuad


export
%foreign "browser:lambda:x=>x.p1"
prim__p1 : DOMQuad -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.p2"
prim__p2 : DOMQuad -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.p3"
prim__p3 : DOMQuad -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.p4"
prim__p4 : DOMQuad -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.getBounds()"
prim__getBounds : DOMQuad -> PrimIO DOMRect


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : DOMQuad -> PrimIO Object


export
fromQuad' :
     {auto _ : Cast t1 DOMQuadInit}
  -> (other : Optional t1)
  -> JSIO DOMQuad
fromQuad' a = primJS $ DOMQuad.prim__fromQuad (optUp a)

export
fromQuad : JSIO DOMQuad
fromQuad = primJS $ DOMQuad.prim__fromQuad undef


export
fromRect' :
     {auto _ : Cast t1 DOMRectInit}
  -> (other : Optional t1)
  -> JSIO DOMQuad
fromRect' a = primJS $ DOMQuad.prim__fromRect (optUp a)

export
fromRect : JSIO DOMQuad
fromRect = primJS $ DOMQuad.prim__fromRect undef


export
p1 : (obj : DOMQuad) -> JSIO DOMPoint
p1 a = primJS $ DOMQuad.prim__p1 a


export
p2 : (obj : DOMQuad) -> JSIO DOMPoint
p2 a = primJS $ DOMQuad.prim__p2 a


export
p3 : (obj : DOMQuad) -> JSIO DOMPoint
p3 a = primJS $ DOMQuad.prim__p3 a


export
p4 : (obj : DOMQuad) -> JSIO DOMPoint
p4 a = primJS $ DOMQuad.prim__p4 a


export
getBounds : (obj : DOMQuad) -> JSIO DOMRect
getBounds a = primJS $ DOMQuad.prim__getBounds a


export
toJSON : (obj : DOMQuad) -> JSIO Object
toJSON a = primJS $ DOMQuad.prim__toJSON a
