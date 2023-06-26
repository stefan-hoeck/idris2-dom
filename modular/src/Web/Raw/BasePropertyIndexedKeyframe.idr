module Web.Raw.BasePropertyIndexedKeyframe

import JS
import Web.Types.BasePropertyIndexedKeyframe
import Web.Types.CompositeOperationOrAuto


%default total


export
%foreign "browser:lambda:(a,b,c)=> ({offset: a,easing: b,composite: c})"
prim__new :
     UndefOr (Nullable (Union2 Double (Array (Nullable Double))))
  -> UndefOr (Union2 String (Array String))
  -> UndefOr (Union2 String (Array String))
  -> PrimIO BasePropertyIndexedKeyframe


export
%foreign "browser:lambda:x=>x.composite"
prim__composite :
     BasePropertyIndexedKeyframe
  -> PrimIO (UndefOr (Union2 String (Array String)))



export
%foreign "browser:lambda:(x,v)=>{x.composite = v}"
prim__setComposite :
     BasePropertyIndexedKeyframe
  -> UndefOr (Union2 String (Array String))
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.easing"
prim__easing :
     BasePropertyIndexedKeyframe
  -> PrimIO (UndefOr (Union2 String (Array String)))



export
%foreign "browser:lambda:(x,v)=>{x.easing = v}"
prim__setEasing :
     BasePropertyIndexedKeyframe
  -> UndefOr (Union2 String (Array String))
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.offset"
prim__offset :
     BasePropertyIndexedKeyframe
  -> PrimIO (UndefOr (Nullable (Union2 Double (Array (Nullable Double)))))



export
%foreign "browser:lambda:(x,v)=>{x.offset = v}"
prim__setOffset :
     BasePropertyIndexedKeyframe
  -> UndefOr (Nullable (Union2 Double (Array (Nullable Double))))
  -> PrimIO ()



export
new' :
     (offset : Optional (Maybe (HSum [Double, Array (Nullable Double)])))
  -> (easing : Optional (HSum [String, Array String]))
  -> (composite : Optional (HSum [CompositeOperationOrAuto, Array String]))
  -> JSIO BasePropertyIndexedKeyframe
new' a b c = primJS $
  BasePropertyIndexedKeyframe.prim__new (toFFI a) (toFFI b) (toFFI c)

export
new : JSIO BasePropertyIndexedKeyframe
new = primJS $ BasePropertyIndexedKeyframe.prim__new undef undef undef


export
composite :
     {auto _ : Cast t BasePropertyIndexedKeyframe}
  -> t
  -> Attribute False Optional (Union2 String (Array String))
composite v = fromUndefOrPrimNoDefault
                "BasePropertyIndexedKeyframe.getcomposite"
                prim__composite
                prim__setComposite
                (cast {to = BasePropertyIndexedKeyframe} v)


export
easing :
     {auto _ : Cast t BasePropertyIndexedKeyframe}
  -> t
  -> Attribute False Optional (Union2 String (Array String))
easing v = fromUndefOrPrimNoDefault
             "BasePropertyIndexedKeyframe.geteasing"
             prim__easing
             prim__setEasing
             (cast {to = BasePropertyIndexedKeyframe} v)


export
offset :
     {auto _ : Cast t BasePropertyIndexedKeyframe}
  -> t
  -> Attribute False Optional (Maybe (Union2 Double (Array (Nullable Double))))
offset v = fromUndefOrPrimNoDefault
             "BasePropertyIndexedKeyframe.getoffset"
             prim__offset
             prim__setOffset
             (cast {to = BasePropertyIndexedKeyframe} v)

