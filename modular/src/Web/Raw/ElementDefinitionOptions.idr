module Web.Raw.ElementDefinitionOptions

import JS
import Web.Types.ElementDefinitionOptions


%default total


export
%foreign "browser:lambda:(a)=> ({extends: a})"
prim__new : UndefOr String -> PrimIO ElementDefinitionOptions


export
%foreign "browser:lambda:x=>x.extends"
prim__extends : ElementDefinitionOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.extends = v}"
prim__setExtends : ElementDefinitionOptions -> UndefOr String -> PrimIO ()



export
new' : (extends : Optional String) -> JSIO ElementDefinitionOptions
new' a = primJS $ ElementDefinitionOptions.prim__new (toFFI a)

export
new : JSIO ElementDefinitionOptions
new = primJS $ ElementDefinitionOptions.prim__new undef


export
extends :
     {auto _ : Cast t ElementDefinitionOptions}
  -> t
  -> Attribute False Optional String
extends v = fromUndefOrPrimNoDefault
              "ElementDefinitionOptions.getextends"
              prim__extends
              prim__setExtends
              (cast {to = ElementDefinitionOptions} v)
