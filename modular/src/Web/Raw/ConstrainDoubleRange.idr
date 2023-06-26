module Web.Raw.ConstrainDoubleRange

import JS
import Web.Types.ConstrainDoubleRange
import Web.Types.DoubleRange


%default total


export
%foreign "browser:lambda:(a,b)=> ({exact: a,ideal: b})"
prim__new : UndefOr Double -> UndefOr Double -> PrimIO ConstrainDoubleRange


export
%foreign "browser:lambda:x=>x.exact"
prim__exact : ConstrainDoubleRange -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.exact = v}"
prim__setExact : ConstrainDoubleRange -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ideal"
prim__ideal : ConstrainDoubleRange -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.ideal = v}"
prim__setIdeal : ConstrainDoubleRange -> UndefOr Double -> PrimIO ()



export
new' :
     (exact : Optional Double)
  -> (ideal : Optional Double)
  -> JSIO ConstrainDoubleRange
new' a b = primJS $ ConstrainDoubleRange.prim__new (toFFI a) (toFFI b)

export
new : JSIO ConstrainDoubleRange
new = primJS $ ConstrainDoubleRange.prim__new undef undef


export
exact :
     {auto _ : Cast t ConstrainDoubleRange}
  -> t
  -> Attribute False Optional Double
exact v = fromUndefOrPrimNoDefault
            "ConstrainDoubleRange.getexact"
            prim__exact
            prim__setExact
            (cast {to = ConstrainDoubleRange} v)


export
ideal :
     {auto _ : Cast t ConstrainDoubleRange}
  -> t
  -> Attribute False Optional Double
ideal v = fromUndefOrPrimNoDefault
            "ConstrainDoubleRange.getideal"
            prim__ideal
            prim__setIdeal
            (cast {to = ConstrainDoubleRange} v)
