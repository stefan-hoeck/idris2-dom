module Web.Raw.Animatable

import JS
import Web.Types.Animatable
import Web.Types.Animation
import Web.Types.KeyframeAnimationOptions


%default total


export
%foreign "browser:lambda:(x,a,b)=>x.animate(a,b)"
prim__animate :
     Animatable
  -> Nullable Object
  -> UndefOr (Union2 Double KeyframeAnimationOptions)
  -> PrimIO Animation


export
%foreign "browser:lambda:x=>x.getAnimations()"
prim__getAnimations : Animatable -> PrimIO (Array Animation)


export
animate' :
     {auto _ : Cast t1 Animatable}
  -> {auto _ : Cast t2 Object}
  -> (obj : t1)
  -> (keyframes : Maybe t2)
  -> (options : Optional (HSum [Double, KeyframeAnimationOptions]))
  -> JSIO Animation
animate' a b c = primJS $ Animatable.prim__animate (cast a) (mayUp b) (toFFI c)

export
animate :
     {auto _ : Cast t1 Animatable}
  -> {auto _ : Cast t2 Object}
  -> (obj : t1)
  -> (keyframes : Maybe t2)
  -> JSIO Animation
animate a b = primJS $ Animatable.prim__animate (cast a) (mayUp b) undef


export
getAnimations :
     {auto _ : Cast t1 Animatable}
  -> (obj : t1)
  -> JSIO (Array Animation)
getAnimations a = primJS $ Animatable.prim__getAnimations (cast a)
