module Web.Raw.ClipboardEventInit

import JS
import Web.Types.ClipboardEventInit
import Web.Types.DataTransfer
import Web.Types.EventInit


%default total


export
%foreign "browser:lambda:(a)=> ({clipboardData: a})"
prim__new : UndefOr (Nullable DataTransfer) -> PrimIO ClipboardEventInit


export
%foreign "browser:lambda:x=>x.clipboardData"
prim__clipboardData :
     ClipboardEventInit
  -> PrimIO (UndefOr (Nullable DataTransfer))



export
%foreign "browser:lambda:(x,v)=>{x.clipboardData = v}"
prim__setClipboardData :
     ClipboardEventInit
  -> UndefOr (Nullable DataTransfer)
  -> PrimIO ()



export
new' :
     (clipboardData : Optional (Maybe DataTransfer))
  -> JSIO ClipboardEventInit
new' a = primJS $ ClipboardEventInit.prim__new (toFFI a)

export
new : JSIO ClipboardEventInit
new = primJS $ ClipboardEventInit.prim__new undef


export
clipboardData :
     {auto _ : Cast t ClipboardEventInit}
  -> t
  -> Attribute True Optional (Maybe DataTransfer)
clipboardData v = fromUndefOrPrim
                    "ClipboardEventInit.getclipboardData"
                    prim__clipboardData
                    prim__setClipboardData
                    Nothing
                    (cast {to = ClipboardEventInit} v)

