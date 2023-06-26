module Web.Raw.UIEventInit

import JS
import Web.Types.EventInit
import Web.Types.UIEventInit
import Web.Types.Window


%default total


export
%foreign "browser:lambda:(a,b)=> ({view: a,detail: b})"
prim__new : UndefOr (Nullable Window) -> UndefOr Int32 -> PrimIO UIEventInit


export
%foreign "browser:lambda:x=>x.detail"
prim__detail : UIEventInit -> PrimIO (UndefOr Int32)



export
%foreign "browser:lambda:(x,v)=>{x.detail = v}"
prim__setDetail : UIEventInit -> UndefOr Int32 -> PrimIO ()



export
%foreign "browser:lambda:x=>x.view"
prim__view : UIEventInit -> PrimIO (UndefOr (Nullable Window))



export
%foreign "browser:lambda:(x,v)=>{x.view = v}"
prim__setView : UIEventInit -> UndefOr (Nullable Window) -> PrimIO ()



export
new' :
     (view : Optional (Maybe Window))
  -> (detail : Optional Int32)
  -> JSIO UIEventInit
new' a b = primJS $ UIEventInit.prim__new (toFFI a) (toFFI b)

export
new : JSIO UIEventInit
new = primJS $ UIEventInit.prim__new undef undef


export
detail : {auto _ : Cast t UIEventInit} -> t -> Attribute True Optional Int32
detail v = fromUndefOrPrim
             "UIEventInit.getdetail"
             prim__detail
             prim__setDetail
             0
             (cast {to = UIEventInit} v)


export
view :
     {auto _ : Cast t UIEventInit}
  -> t
  -> Attribute True Optional (Maybe Window)
view v = fromUndefOrPrim
           "UIEventInit.getview"
           prim__view
           prim__setView
           Nothing
           (cast {to = UIEventInit} v)

