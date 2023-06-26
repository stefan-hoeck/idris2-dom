module Web.Raw.GetRootNodeOptions

import JS
import Web.Types.GetRootNodeOptions


%default total


export
%foreign "browser:lambda:(a)=> ({composed: a})"
prim__new : UndefOr Boolean -> PrimIO GetRootNodeOptions


export
%foreign "browser:lambda:x=>x.composed"
prim__composed : GetRootNodeOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.composed = v}"
prim__setComposed : GetRootNodeOptions -> UndefOr Boolean -> PrimIO ()



export
new' : (composed : Optional Bool) -> JSIO GetRootNodeOptions
new' a = primJS $ GetRootNodeOptions.prim__new (toFFI a)

export
new : JSIO GetRootNodeOptions
new = primJS $ GetRootNodeOptions.prim__new undef


export
composed :
     {auto _ : Cast t GetRootNodeOptions}
  -> t
  -> Attribute True Optional Bool
composed v = fromUndefOrPrim
               "GetRootNodeOptions.getcomposed"
               prim__composed
               prim__setComposed
               False
               (cast {to = GetRootNodeOptions} v)
