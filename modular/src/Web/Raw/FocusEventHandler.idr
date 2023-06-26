module Web.Raw.FocusEventHandler

import JS
import Web.Types.FocusEvent
import Web.Types.FocusEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toFocusEventHandler : (FocusEvent -> IO ()) -> PrimIO FocusEventHandler


export
toFocusEventHandler : (FocusEvent -> IO ()) -> JSIO FocusEventHandler
toFocusEventHandler cb = primJS $ prim__toFocusEventHandler cb
