module Web.Raw.ShadowRootInit

import JS
import Web.Types.ShadowRootInit
import Web.Types.ShadowRootMode


%default total


export
%foreign "browser:lambda:(a,b)=> ({mode: a,delegatesFocus: b})"
prim__new : String -> UndefOr Boolean -> PrimIO ShadowRootInit


export
%foreign "browser:lambda:x=>x.delegatesFocus"
prim__delegatesFocus : ShadowRootInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.delegatesFocus = v}"
prim__setDelegatesFocus : ShadowRootInit -> UndefOr Boolean -> PrimIO ()



export
%foreign "browser:lambda:x=>x.mode"
prim__mode : ShadowRootInit -> PrimIO String



export
%foreign "browser:lambda:(x,v)=>{x.mode = v}"
prim__setMode : ShadowRootInit -> String -> PrimIO ()



export
new' :
     (mode : ShadowRootMode)
  -> (delegatesFocus : Optional Bool)
  -> JSIO ShadowRootInit
new' a b = primJS $ ShadowRootInit.prim__new (toFFI a) (toFFI b)

export
new : (mode : ShadowRootMode) -> JSIO ShadowRootInit
new a = primJS $ ShadowRootInit.prim__new (toFFI a) undef


export
delegatesFocus :
     {auto _ : Cast t ShadowRootInit}
  -> t
  -> Attribute True Optional Bool
delegatesFocus v = fromUndefOrPrim
                     "ShadowRootInit.getdelegatesFocus"
                     prim__delegatesFocus
                     prim__setDelegatesFocus
                     False
                     (cast {to = ShadowRootInit} v)


export
mode :
     {auto _ : Cast t ShadowRootInit}
  -> t
  -> Attribute True Prelude.id ShadowRootMode
mode v = fromPrim
           "ShadowRootInit.getmode"
           prim__mode
           prim__setMode
           (cast {to = ShadowRootInit} v)
