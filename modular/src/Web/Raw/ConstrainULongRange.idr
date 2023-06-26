module Web.Raw.ConstrainULongRange

import JS
import Web.Types.ConstrainULongRange
import Web.Types.ULongRange


%default total


export
%foreign "browser:lambda:(a,b)=> ({exact: a,ideal: b})"
prim__new : UndefOr Bits32 -> UndefOr Bits32 -> PrimIO ConstrainULongRange


export
%foreign "browser:lambda:x=>x.exact"
prim__exact : ConstrainULongRange -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.exact = v}"
prim__setExact : ConstrainULongRange -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.ideal"
prim__ideal : ConstrainULongRange -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.ideal = v}"
prim__setIdeal : ConstrainULongRange -> UndefOr Bits32 -> PrimIO ()



export
new' :
     (exact : Optional Bits32)
  -> (ideal : Optional Bits32)
  -> JSIO ConstrainULongRange
new' a b = primJS $ ConstrainULongRange.prim__new (toFFI a) (toFFI b)

export
new : JSIO ConstrainULongRange
new = primJS $ ConstrainULongRange.prim__new undef undef


export
exact :
     {auto _ : Cast t ConstrainULongRange}
  -> t
  -> Attribute False Optional Bits32
exact v = fromUndefOrPrimNoDefault
            "ConstrainULongRange.getexact"
            prim__exact
            prim__setExact
            (cast {to = ConstrainULongRange} v)


export
ideal :
     {auto _ : Cast t ConstrainULongRange}
  -> t
  -> Attribute False Optional Bits32
ideal v = fromUndefOrPrimNoDefault
            "ConstrainULongRange.getideal"
            prim__ideal
            prim__setIdeal
            (cast {to = ConstrainULongRange} v)
