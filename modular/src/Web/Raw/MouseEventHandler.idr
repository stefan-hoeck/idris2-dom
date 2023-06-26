module Web.Raw.MouseEventHandler

import JS
import Web.Types.MouseEvent
import Web.Types.MouseEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toMouseEventHandler : (MouseEvent -> IO ()) -> PrimIO MouseEventHandler


export
toMouseEventHandler : (MouseEvent -> IO ()) -> JSIO MouseEventHandler
toMouseEventHandler cb = primJS $ prim__toMouseEventHandler cb

