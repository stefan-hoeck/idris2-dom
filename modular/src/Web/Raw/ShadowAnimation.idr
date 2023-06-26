module Web.Raw.ShadowAnimation

import JS
import Web.Types.Animatable
import Web.Types.Animation
import Web.Types.EventTarget
import Web.Types.ShadowAnimation


%default total


export
%foreign "browser:lambda:(a,b)=> new ShadowAnimation(a,b)"
prim__new : Animation -> Animatable -> PrimIO ShadowAnimation


export
%foreign "browser:lambda:x=>x.sourceAnimation"
prim__sourceAnimation : ShadowAnimation -> PrimIO Animation


export
new :
     {auto _ : Cast t1 Animation}
  -> {auto _ : Cast t2 Animatable}
  -> (source : t1)
  -> (newTarget : t2)
  -> JSIO ShadowAnimation
new a b = primJS $ ShadowAnimation.prim__new (cast a) (cast b)


export
sourceAnimation : (obj : ShadowAnimation) -> JSIO Animation
sourceAnimation a = primJS $ ShadowAnimation.prim__sourceAnimation a
