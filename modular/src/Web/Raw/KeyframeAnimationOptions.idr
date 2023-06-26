module Web.Raw.KeyframeAnimationOptions

import JS
import Web.Types.EffectTiming
import Web.Types.KeyframeAnimationOptions
import Web.Types.KeyframeEffectOptions


%default total


export
%foreign "browser:lambda:(a)=> ({id: a})"
prim__new : UndefOr String -> PrimIO KeyframeAnimationOptions


export
%foreign "browser:lambda:x=>x.id"
prim__id : KeyframeAnimationOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.id = v}"
prim__setId : KeyframeAnimationOptions -> UndefOr String -> PrimIO ()



export
new' : (id : Optional String) -> JSIO KeyframeAnimationOptions
new' a = primJS $ KeyframeAnimationOptions.prim__new (toFFI a)

export
new : JSIO KeyframeAnimationOptions
new = primJS $ KeyframeAnimationOptions.prim__new undef


export
id :
     {auto _ : Cast t KeyframeAnimationOptions}
  -> t
  -> Attribute True Optional String
id v = fromUndefOrPrim
         "KeyframeAnimationOptions.getid"
         prim__id
         prim__setId
         ""
         (cast {to = KeyframeAnimationOptions} v)
