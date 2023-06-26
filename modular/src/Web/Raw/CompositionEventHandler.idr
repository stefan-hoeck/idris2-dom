module Web.Raw.CompositionEventHandler

import JS
import Web.Types.CompositionEvent
import Web.Types.CompositionEventHandler


%default total


export
%foreign "browser:lambda:x=>(a)=>x(a)()"
prim__toCompositionEventHandler :
     (CompositionEvent -> IO ())
  -> PrimIO CompositionEventHandler


export
toCompositionEventHandler :
     (CompositionEvent -> IO ())
  -> JSIO CompositionEventHandler
toCompositionEventHandler cb = primJS $ prim__toCompositionEventHandler cb
