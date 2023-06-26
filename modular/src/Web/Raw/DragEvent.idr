module Web.Raw.DragEvent

import JS
import Web.Types.DataTransfer
import Web.Types.DragEvent
import Web.Types.DragEventInit
import Web.Types.Event
import Web.Types.MouseEvent
import Web.Types.UIEvent


%default total


export
%foreign "browser:lambda:(a,b)=> new DragEvent(a,b)"
prim__new : String -> UndefOr DragEventInit -> PrimIO DragEvent


export
%foreign "browser:lambda:x=>x.dataTransfer"
prim__dataTransfer : DragEvent -> PrimIO (Nullable DataTransfer)


export
new' :
     {auto _ : Cast t2 DragEventInit}
  -> (type : String)
  -> (eventInitDict : Optional t2)
  -> JSIO DragEvent
new' a b = primJS $ DragEvent.prim__new a (optUp b)

export
new : (type : String) -> JSIO DragEvent
new a = primJS $ DragEvent.prim__new a undef


export
dataTransfer : (obj : DragEvent) -> JSIO (Maybe DataTransfer)
dataTransfer a = tryJS "DragEvent.dataTransfer" $ DragEvent.prim__dataTransfer a
