module Web.Raw.PostMessageOptions

import JS
import Web.Types.PostMessageOptions


%default total


export
%foreign "browser:lambda:(a)=> ({transfer: a})"
prim__new : UndefOr (Array Object) -> PrimIO PostMessageOptions


export
%foreign "browser:lambda:x=>x.transfer"
prim__transfer : PostMessageOptions -> PrimIO (UndefOr (Array Object))



export
%foreign "browser:lambda:(x,v)=>{x.transfer = v}"
prim__setTransfer : PostMessageOptions -> UndefOr (Array Object) -> PrimIO ()



export
new' : (transfer : Optional (Array Object)) -> JSIO PostMessageOptions
new' a = primJS $ PostMessageOptions.prim__new (toFFI a)

export
new : JSIO PostMessageOptions
new = primJS $ PostMessageOptions.prim__new undef


export
transfer :
     {auto _ : Cast t PostMessageOptions}
  -> t
  -> Attribute False Optional (Array Object)
transfer v = fromUndefOrPrimNoDefault
               "PostMessageOptions.gettransfer"
               prim__transfer
               prim__setTransfer
               (cast {to = PostMessageOptions} v)

