module Web.Raw.ElementCreationOptions

import JS
import Web.Types.ElementCreationOptions


%default total


export
%foreign "browser:lambda:(a)=> ({is: a})"
prim__new : UndefOr String -> PrimIO ElementCreationOptions


export
%foreign "browser:lambda:x=>x.is"
prim__is : ElementCreationOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.is = v}"
prim__setIs : ElementCreationOptions -> UndefOr String -> PrimIO ()



export
new' : (is : Optional String) -> JSIO ElementCreationOptions
new' a = primJS $ ElementCreationOptions.prim__new (toFFI a)

export
new : JSIO ElementCreationOptions
new = primJS $ ElementCreationOptions.prim__new undef


export
is :
     {auto _ : Cast t ElementCreationOptions}
  -> t
  -> Attribute False Optional String
is v = fromUndefOrPrimNoDefault
         "ElementCreationOptions.getis"
         prim__is
         prim__setIs
         (cast {to = ElementCreationOptions} v)
