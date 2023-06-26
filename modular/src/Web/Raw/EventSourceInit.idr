module Web.Raw.EventSourceInit

import JS
import Web.Types.EventSourceInit


%default total


export
%foreign "browser:lambda:(a)=> ({withCredentials: a})"
prim__new : UndefOr Boolean -> PrimIO EventSourceInit


export
%foreign "browser:lambda:x=>x.withCredentials"
prim__withCredentials : EventSourceInit -> PrimIO (UndefOr Boolean)



export
%foreign "browser:lambda:(x,v)=>{x.withCredentials = v}"
prim__setWithCredentials : EventSourceInit -> UndefOr Boolean -> PrimIO ()



export
new' : (withCredentials : Optional Bool) -> JSIO EventSourceInit
new' a = primJS $ EventSourceInit.prim__new (toFFI a)

export
new : JSIO EventSourceInit
new = primJS $ EventSourceInit.prim__new undef


export
withCredentials :
     {auto _ : Cast t EventSourceInit}
  -> t
  -> Attribute True Optional Bool
withCredentials v = fromUndefOrPrim
                      "EventSourceInit.getwithCredentials"
                      prim__withCredentials
                      prim__setWithCredentials
                      False
                      (cast {to = EventSourceInit} v)
