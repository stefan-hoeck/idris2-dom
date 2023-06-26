module Web.Raw.DragEventInit

import JS
import Web.Types.DataTransfer
import Web.Types.DragEventInit
import Web.Types.EventInit
import Web.Types.EventModifierInit
import Web.Types.MouseEventInit
import Web.Types.UIEventInit


%default total


export
%foreign "browser:lambda:(a)=> ({dataTransfer: a})"
prim__new : UndefOr (Nullable DataTransfer) -> PrimIO DragEventInit


export
%foreign "browser:lambda:x=>x.dataTransfer"
prim__dataTransfer : DragEventInit -> PrimIO (UndefOr (Nullable DataTransfer))



export
%foreign "browser:lambda:(x,v)=>{x.dataTransfer = v}"
prim__setDataTransfer :
     DragEventInit
  -> UndefOr (Nullable DataTransfer)
  -> PrimIO ()



export
new' : (dataTransfer : Optional (Maybe DataTransfer)) -> JSIO DragEventInit
new' a = primJS $ DragEventInit.prim__new (toFFI a)

export
new : JSIO DragEventInit
new = primJS $ DragEventInit.prim__new undef


export
dataTransfer :
     {auto _ : Cast t DragEventInit}
  -> t
  -> Attribute True Optional (Maybe DataTransfer)
dataTransfer v = fromUndefOrPrim
                   "DragEventInit.getdataTransfer"
                   prim__dataTransfer
                   prim__setDataTransfer
                   Nothing
                   (cast {to = DragEventInit} v)

