module Web.Raw.KeyframeEffect

import JS
import Web.Types.AnimationEffect
import Web.Types.CSSPseudoElement
import Web.Types.CompositeOperation
import Web.Types.Element
import Web.Types.IterationCompositeOperation
import Web.Types.KeyframeEffect


%default total


export
%foreign "browser:lambda:x=>x.composite"
prim__composite : KeyframeEffect -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.composite = v}"
prim__setComposite : KeyframeEffect -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.iterationComposite"
prim__iterationComposite : KeyframeEffect -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.iterationComposite = v}"
prim__setIterationComposite : KeyframeEffect -> String -> PrimIO ()



export
%foreign "browser:lambda:x=>x.target"
prim__target :
     KeyframeEffect
  -> PrimIO (Nullable (Union2 Element CSSPseudoElement))



export
%foreign "browser:lambda:(x,v)=>{x.target = v}"
prim__setTarget :
     KeyframeEffect
  -> Nullable (Union2 Element CSSPseudoElement)
  -> PrimIO ()



export
%foreign "browser:lambda:x=>x.getKeyframes()"
prim__getKeyframes : KeyframeEffect -> PrimIO (Array Object)


export
%foreign "browser:lambda:(x,a)=>x.setKeyframes(a)"
prim__setKeyframes : KeyframeEffect -> Nullable Object -> PrimIO ()


export
composite : KeyframeEffect -> Attribute True Prelude.id CompositeOperation
composite v = fromPrim
                "KeyframeEffect.getcomposite"
                prim__composite
                prim__setComposite
                v


export
iterationComposite :
     KeyframeEffect
  -> Attribute True Prelude.id IterationCompositeOperation
iterationComposite v = fromPrim
                         "KeyframeEffect.getiterationComposite"
                         prim__iterationComposite
                         prim__setIterationComposite
                         v


export
target :
     KeyframeEffect
  -> Attribute False Maybe (HSum [Element, CSSPseudoElement])
target v = fromNullablePrim
             "KeyframeEffect.gettarget"
             prim__target
             prim__setTarget
             v


export
getKeyframes : (obj : KeyframeEffect) -> JSIO (Array Object)
getKeyframes a = primJS $ KeyframeEffect.prim__getKeyframes a


export
setKeyframes :
     {auto _ : Cast t2 Object}
  -> (obj : KeyframeEffect)
  -> (keyframes : Maybe t2)
  -> JSIO ()
setKeyframes a b = primJS $ KeyframeEffect.prim__setKeyframes a (mayUp b)
