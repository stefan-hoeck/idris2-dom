module Web.Raw.BaseComputedKeyframe

import JS
import Web.Types.BaseComputedKeyframe
import Web.Types.CompositeOperationOrAuto


%default total


export
%foreign "browser:lambda:(a,b,c,d)=> ({offset: a,computedOffset: b,easing: c,composite: d})"
prim__new :
     UndefOr (Nullable Double)
  -> UndefOr Double
  -> UndefOr String
  -> UndefOr String
  -> PrimIO BaseComputedKeyframe


export
%foreign "browser:lambda:x=>x.composite"
prim__composite : BaseComputedKeyframe -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.composite = v}"
prim__setComposite : BaseComputedKeyframe -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.computedOffset"
prim__computedOffset : BaseComputedKeyframe -> PrimIO (UndefOr Double)



export
%foreign "browser:lambda:(x,v)=>{x.computedOffset = v}"
prim__setComputedOffset : BaseComputedKeyframe -> UndefOr Double -> PrimIO ()



export
%foreign "browser:lambda:x=>x.easing"
prim__easing : BaseComputedKeyframe -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.easing = v}"
prim__setEasing : BaseComputedKeyframe -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.offset"
prim__offset : BaseComputedKeyframe -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.offset = v}"
prim__setOffset : BaseComputedKeyframe -> UndefOr (Nullable Double) -> PrimIO ()



export
new' :
     (offset : Optional (Maybe Double))
  -> (computedOffset : Optional Double)
  -> (easing : Optional String)
  -> (composite : Optional CompositeOperationOrAuto)
  -> JSIO BaseComputedKeyframe
new' a b c d = primJS $
  BaseComputedKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

export
new : JSIO BaseComputedKeyframe
new = primJS $ BaseComputedKeyframe.prim__new undef undef undef undef


export
composite :
     {auto _ : Cast t BaseComputedKeyframe}
  -> t
  -> Attribute False Optional CompositeOperationOrAuto
composite v = fromUndefOrPrimNoDefault
                "BaseComputedKeyframe.getcomposite"
                prim__composite
                prim__setComposite
                (cast {to = BaseComputedKeyframe} v)


export
computedOffset :
     {auto _ : Cast t BaseComputedKeyframe}
  -> t
  -> Attribute False Optional Double
computedOffset v = fromUndefOrPrimNoDefault
                     "BaseComputedKeyframe.getcomputedOffset"
                     prim__computedOffset
                     prim__setComputedOffset
                     (cast {to = BaseComputedKeyframe} v)


export
easing :
     {auto _ : Cast t BaseComputedKeyframe}
  -> t
  -> Attribute True Optional String
easing v = fromUndefOrPrim
             "BaseComputedKeyframe.geteasing"
             prim__easing
             prim__setEasing
             "linear"
             (cast {to = BaseComputedKeyframe} v)


export
offset :
     {auto _ : Cast t BaseComputedKeyframe}
  -> t
  -> Attribute True Optional (Maybe Double)
offset v = fromUndefOrPrim
             "BaseComputedKeyframe.getoffset"
             prim__offset
             prim__setOffset
             Nothing
             (cast {to = BaseComputedKeyframe} v)

