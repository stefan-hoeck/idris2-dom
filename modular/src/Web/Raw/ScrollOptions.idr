module Web.Raw.ScrollOptions

import JS
import Web.Types.ScrollBehavior
import Web.Types.ScrollOptions


%default total


export
%foreign "browser:lambda:(a)=> ({behavior: a})"
prim__new : UndefOr String -> PrimIO ScrollOptions


export
%foreign "browser:lambda:x=>x.behavior"
prim__behavior : ScrollOptions -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.behavior = v}"
prim__setBehavior : ScrollOptions -> UndefOr String -> PrimIO ()



export
new' : (behavior : Optional ScrollBehavior) -> JSIO ScrollOptions
new' a = primJS $ ScrollOptions.prim__new (toFFI a)

export
new : JSIO ScrollOptions
new = primJS $ ScrollOptions.prim__new undef


export
behavior :
     {auto _ : Cast t ScrollOptions}
  -> t
  -> Attribute False Optional ScrollBehavior
behavior v = fromUndefOrPrimNoDefault
               "ScrollOptions.getbehavior"
               prim__behavior
               prim__setBehavior
               (cast {to = ScrollOptions} v)

