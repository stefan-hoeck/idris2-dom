module Web.Raw.EventListener

import JS
import Web.Types.Event
import Web.Types.EventListener


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toEventListener : (Event -> IO ()) -> PrimIO EventListener


export
toEventListener : (Event -> IO ()) -> JSIO EventListener
toEventListener cb = primJS $ prim__toEventListener cb
