module Web.Raw.KeyboardEvent

import JS
import Web.Types.Event
import Web.Types.KeyboardEvent
import Web.Types.UIEvent


%default total


export
DOM_KEY_LOCATION_LEFT : Bits32
DOM_KEY_LOCATION_LEFT = 0x1


export
DOM_KEY_LOCATION_NUMPAD : Bits32
DOM_KEY_LOCATION_NUMPAD = 0x3


export
DOM_KEY_LOCATION_RIGHT : Bits32
DOM_KEY_LOCATION_RIGHT = 0x2


export
DOM_KEY_LOCATION_STANDARD : Bits32
DOM_KEY_LOCATION_STANDARD = 0x0


export
%foreign "browser:lambda:x=>x.altKey"
prim__altKey : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.charCode"
prim__charCode : KeyboardEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.code"
prim__code : KeyboardEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.ctrlKey"
prim__ctrlKey : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.isComposing"
prim__isComposing : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.key"
prim__key : KeyboardEvent -> PrimIO String


export
%foreign "browser:lambda:x=>x.keyCode"
prim__keyCode : KeyboardEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.location"
prim__location : KeyboardEvent -> PrimIO Bits32


export
%foreign "browser:lambda:x=>x.metaKey"
prim__metaKey : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.repeat"
prim__repeat : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.shiftKey"
prim__shiftKey : KeyboardEvent -> PrimIO Boolean


export
%foreign "browser:lambda:(x,a)=>x.getModifierState(a)"
prim__getModifierState : KeyboardEvent -> String -> PrimIO Boolean


export
altKey : (obj : KeyboardEvent) -> JSIO Bool
altKey a = tryJS "KeyboardEvent.altKey" $ KeyboardEvent.prim__altKey a


export
charCode : (obj : KeyboardEvent) -> JSIO Bits32
charCode a = primJS $ KeyboardEvent.prim__charCode a


export
code : (obj : KeyboardEvent) -> JSIO String
code a = primJS $ KeyboardEvent.prim__code a


export
ctrlKey : (obj : KeyboardEvent) -> JSIO Bool
ctrlKey a = tryJS "KeyboardEvent.ctrlKey" $ KeyboardEvent.prim__ctrlKey a


export
isComposing : (obj : KeyboardEvent) -> JSIO Bool
isComposing a = tryJS "KeyboardEvent.isComposing" $
  KeyboardEvent.prim__isComposing a


export
key : (obj : KeyboardEvent) -> JSIO String
key a = primJS $ KeyboardEvent.prim__key a


export
keyCode : (obj : KeyboardEvent) -> JSIO Bits32
keyCode a = primJS $ KeyboardEvent.prim__keyCode a


export
location : (obj : KeyboardEvent) -> JSIO Bits32
location a = primJS $ KeyboardEvent.prim__location a


export
metaKey : (obj : KeyboardEvent) -> JSIO Bool
metaKey a = tryJS "KeyboardEvent.metaKey" $ KeyboardEvent.prim__metaKey a


export
repeat : (obj : KeyboardEvent) -> JSIO Bool
repeat a = tryJS "KeyboardEvent.repeat" $ KeyboardEvent.prim__repeat a


export
shiftKey : (obj : KeyboardEvent) -> JSIO Bool
shiftKey a = tryJS "KeyboardEvent.shiftKey" $ KeyboardEvent.prim__shiftKey a


export
getModifierState : (obj : KeyboardEvent) -> (keyArg : String) -> JSIO Bool
getModifierState a b = tryJS "KeyboardEvent.getModifierState" $
  KeyboardEvent.prim__getModifierState a b
