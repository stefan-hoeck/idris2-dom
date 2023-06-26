module Web.Raw.CompositionEvent

import JS
import Web.Types.CompositionEvent
import Web.Types.Event
import Web.Types.UIEvent


%default total


export
%foreign "browser:lambda:x=>x.data"
prim__data : CompositionEvent -> PrimIO String


export
data_ : (obj : CompositionEvent) -> JSIO String
data_ a = primJS $ CompositionEvent.prim__data a
