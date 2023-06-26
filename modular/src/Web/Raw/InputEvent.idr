module Web.Raw.InputEvent

import JS
import Web.Types.Event
import Web.Types.InputEvent
import Web.Types.UIEvent


%default total


export
%foreign "browser:lambda:x=>x.data"
prim__data : InputEvent -> PrimIO (Nullable String)


export
%foreign "browser:lambda:x=>x.inputType"
prim__inputType : InputEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.isComposing"
prim__isComposing : InputEvent -> PrimIO Boolean


export
data_ : (obj : InputEvent) -> JSIO (Maybe String)
data_ a = tryJS "InputEvent.data_" $ InputEvent.prim__data a


export
inputType : (obj : InputEvent) -> JSIO String
inputType a = primJS $ InputEvent.prim__inputType a


export
isComposing : (obj : InputEvent) -> JSIO Bool
isComposing a = tryJS "InputEvent.isComposing" $ InputEvent.prim__isComposing a

