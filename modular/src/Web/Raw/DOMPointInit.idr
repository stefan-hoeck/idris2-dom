module Web.Raw.DOMPointInit

import JS
import Web.Types.DOMPointInit


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({x: a,y: b,z: c,w: d})"
prim__new :
     UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMPointInit


export
%foreign "browser:lambda:x=>x.w"
prim__w : DOMPointInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.w = v}"
prim__setW : DOMPointInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.x"
prim__x : DOMPointInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.x = v}"
prim__setX : DOMPointInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.y"
prim__y : DOMPointInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.y = v}"
prim__setY : DOMPointInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.z"
prim__z : DOMPointInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.z = v}"
prim__setZ : DOMPointInit -> UndefOr Double -> PrimIO ()



export
new' :
     (x : Optional Double)
  -> (y : Optional Double)
  -> (z : Optional Double)
  -> (w : Optional Double)
  -> JSIO DOMPointInit
new' a b c d = primJS $
  DOMPointInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO DOMPointInit
new = primJS $ DOMPointInit.prim__new undef undef undef undef


export
w : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
w v = fromUndefOrPrim
        "DOMPointInit.getw"
        prim__w
        prim__setW
        1
        (cast {to = DOMPointInit} v)


export
x : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
x v = fromUndefOrPrim
        "DOMPointInit.getx"
        prim__x
        prim__setX
        0
        (cast {to = DOMPointInit} v)


export
y : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
y v = fromUndefOrPrim
        "DOMPointInit.gety"
        prim__y
        prim__setY
        0
        (cast {to = DOMPointInit} v)


export
z : {auto _ : Cast t DOMPointInit} -> t -> Attribute True Optional Double
z v = fromUndefOrPrim
        "DOMPointInit.getz"
        prim__z
        prim__setZ
        0
        (cast {to = DOMPointInit} v)

