module Web.Raw.StructuredSerializeOptions

import JS
import Web.Types.StructuredSerializeOptions


%default total


export
%foreign "browser:lambda:(a)=> ({transfer: a})"
prim__new : UndefOr (Array Object) -> PrimIO StructuredSerializeOptions


export
%foreign "browser:lambda:x=>x.transfer"
prim__transfer : StructuredSerializeOptions -> PrimIO (UndefOr (Array Object))



export
%foreign "browser:lambda:(x,v)=>{x.transfer = v}"
prim__setTransfer :
     StructuredSerializeOptions
  -> UndefOr (Array Object)
  -> PrimIO ()



export
new' : (transfer : Optional (Array Object)) -> JSIO StructuredSerializeOptions
new' a = primJS $ StructuredSerializeOptions.prim__new (toFFI a)

export
new : JSIO StructuredSerializeOptions
new = primJS $ StructuredSerializeOptions.prim__new undef


export
transfer :
     {auto _ : Cast t StructuredSerializeOptions}
  -> t
  -> Attribute False Optional (Array Object)
transfer v = fromUndefOrPrimNoDefault
               "StructuredSerializeOptions.gettransfer"
               prim__transfer
               prim__setTransfer
               (cast {to = StructuredSerializeOptions} v)

