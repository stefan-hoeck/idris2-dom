module Web.Raw.DoubleRange

import JS
import Web.Types.DoubleRange


%default total


export
%foreign "browser:lambda:(a,b)=> ({max: a,min: b})"
prim__new : UndefOr Double -> UndefOr Double -> PrimIO DoubleRange


export
%foreign "browser:lambda:x=>x.max"
prim__max : DoubleRange -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.max = v}"
prim__setMax : DoubleRange -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.min"
prim__min : DoubleRange -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.min = v}"
prim__setMin : DoubleRange -> UndefOr Double -> PrimIO ()



export
new' : (max : Optional Double) -> (min : Optional Double) -> JSIO DoubleRange
new' a b = primJS $ DoubleRange.prim__new (toFFI a) (toFFI b)

export
new : JSIO DoubleRange
new = primJS $ DoubleRange.prim__new undef undef


export
max : {auto _ : Cast t DoubleRange} -> t -> Attribute False Optional Double
max v = fromUndefOrPrimNoDefault
          "DoubleRange.getmax"
          prim__max
          prim__setMax
          (cast {to = DoubleRange} v)


export
min : {auto _ : Cast t DoubleRange} -> t -> Attribute False Optional Double
min v = fromUndefOrPrimNoDefault
          "DoubleRange.getmin"
          prim__min
          prim__setMin
          (cast {to = DoubleRange} v)

