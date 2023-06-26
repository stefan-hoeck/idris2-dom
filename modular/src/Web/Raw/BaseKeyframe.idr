module Web.Raw.BaseKeyframe

import JS
import Web.Types.BaseKeyframe
import Web.Types.CompositeOperationOrAuto


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({offset: a,easing: b,composite: c})"
prim__new :
     UndefOr (Nullable Double)
  -> UndefOr String
  -> UndefOr String
  -> PrimIO BaseKeyframe


export
%foreign "browser:lambda:x=>x.composite"
prim__composite : BaseKeyframe -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.composite = v}"
prim__setComposite : BaseKeyframe -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.easing"
prim__easing : BaseKeyframe -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.easing = v}"
prim__setEasing : BaseKeyframe -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.offset"
prim__offset : BaseKeyframe -> PrimIO (UndefOr (Nullable Double))



export
%foreign "browser:lambda:(x,v)=>{x.offset = v}"
prim__setOffset : BaseKeyframe -> UndefOr (Nullable Double) -> PrimIO ()



export
new' :
     (offset : Optional (Maybe Double))
  -> (easing : Optional String)
  -> (composite : Optional CompositeOperationOrAuto)
  -> JSIO BaseKeyframe
new' a b c = primJS $ BaseKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO BaseKeyframe
new = primJS $ BaseKeyframe.prim__new undef undef undef


export
composite :
     {auto _ : Cast t BaseKeyframe}
  -> t
  -> Attribute False Optional CompositeOperationOrAuto
composite v = fromUndefOrPrimNoDefault
                "BaseKeyframe.getcomposite"
                prim__composite
                prim__setComposite
                (cast {to = BaseKeyframe} v)


export
easing : {auto _ : Cast t BaseKeyframe} -> t -> Attribute True Optional String
easing v = fromUndefOrPrim
             "BaseKeyframe.geteasing"
             prim__easing
             prim__setEasing
             "linear"
             (cast {to = BaseKeyframe} v)


export
offset :
     {auto _ : Cast t BaseKeyframe}
  -> t
  -> Attribute True Optional (Maybe Double)
offset v = fromUndefOrPrim
             "BaseKeyframe.getoffset"
             prim__offset
             prim__setOffset
             Nothing
             (cast {to = BaseKeyframe} v)
