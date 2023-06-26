module Web.Raw.PopStateEventInit

import JS
import Web.Types.EventInit
import Web.Types.PopStateEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({state: a})"
prim__new : UndefOr AnyPtr -> PrimIO PopStateEventInit


export
%foreign "browser:lambda:x=>x.state"
prim__state : PopStateEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.state = v}"
prim__setState : PopStateEventInit -> UndefOr AnyPtr -> PrimIO ()



export
new' : (state : Optional Any) -> JSIO PopStateEventInit
new' a = primJS $ PopStateEventInit.prim__new (toFFI a)

export
new : JSIO PopStateEventInit
new = primJS $ PopStateEventInit.prim__new undef


export
state : {auto _ : Cast t PopStateEventInit} -> t -> Attribute True Optional Any
state v = fromUndefOrPrim
            "PopStateEventInit.getstate"
            prim__state
            prim__setState
            (MkAny $ null {a = ()})
            (cast {to = PopStateEventInit} v)
