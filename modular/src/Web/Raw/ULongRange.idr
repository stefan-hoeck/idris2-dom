module Web.Raw.ULongRange

import JS
import Web.Types.ULongRange


%default total


export
%foreign "browser:lambda:(a,b)=> ({max: a,min: b})"
prim__new : UndefOr Bits32 -> UndefOr Bits32 -> PrimIO ULongRange


export
%foreign "browser:lambda:x=>x.max"
prim__max : ULongRange -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.max = v}"
prim__setMax : ULongRange -> UndefOr Bits32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.min"
prim__min : ULongRange -> PrimIO (UndefOr Bits32)



export
%foreign "browser:lambda:(x,v)=>{x.min = v}"
prim__setMin : ULongRange -> UndefOr Bits32 -> PrimIO ()



export
new' : (max : Optional Bits32) -> (min : Optional Bits32) -> JSIO ULongRange
new' a b = primJS $ ULongRange.prim__new (toFFI a) (toFFI b)

export
new : JSIO ULongRange
new = primJS $ ULongRange.prim__new undef undef


export
max : {auto _ : Cast t ULongRange} -> t -> Attribute False Optional Bits32
max v = fromUndefOrPrimNoDefault
          "ULongRange.getmax"
          prim__max
          prim__setMax
          (cast {to = ULongRange} v)


export
min : {auto _ : Cast t ULongRange} -> t -> Attribute False Optional Bits32
min v = fromUndefOrPrimNoDefault
          "ULongRange.getmin"
          prim__min
          prim__setMin
          (cast {to = ULongRange} v)

