module Web.Raw.KeyboardEventHandler

import JS
import Web.Types.KeyboardEvent
import Web.Types.KeyboardEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toKeyboardEventHandler :
     (KeyboardEvent -> IO ())
  -> PrimIO KeyboardEventHandler


export
toKeyboardEventHandler : (KeyboardEvent -> IO ()) -> JSIO KeyboardEventHandler
toKeyboardEventHandler cb = primJS $ prim__toKeyboardEventHandler cb

