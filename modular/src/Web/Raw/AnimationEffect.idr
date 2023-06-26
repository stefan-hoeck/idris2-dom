module Web.Raw.AnimationEffect

import JS
import Web.Types.AnimationEffect
import Web.Types.ComputedEffectTiming
import Web.Types.EffectTiming
import Web.Types.OptionalEffectTiming


%default total


export
%foreign "browser:lambda:x=>x.getComputedTiming()"
prim__getComputedTiming : AnimationEffect -> PrimIO ComputedEffectTiming


export
%foreign "browser:lambda:x=>x.getTiming()"
prim__getTiming : AnimationEffect -> PrimIO EffectTiming


export
%foreign "browser:lambda:(x,a)=>x.updateTiming(a)"
prim__updateTiming :
     AnimationEffect
  -> UndefOr OptionalEffectTiming
  -> PrimIO ()


export
getComputedTiming :
     {auto _ : Cast t1 AnimationEffect}
  -> (obj : t1)
  -> JSIO ComputedEffectTiming
getComputedTiming a = primJS $ AnimationEffect.prim__getComputedTiming (cast a)


export
getTiming :
     {auto _ : Cast t1 AnimationEffect}
  -> (obj : t1)
  -> JSIO EffectTiming
getTiming a = primJS $ AnimationEffect.prim__getTiming (cast a)


export
updateTiming' :
     {auto _ : Cast t1 AnimationEffect}
  -> {auto _ : Cast t2 OptionalEffectTiming}
  -> (obj : t1)
  -> (timing : Optional t2)
  -> JSIO ()
updateTiming' a b = primJS $
  AnimationEffect.prim__updateTiming (cast a) (optUp b)

export
updateTiming : {auto _ : Cast t1 AnimationEffect} -> (obj : t1) -> JSIO ()
updateTiming a = primJS $ AnimationEffect.prim__updateTiming (cast a) undef

