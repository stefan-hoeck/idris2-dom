module Web.Raw.DOMPointReadOnly

import JS
import Web.Types.DOMMatrixInit
import Web.Types.DOMPoint
import Web.Types.DOMPointInit
import Web.Types.DOMPointReadOnly


%default total


export
%foreign "browser:lambda:(a)=>DOMPointReadOnly.fromPoint(a)"
prim__fromPoint : UndefOr DOMPointInit -> PrimIO DOMPointReadOnly


export
%foreign "browser:lambda:x=>x.w"
prim__w : DOMPointReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.x"
prim__x : DOMPointReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.y"
prim__y : DOMPointReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.z"
prim__z : DOMPointReadOnly -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.matrixTransform(a)"
prim__matrixTransform :
     DOMPointReadOnly
  -> UndefOr DOMMatrixInit
  -> PrimIO DOMPoint


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : DOMPointReadOnly -> PrimIO Object


export
fromPoint' :
     {auto _ : Cast t1 DOMPointInit}
  -> (other : Optional t1)
  -> JSIO DOMPointReadOnly
fromPoint' a = primJS $ DOMPointReadOnly.prim__fromPoint (optUp a)

export
fromPoint : JSIO DOMPointReadOnly
fromPoint = primJS $ DOMPointReadOnly.prim__fromPoint undef


export
w : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
w a = primJS $ DOMPointReadOnly.prim__w (cast a)


export
x : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
x a = primJS $ DOMPointReadOnly.prim__x (cast a)


export
y : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
y a = primJS $ DOMPointReadOnly.prim__y (cast a)


export
z : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Double
z a = primJS $ DOMPointReadOnly.prim__z (cast a)


export
matrixTransform' :
     {auto _ : Cast t1 DOMPointReadOnly}
  -> {auto _ : Cast t2 DOMMatrixInit}
  -> (obj : t1)
  -> (matrix : Optional t2)
  -> JSIO DOMPoint
matrixTransform' a b = primJS $
  DOMPointReadOnly.prim__matrixTransform (cast a) (optUp b)

export
matrixTransform :
     {auto _ : Cast t1 DOMPointReadOnly}
  -> (obj : t1)
  -> JSIO DOMPoint
matrixTransform a = primJS $
  DOMPointReadOnly.prim__matrixTransform (cast a) undef


export
toJSON : {auto _ : Cast t1 DOMPointReadOnly} -> (obj : t1) -> JSIO Object
toJSON a = primJS $ DOMPointReadOnly.prim__toJSON (cast a)
