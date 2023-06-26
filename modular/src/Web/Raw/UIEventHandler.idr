module Web.Raw.UIEventHandler

import JS
import Web.Types.UIEvent
import Web.Types.UIEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toUIEventHandler : (UIEvent -> IO ()) -> PrimIO UIEventHandler


export
toUIEventHandler : (UIEvent -> IO ()) -> JSIO UIEventHandler
toUIEventHandler cb = primJS $ prim__toUIEventHandler cb

