module Web.Raw.AssignedNodesOptions

import JS
import Web.Types.AssignedNodesOptions


%default total


export
%foreign "browser:lambda:(a)=> ({flatten: a})"
prim__new : UndefOr Boolean -> PrimIO AssignedNodesOptions


export
%foreign "browser:lambda:x=>x.flatten"
prim__flatten : AssignedNodesOptions -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.flatten = v}"
prim__setFlatten : AssignedNodesOptions -> UndefOr Boolean -> PrimIO ()



export
new' : (flatten : Optional Bool) -> JSIO AssignedNodesOptions
new' a = primJS $ AssignedNodesOptions.prim__new (toFFI a)

export
new : JSIO AssignedNodesOptions
new = primJS $ AssignedNodesOptions.prim__new undef


export
flatten :
     {auto _ : Cast t AssignedNodesOptions}
  -> t
  -> Attribute True Optional Bool
flatten v = fromUndefOrPrim
              "AssignedNodesOptions.getflatten"
              prim__flatten
              prim__setFlatten
              False
              (cast {to = AssignedNodesOptions} v)
