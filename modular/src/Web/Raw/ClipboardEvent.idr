module Web.Raw.ClipboardEvent

import JS
import Web.Types.ClipboardEvent
import Web.Types.ClipboardEventInit
import Web.Types.DataTransfer
import Web.Types.Event


%default total


export
%foreign "browser:lambda:(a,b)=> new ClipboardEvent(a,b)"
prim__new : String -> UndefOr ClipboardEventInit -> PrimIO ClipboardEvent


export
%foreign "browser:lambda:x=>x.clipboardData"
prim__clipboardData : ClipboardEvent -> PrimIO (Nullable DataTransfer)


export
new' :
     {auto _ : Cast t2 ClipboardEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO ClipboardEvent
new' a b = primJS $ ClipboardEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO ClipboardEvent
new a = primJS $ ClipboardEvent.prim__new a undef


export
clipboardData : (obj : ClipboardEvent) -> JSIO (Maybe DataTransfer)
clipboardData a = tryJS "ClipboardEvent.clipboardData" $
  ClipboardEvent.prim__clipboardData a

