module Web.Raw.InputEventHandler

import JS
import Web.Types.InputEvent
import Web.Types.InputEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toInputEventHandler : (InputEvent -> IO ()) -> PrimIO InputEventHandler


export
toInputEventHandler : (InputEvent -> IO ()) -> JSIO InputEventHandler
toInputEventHandler cb = primJS $ prim__toInputEventHandler cb

