module Web.Raw.PageTransitionEventInit

import JS
import Web.Types.EventInit
import Web.Types.PageTransitionEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({persisted: a})"
prim__new : UndefOr Boolean -> PrimIO PageTransitionEventInit


export
%foreign "browser:lambda:x=>x.persisted"
prim__persisted : PageTransitionEventInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.persisted = v}"
prim__setPersisted : PageTransitionEventInit -> UndefOr Boolean -> PrimIO ()



export
new' : (persisted : Optional Bool) -> JSIO PageTransitionEventInit
new' a = primJS $ PageTransitionEventInit.prim__new (toFFI a)

export
new : JSIO PageTransitionEventInit
new = primJS $ PageTransitionEventInit.prim__new undef


export
persisted :
     {auto _ : Cast t PageTransitionEventInit}
  -> t
  -> Attribute True Optional Bool
persisted v = fromUndefOrPrim
                "PageTransitionEventInit.getpersisted"
                prim__persisted
                prim__setPersisted
                False
                (cast {to = PageTransitionEventInit} v)

