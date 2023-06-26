module Web.Raw.DOMRectReadOnly

import JS
import Web.Types.DOMRectInit
import Web.Types.DOMRectReadOnly


%default total


export
%foreign "browser:lambda:(a)=>DOMRectReadOnly.fromRect(a)"
prim__fromRect : UndefOr DOMRectInit -> PrimIO DOMRectReadOnly


export
%foreign "browser:lambda:x=>x.bottom"
prim__bottom : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.height"
prim__height : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.left"
prim__left : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.right"
prim__right : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.top"
prim__top : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.width"
prim__width : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.x"
prim__x : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.y"
prim__y : DOMRectReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : DOMRectReadOnly -> PrimIO Object


export
fromRect' :
     {auto _ : Cast t1 DOMRectInit}
  -> (other : Optional t1)
  -> JSIO DOMRectReadOnly
fromRect' a = primJS $ DOMRectReadOnly.prim__fromRect (optUp a)

export
fromRect : JSIO DOMRectReadOnly
fromRect = primJS $ DOMRectReadOnly.prim__fromRect undef


export
bottom : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
bottom a = primJS $ DOMRectReadOnly.prim__bottom (cast a)


export
height : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
height a = primJS $ DOMRectReadOnly.prim__height (cast a)


export
left : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
left a = primJS $ DOMRectReadOnly.prim__left (cast a)


export
right : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
right a = primJS $ DOMRectReadOnly.prim__right (cast a)


export
top : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
top a = primJS $ DOMRectReadOnly.prim__top (cast a)


export
width : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
width a = primJS $ DOMRectReadOnly.prim__width (cast a)


export
x : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
x a = primJS $ DOMRectReadOnly.prim__x (cast a)


export
y : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Double
y a = primJS $ DOMRectReadOnly.prim__y (cast a)


export
toJSON : {auto _ : Cast t1 DOMRectReadOnly} -> (obj : t1) -> JSIO Object
toJSON a = primJS $ DOMRectReadOnly.prim__toJSON (cast a)

