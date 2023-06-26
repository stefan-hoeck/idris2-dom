module Web.Raw.DOMRectInit

import JS
import Web.Types.DOMRectInit


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({x: a,y: b,width: c,height: d})"
prim__new :
     UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> UndefOr Double
  -> PrimIO DOMRectInit


export
%foreign "browser:lambda:x=>x.height"
prim__height : DOMRectInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.height = v}"
prim__setHeight : DOMRectInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.width"
prim__width : DOMRectInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.width = v}"
prim__setWidth : DOMRectInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.x"
prim__x : DOMRectInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.x = v}"
prim__setX : DOMRectInit -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.y"
prim__y : DOMRectInit -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.y = v}"
prim__setY : DOMRectInit -> UndefOr Double -> PrimIO ()



export
new' :
     (x : Optional Double)
  -> (y : Optional Double)
  -> (width : Optional Double)
  -> (height : Optional Double)
  -> JSIO DOMRectInit
new' a b c d = primJS $
  DOMRectInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO DOMRectInit
new = primJS $ DOMRectInit.prim__new undef undef undef undef


export
height : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
height v = fromUndefOrPrim
             "DOMRectInit.getheight"
             prim__height
             prim__setHeight
             0
             (cast {to = DOMRectInit} v)


export
width : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
width v = fromUndefOrPrim
            "DOMRectInit.getwidth"
            prim__width
            prim__setWidth
            0
            (cast {to = DOMRectInit} v)


export
x : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
x v = fromUndefOrPrim
        "DOMRectInit.getx"
        prim__x
        prim__setX
        0
        (cast {to = DOMRectInit} v)


export
y : {auto _ : Cast t DOMRectInit} -> t -> Attribute True Optional Double
y v = fromUndefOrPrim
        "DOMRectInit.gety"
        prim__y
        prim__setY
        0
        (cast {to = DOMRectInit} v)

