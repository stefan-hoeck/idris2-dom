module Web.Raw.KeyframeEffectOptions

import JS
import Web.Types.CompositeOperation
import Web.Types.EffectTiming
import Web.Types.IterationCompositeOperation
import Web.Types.KeyframeEffectOptions


%default total


export
%foreign "browser:lambda:(a,b)=> ({iterationComposite: a,composite: b})"
prim__new : UndefOr String -> UndefOr String -> PrimIO KeyframeEffectOptions


export
%foreign "browser:lambda:x=>x.composite"
prim__composite : KeyframeEffectOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.composite = v}"
prim__setComposite : KeyframeEffectOptions -> UndefOr String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterationComposite"
prim__iterationComposite : KeyframeEffectOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
prim__setIterationComposite :
     KeyframeEffectOptions
  -> UndefOr String
  -> PrimIO ()



export
new' :
     (iterationComposite : Optional IterationCompositeOperation)
  -> (composite : Optional CompositeOperation)
  -> JSIO KeyframeEffectOptions
new' a b = primJS $ KeyframeEffectOptions.prim__new (toFFI a) (toFFI b)

export
new : JSIO KeyframeEffectOptions
new = primJS $ KeyframeEffectOptions.prim__new undef undef


export
composite :
     {auto _ : Cast t KeyframeEffectOptions}
  -> t
  -> Attribute False Optional CompositeOperation
composite v = fromUndefOrPrimNoDefault
                "KeyframeEffectOptions.getcomposite"
                prim__composite
                prim__setComposite
                (cast {to = KeyframeEffectOptions} v)


export
iterationComposite :
     {auto _ : Cast t KeyframeEffectOptions}
  -> t
  -> Attribute False Optional IterationCompositeOperation
iterationComposite v = fromUndefOrPrimNoDefault
                         "KeyframeEffectOptions.getiterationComposite"
                         prim__iterationComposite
                         prim__setIterationComposite
                         (cast {to = KeyframeEffectOptions} v)

