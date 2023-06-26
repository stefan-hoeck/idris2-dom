module Web.Raw.DOMMatrixReadOnly

import JS
import Web.Types.DOMMatrix
import Web.Types.DOMMatrixInit
import Web.Types.DOMMatrixReadOnly
import Web.Types.DOMPoint
import Web.Types.DOMPointInit


%default total


export
%foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromFloat32Array(a)"
prim__fromFloat32Array : Float32Array -> PrimIO DOMMatrixReadOnly


export
%foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromFloat64Array(a)"
prim__fromFloat64Array : Float64Array -> PrimIO DOMMatrixReadOnly


export
%foreign "browser:lambda:(a)=>DOMMatrixReadOnly.fromMatrix(a)"
prim__fromMatrix : UndefOr DOMMatrixInit -> PrimIO DOMMatrixReadOnly


export
%foreign "browser:lambda:x=>x.a"
prim__a : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.b"
prim__b : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.c"
prim__c : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.d"
prim__d : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.e"
prim__e : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.f"
prim__f : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.is2D"
prim__is2D : DOMMatrixReadOnly -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.isIdentity"
prim__isIdentity : DOMMatrixReadOnly -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.m11"
prim__m11 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m12"
prim__m12 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m13"
prim__m13 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m14"
prim__m14 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m21"
prim__m21 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m22"
prim__m22 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m23"
prim__m23 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m24"
prim__m24 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m31"
prim__m31 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m32"
prim__m32 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m33"
prim__m33 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m34"
prim__m34 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m41"
prim__m41 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m42"
prim__m42 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m43"
prim__m43 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.m44"
prim__m44 : DOMMatrixReadOnly -> PrimIO Double


export
%foreign "browser:lambda:x=>x.flipX()"
prim__flipX : DOMMatrixReadOnly -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.flipY()"
prim__flipY : DOMMatrixReadOnly -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.inverse()"
prim__inverse : DOMMatrixReadOnly -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.multiply(a)"
prim__multiply : DOMMatrixReadOnly -> UndefOr DOMMatrixInit -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.rotateAxisAngle(a,b,c,d)"
prim__rotateAxisAngle :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c)=>x.rotate(a,b,c)"
prim__rotate :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b)=>x.rotateFromVector(a,b)"
prim__rotateFromVector :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d)=>x.scale3d(a,b,c,d)"
prim__scale3d :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b,c,d,e,f)=>x.scale(a,b,c,d,e,f)"
prim__scale :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a,b)=>x.scaleNonUniform(a,b)"
prim__scaleNonUniform :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.skewX(a)"
prim__skewX : DOMMatrixReadOnly -> UndefOr Double -> PrimIO DOMMatrix


export
%foreign "browser:lambda:(x,a)=>x.skewY(a)"
prim__skewY : DOMMatrixReadOnly -> UndefOr Double -> PrimIO DOMMatrix


export
%foreign "browser:lambda:x=>x.toFloat32Array()"
prim__toFloat32Array : DOMMatrixReadOnly -> PrimIO Float32Array


export
%foreign "browser:lambda:x=>x.toFloat64Array()"
prim__toFloat64Array : DOMMatrixReadOnly -> PrimIO Float64Array


export
%foreign "browser:lambda:x=>x.toJSON()"
prim__toJSON : DOMMatrixReadOnly -> PrimIO Object


export
%foreign "browser:lambda:x=>x.toString()"
prim__toString : DOMMatrixReadOnly -> PrimIO String


export
%foreign "browser:lambda:(x,a)=>x.transformPoint(a)"
prim__transformPoint :
     DOMMatrixReadOnly
  -> UndefOr DOMPointInit
  -> PrimIO DOMPoint


export
%foreign "browser:lambda:(x,a,b,c)=>x.translate(a,b,c)"
prim__translate :
     DOMMatrixReadOnly
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMMatrix


export
fromFloat32Array : (array32 : Float32Array) -> JSIO DOMMatrixReadOnly
fromFloat32Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat32Array a


export
fromFloat64Array : (array64 : Float64Array) -> JSIO DOMMatrixReadOnly
fromFloat64Array a = primJS $ DOMMatrixReadOnly.prim__fromFloat64Array a


export
fromMatrix' :
     {auto _ : Cast t1 DOMMatrixInit}
  -> (other : Optional t1)
  -> JSIO DOMMatrixReadOnly
fromMatrix' a = primJS $ DOMMatrixReadOnly.prim__fromMatrix (optUp a)

export
fromMatrix : JSIO DOMMatrixReadOnly
fromMatrix = primJS $ DOMMatrixReadOnly.prim__fromMatrix undef


export
a : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
a b = primJS $ DOMMatrixReadOnly.prim__a (cast b)


export
b : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
b a = primJS $ DOMMatrixReadOnly.prim__b (cast a)


export
c : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
c a = primJS $ DOMMatrixReadOnly.prim__c (cast a)


export
d : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
d a = primJS $ DOMMatrixReadOnly.prim__d (cast a)


export
e : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
e a = primJS $ DOMMatrixReadOnly.prim__e (cast a)


export
f : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
f a = primJS $ DOMMatrixReadOnly.prim__f (cast a)


export
is2D : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Bool
is2D a = tryJS "DOMMatrixReadOnly.is2D" $ DOMMatrixReadOnly.prim__is2D (cast a)


export
isIdentity : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Bool
isIdentity a = tryJS "DOMMatrixReadOnly.isIdentity" $
  DOMMatrixReadOnly.prim__isIdentity (cast a)


export
m11 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m11 a = primJS $ DOMMatrixReadOnly.prim__m11 (cast a)


export
m12 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m12 a = primJS $ DOMMatrixReadOnly.prim__m12 (cast a)


export
m13 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m13 a = primJS $ DOMMatrixReadOnly.prim__m13 (cast a)


export
m14 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m14 a = primJS $ DOMMatrixReadOnly.prim__m14 (cast a)


export
m21 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m21 a = primJS $ DOMMatrixReadOnly.prim__m21 (cast a)


export
m22 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m22 a = primJS $ DOMMatrixReadOnly.prim__m22 (cast a)


export
m23 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m23 a = primJS $ DOMMatrixReadOnly.prim__m23 (cast a)


export
m24 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m24 a = primJS $ DOMMatrixReadOnly.prim__m24 (cast a)


export
m31 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m31 a = primJS $ DOMMatrixReadOnly.prim__m31 (cast a)


export
m32 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m32 a = primJS $ DOMMatrixReadOnly.prim__m32 (cast a)


export
m33 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m33 a = primJS $ DOMMatrixReadOnly.prim__m33 (cast a)


export
m34 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m34 a = primJS $ DOMMatrixReadOnly.prim__m34 (cast a)


export
m41 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m41 a = primJS $ DOMMatrixReadOnly.prim__m41 (cast a)


export
m42 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m42 a = primJS $ DOMMatrixReadOnly.prim__m42 (cast a)


export
m43 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m43 a = primJS $ DOMMatrixReadOnly.prim__m43 (cast a)


export
m44 : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Double
m44 a = primJS $ DOMMatrixReadOnly.prim__m44 (cast a)


export
flipX : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
flipX a = primJS $ DOMMatrixReadOnly.prim__flipX (cast a)


export
flipY : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
flipY a = primJS $ DOMMatrixReadOnly.prim__flipY (cast a)


export
inverse : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
inverse a = primJS $ DOMMatrixReadOnly.prim__inverse (cast a)


export
multiply' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> {auto _ : Cast t2 DOMMatrixInit}
  -> (obj : t1)
  -> (other : Optional t2)
  -> JSIO DOMMatrix
multiply' a b = primJS $ DOMMatrixReadOnly.prim__multiply (cast a) (optUp b)

export
multiply : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
multiply a = primJS $ DOMMatrixReadOnly.prim__multiply (cast a) undef


export
rotateAxisAngle' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (x : Optional Double)
  -> (y : Optional Double)
  -> (z : Optional Double)
  -> (angle : Optional Double)
  -> JSIO DOMMatrix
rotateAxisAngle' a b c d e = primJS $
  DOMMatrixReadOnly.prim__rotateAxisAngle
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
rotateAxisAngle :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO DOMMatrix
rotateAxisAngle a = primJS $
  DOMMatrixReadOnly.prim__rotateAxisAngle (cast a) undef undef undef undef


export
rotate' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (rotX : Optional Double)
  -> (rotY : Optional Double)
  -> (rotZ : Optional Double)
  -> JSIO DOMMatrix
rotate' a b c d = primJS $
  DOMMatrixReadOnly.prim__rotate (cast a) (toFFI b) (toFFI c) (toFFI d)

export
rotate : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
rotate a = primJS $ DOMMatrixReadOnly.prim__rotate (cast a) undef undef undef


export
rotateFromVector' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (x : Optional Double)
  -> (y : Optional Double)
  -> JSIO DOMMatrix
rotateFromVector' a b c = primJS $
  DOMMatrixReadOnly.prim__rotateFromVector (cast a) (toFFI b) (toFFI c)

export
rotateFromVector :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO DOMMatrix
rotateFromVector a = primJS $
  DOMMatrixReadOnly.prim__rotateFromVector (cast a) undef undef


export
scale3d' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (scale : Optional Double)
  -> (originX : Optional Double)
  -> (originY : Optional Double)
  -> (originZ : Optional Double)
  -> JSIO DOMMatrix
scale3d' a b c d e = primJS $
  DOMMatrixReadOnly.prim__scale3d
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)

export
scale3d : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
scale3d a = primJS $
  DOMMatrixReadOnly.prim__scale3d (cast a) undef undef undef undef


export
scale' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (scaleX : Optional Double)
  -> (scaleY : Optional Double)
  -> (scaleZ : Optional Double)
  -> (originX : Optional Double)
  -> (originY : Optional Double)
  -> (originZ : Optional Double)
  -> JSIO DOMMatrix
scale' a b c d e f g = primJS $
  DOMMatrixReadOnly.prim__scale
    (cast a)
    (toFFI b)
    (toFFI c)
    (toFFI d)
    (toFFI e)
    (toFFI f)
    (toFFI g)

export
scale : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
scale a = primJS $
  DOMMatrixReadOnly.prim__scale (cast a) undef undef undef undef undef undef


export
scaleNonUniform' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (scaleX : Optional Double)
  -> (scaleY : Optional Double)
  -> JSIO DOMMatrix
scaleNonUniform' a b c = primJS $
  DOMMatrixReadOnly.prim__scaleNonUniform (cast a) (toFFI b) (toFFI c)

export
scaleNonUniform :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO DOMMatrix
scaleNonUniform a = primJS $
  DOMMatrixReadOnly.prim__scaleNonUniform (cast a) undef undef


export
skewX' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (sx : Optional Double)
  -> JSIO DOMMatrix
skewX' a b = primJS $ DOMMatrixReadOnly.prim__skewX (cast a) (toFFI b)

export
skewX : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
skewX a = primJS $ DOMMatrixReadOnly.prim__skewX (cast a) undef


export
skewY' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (sy : Optional Double)
  -> JSIO DOMMatrix
skewY' a b = primJS $ DOMMatrixReadOnly.prim__skewY (cast a) (toFFI b)

export
skewY : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
skewY a = primJS $ DOMMatrixReadOnly.prim__skewY (cast a) undef


export
toFloat32Array :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO Float32Array
toFloat32Array a = primJS $ DOMMatrixReadOnly.prim__toFloat32Array (cast a)


export
toFloat64Array :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO Float64Array
toFloat64Array a = primJS $ DOMMatrixReadOnly.prim__toFloat64Array (cast a)


export
toJSON : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO Object
toJSON a = primJS $ DOMMatrixReadOnly.prim__toJSON (cast a)


export
toString : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO String
toString a = primJS $ DOMMatrixReadOnly.prim__toString (cast a)


export
transformPoint' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> {auto _ : Cast t2 DOMPointInit}
  -> (obj : t1)
  -> (point : Optional t2)
  -> JSIO DOMPoint
transformPoint' a b = primJS $
  DOMMatrixReadOnly.prim__transformPoint (cast a) (optUp b)

export
transformPoint :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> JSIO DOMPoint
transformPoint a = primJS $
  DOMMatrixReadOnly.prim__transformPoint (cast a) undef


export
translate' :
     {auto _ : Cast t1 DOMMatrixReadOnly}
  -> (obj : t1)
  -> (tx : Optional Double)
  -> (ty : Optional Double)
  -> (tz : Optional Double)
  -> JSIO DOMMatrix
translate' a b c d = primJS $
  DOMMatrixReadOnly.prim__translate (cast a) (toFFI b) (toFFI c) (toFFI d)

export
translate : {auto _ : Cast t1 DOMMatrixReadOnly} -> (obj : t1) -> JSIO DOMMatrix
translate a = primJS $
  DOMMatrixReadOnly.prim__translate (cast a) undef undef undef

