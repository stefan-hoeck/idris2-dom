module Web.Raw.WorkletOptions

import JS
import Web.Types.RequestCredentials
import Web.Types.WorkletOptions


%default total


export
%foreign "browser:lambda:(a)=> ({credentials: a})"
prim__new : UndefOr String -> PrimIO WorkletOptions


export
%foreign "browser:lambda:x=>x.credentials"
prim__credentials : WorkletOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.credentials = v}"
prim__setCredentials : WorkletOptions -> UndefOr String -> PrimIO ()



export
new' : (credentials : Optional RequestCredentials) -> JSIO WorkletOptions
new' a = primJS $ WorkletOptions.prim__new (toFFI a)

export
new : JSIO WorkletOptions
new = primJS $ WorkletOptions.prim__new undef


export
credentials :
     {auto _ : Cast t WorkletOptions}
  -> t
  -> Attribute False Optional RequestCredentials
credentials v = fromUndefOrPrimNoDefault
                  "WorkletOptions.getcredentials"
                  prim__credentials
                  prim__setCredentials
                  (cast {to = WorkletOptions} v)

