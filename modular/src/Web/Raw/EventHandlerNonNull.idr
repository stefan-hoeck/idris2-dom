module Web.Raw.EventHandlerNonNull

import JS
import Web.Types.Event
import Web.Types.EventHandlerNonNull


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toEventHandlerNonNull : (Event -> IO AnyPtr) -> PrimIO EventHandlerNonNull


export
toEventHandlerNonNull : (Event -> IO AnyPtr) -> JSIO EventHandlerNonNull
toEventHandlerNonNull cb = primJS $ prim__toEventHandlerNonNull cb
