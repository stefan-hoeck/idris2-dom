module Web.Raw.CustomEventInit

import JS
import Web.Types.CustomEventInit
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a)=> ({detail: a})"
prim__new : UndefOr AnyPtr -> PrimIO CustomEventInit


export
%foreign "browser:lambda:x=>x.detail"
prim__detail : CustomEventInit -> PrimIO (UndefOr AnyPtr)



export
%foreign "browser:lambda:(x,v)=>{x.detail = v}"
prim__setDetail : CustomEventInit -> UndefOr AnyPtr -> PrimIO ()



export
new' : (detail : Optional Any) -> JSIO CustomEventInit
new' a = primJS $ CustomEventInit.prim__new (toFFI a)

export
new : JSIO CustomEventInit
new = primJS $ CustomEventInit.prim__new undef


export
detail : {auto _ : Cast t CustomEventInit} -> t -> Attribute True Optional Any
detail v = fromUndefOrPrim
             "CustomEventInit.getdetail"
             prim__detail
             prim__setDetail
             (MkAny $ null {a = ()})
             (cast {to = CustomEventInit} v)

