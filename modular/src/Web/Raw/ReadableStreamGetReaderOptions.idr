module Web.Raw.ReadableStreamGetReaderOptions

import JS
import Web.Types.ReadableStreamGetReaderOptions
import Web.Types.ReadableStreamReaderMode


%default total


export
%foreign "browser:lambda:(a)=> ({mode: a})"
prim__new : UndefOr String -> PrimIO ReadableStreamGetReaderOptions


export
%foreign "browser:lambda:x=>x.mode"
prim__mode : ReadableStreamGetReaderOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.mode = v}"
prim__setMode : ReadableStreamGetReaderOptions -> UndefOr String -> PrimIO ()



export
new' :
     (mode : Optional ReadableStreamReaderMode)
  -> JSIO ReadableStreamGetReaderOptions
new' a = primJS $ ReadableStreamGetReaderOptions.prim__new (toFFI a)

export
new : JSIO ReadableStreamGetReaderOptions
new = primJS $ ReadableStreamGetReaderOptions.prim__new undef


export
mode :
     {auto _ : Cast t ReadableStreamGetReaderOptions}
  -> t
  -> Attribute False Optional ReadableStreamReaderMode
mode v = fromUndefOrPrimNoDefault
           "ReadableStreamGetReaderOptions.getmode"
           prim__mode
           prim__setMode
           (cast {to = ReadableStreamGetReaderOptions} v)
