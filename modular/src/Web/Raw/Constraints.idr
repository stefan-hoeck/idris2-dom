module Web.Raw.Constraints

import JS
import Web.Types.ConstraintSet
import Web.Types.Constraints


%default total


export
%foreign "browser:lambda:(a)=> ({advanced: a})"
prim__new : UndefOr (Array ConstraintSet) -> PrimIO Constraints


export
%foreign "browser:lambda:x=>x.advanced"
prim__advanced : Constraints -> PrimIO (UndefOr (Array ConstraintSet))



export
%foreign "browser:lambda:(x,v)=>{x.advanced = v}"
prim__setAdvanced : Constraints -> UndefOr (Array ConstraintSet) -> PrimIO ()



export
new' : (advanced : Optional (Array ConstraintSet)) -> JSIO Constraints
new' a = primJS $ Constraints.prim__new (toFFI a)

export
new : JSIO Constraints
new = primJS $ Constraints.prim__new undef


export
advanced :
     {auto _ : Cast t Constraints}
  -> t
  -> Attribute False Optional (Array ConstraintSet)
advanced v = fromUndefOrPrimNoDefault
               "Constraints.getadvanced"
               prim__advanced
               prim__setAdvanced
               (cast {to = Constraints} v)

