module Web.Raw.CompositionEventInit

import JS
import Web.Types.CompositionEventInit
import Web.Types.EventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({data: a})"
prim__new : UndefOr String -> PrimIO CompositionEventInit


export
%foreign "browser:lambda:x=>x.data"
prim__data : CompositionEventInit -> PrimIO (UndefOr String)



export
%foreign "browser:lambda:(x,v)=>{x.data = v}"
prim__setData : CompositionEventInit -> UndefOr String -> PrimIO ()



export
new' : (data_ : Optional String) -> JSIO CompositionEventInit
new' a = primJS $ CompositionEventInit.prim__new (toFFI a)

export
new : JSIO CompositionEventInit
new = primJS $ CompositionEventInit.prim__new undef


export
data_ :
     {auto _ : Cast t CompositionEventInit}
  -> t
  -> Attribute True Optional String
data_ v = fromUndefOrPrim
            "CompositionEventInit.getdata"
            prim__data
            prim__setData
            ""
            (cast {to = CompositionEventInit} v)

