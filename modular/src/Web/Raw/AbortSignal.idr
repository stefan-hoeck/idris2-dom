module Web.Raw.AbortSignal

import JS
import Web.Types.AbortSignal
import Web.Types.EventHandlerNonNull
import Web.Types.EventTarget


%default total


export
%foreign "browser:lambda:x=>x.abort()"
prim__abort : PrimIO AbortSignal


export
%foreign "browser:lambda:x=>x.aborted"
prim__aborted : AbortSignal -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.onabort"
prim__onabort : AbortSignal -> PrimIO (Nullable EventHandlerNonNull)



export
%foreign "browser:lambda:(x,v)=>{x.onabort = v}"
prim__setOnabort : AbortSignal -> Nullable EventHandlerNonNull -> PrimIO ()



export
abort : JSIO AbortSignal
abort = primJS $ AbortSignal.prim__abort


export
aborted : (obj : AbortSignal) -> JSIO Bool
aborted a = tryJS "AbortSignal.aborted" $ AbortSignal.prim__aborted a


export
onabort : AbortSignal -> Attribute False Maybe EventHandlerNonNull
onabort v = fromNullablePrim
              "AbortSignal.getonabort"
              prim__onabort
              prim__setOnabort
              v
