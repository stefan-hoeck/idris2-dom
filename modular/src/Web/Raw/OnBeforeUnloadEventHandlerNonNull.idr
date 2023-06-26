module Web.Raw.OnBeforeUnloadEventHandlerNonNull

import JS
import Web.Types.Event
import Web.Types.OnBeforeUnloadEventHandlerNonNull


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toOnBeforeUnloadEventHandlerNonNull :
     (Event -> IO (Nullable String))
  -> PrimIO OnBeforeUnloadEventHandlerNonNull


export
toOnBeforeUnloadEventHandlerNonNull :
     (Event -> IO (Nullable String))
  -> JSIO OnBeforeUnloadEventHandlerNonNull
toOnBeforeUnloadEventHandlerNonNull cb = primJS $ prim__toOnBeforeUnloadEventHandlerNonNull cb

