module Web.Raw.WindowPostMessageOptions

import JS
import Web.Types.PostMessageOptions
import Web.Types.WindowPostMessageOptions


%default total


export
%foreign "browser:lambda:(a)=> ({targetOrigin: a})"
prim__new : UndefOr String -> PrimIO WindowPostMessageOptions


export
%foreign "browser:lambda:x=>x.targetOrigin"
prim__targetOrigin : WindowPostMessageOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.targetOrigin = v}"
prim__setTargetOrigin : WindowPostMessageOptions -> UndefOr String -> PrimIO ()



export
new' : (targetOrigin : Optional String) -> JSIO WindowPostMessageOptions
new' a = primJS $ WindowPostMessageOptions.prim__new (toFFI a)

export
new : JSIO WindowPostMessageOptions
new = primJS $ WindowPostMessageOptions.prim__new undef


export
targetOrigin :
     {auto _ : Cast t WindowPostMessageOptions}
  -> t
  -> Attribute True Optional String
targetOrigin v = fromUndefOrPrim
                   "WindowPostMessageOptions.gettargetOrigin"
                   prim__targetOrigin
                   prim__setTargetOrigin
                   "/"
                   (cast {to = WindowPostMessageOptions} v)
