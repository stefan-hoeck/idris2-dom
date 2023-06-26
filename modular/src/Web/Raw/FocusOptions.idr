module Web.Raw.FocusOptions

import JS
import Web.Types.FocusOptions


%default total


export
%foreign "browser:lambda:(a)=> ({preventScroll: a})"
prim__new : UndefOr Boolean -> PrimIO FocusOptions


export
%foreign "browser:lambda:x=>x.preventScroll"
prim__preventScroll : FocusOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preventScroll = v}"
prim__setPreventScroll : FocusOptions -> UndefOr Boolean -> PrimIO ()



export
new' : (preventScroll : Optional Bool) -> JSIO FocusOptions
new' a = primJS $ FocusOptions.prim__new (toFFI a)

export
new : JSIO FocusOptions
new = primJS $ FocusOptions.prim__new undef


export
preventScroll :
     {auto _ : Cast t FocusOptions}
  -> t
  -> Attribute True Optional Bool
preventScroll v = fromUndefOrPrim
                    "FocusOptions.getpreventScroll"
                    prim__preventScroll
                    prim__setPreventScroll
                    False
                    (cast {to = FocusOptions} v)
