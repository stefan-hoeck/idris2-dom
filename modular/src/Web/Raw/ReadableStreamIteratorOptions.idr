module Web.Raw.ReadableStreamIteratorOptions

import JS
import Web.Types.ReadableStreamIteratorOptions


%default total


export
%foreign "browser:lambda:(a)=> ({preventCancel: a})"
prim__new : UndefOr Boolean -> PrimIO ReadableStreamIteratorOptions


export
%foreign "browser:lambda:x=>x.preventCancel"
prim__preventCancel : ReadableStreamIteratorOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.preventCancel = v}"
prim__setPreventCancel :
     ReadableStreamIteratorOptions
  -> UndefOr Boolean
  -> PrimIO ()



export
new' : (preventCancel : Optional Bool) -> JSIO ReadableStreamIteratorOptions
new' a = primJS $ ReadableStreamIteratorOptions.prim__new (toFFI a)

export
new : JSIO ReadableStreamIteratorOptions
new = primJS $ ReadableStreamIteratorOptions.prim__new undef


export
preventCancel :
     {auto _ : Cast t ReadableStreamIteratorOptions}
  -> t
  -> Attribute True Optional Bool
preventCancel v = fromUndefOrPrim
                    "ReadableStreamIteratorOptions.getpreventCancel"
                    prim__preventCancel
                    prim__setPreventCancel
                    False
                    (cast {to = ReadableStreamIteratorOptions} v)

