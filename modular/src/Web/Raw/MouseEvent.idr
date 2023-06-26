module Web.Raw.MouseEvent

import JS
import Web.Types.Event
import Web.Types.EventTarget
import Web.Types.MouseEvent
import Web.Types.UIEvent


%default total


export
%foreign "browser:lambda:x=>x.altKey"
prim__altKey : MouseEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.button"
prim__button : MouseEvent -> PrimIO Int16


export
%foreign "browser:lambda:x=>x.buttons"
prim__buttons : MouseEvent -> PrimIO Bits16


export
%foreign "browser:lambda:x=>x.clientX"
prim__clientX : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.clientY"
prim__clientY : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.ctrlKey"
prim__ctrlKey : MouseEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.metaKey"
prim__metaKey : MouseEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.offsetX"
prim__offsetX : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.offsetY"
prim__offsetY : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.pageX"
prim__pageX : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.pageY"
prim__pageY : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.relatedTarget"
prim__relatedTarget : MouseEvent -> PrimIO (Nullable EventTarget)


export
%foreign "browser:lambda:x=>x.screenX"
prim__screenX : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.screenY"
prim__screenY : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.shiftKey"
prim__shiftKey : MouseEvent -> PrimIO Boolean


export
%foreign "browser:lambda:x=>x.x"
prim__x : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:x=>x.y"
prim__y : MouseEvent -> PrimIO Double


export
%foreign "browser:lambda:(x,a)=>x.getModifierState(a)"
prim__getModifierState : MouseEvent -> String -> PrimIO Boolean


export
altKey : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Bool
altKey a = tryJS "MouseEvent.altKey" $ MouseEvent.prim__altKey (cast a)


export
button : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Int16
button a = primJS $ MouseEvent.prim__button (cast a)


export
buttons : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Bits16
buttons a = primJS $ MouseEvent.prim__buttons (cast a)


export
clientX : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
clientX a = primJS $ MouseEvent.prim__clientX (cast a)


export
clientY : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
clientY a = primJS $ MouseEvent.prim__clientY (cast a)


export
ctrlKey : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Bool
ctrlKey a = tryJS "MouseEvent.ctrlKey" $ MouseEvent.prim__ctrlKey (cast a)


export
metaKey : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Bool
metaKey a = tryJS "MouseEvent.metaKey" $ MouseEvent.prim__metaKey (cast a)


export
offsetX : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
offsetX a = primJS $ MouseEvent.prim__offsetX (cast a)


export
offsetY : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
offsetY a = primJS $ MouseEvent.prim__offsetY (cast a)


export
pageX : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
pageX a = primJS $ MouseEvent.prim__pageX (cast a)


export
pageY : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
pageY a = primJS $ MouseEvent.prim__pageY (cast a)


export
relatedTarget :
     {auto _ : Cast t1 MouseEvent}
  -> (obj : t1)
  -> JSIO (Maybe EventTarget)
relatedTarget a = tryJS "MouseEvent.relatedTarget" $
  MouseEvent.prim__relatedTarget (cast a)


export
screenX : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
screenX a = primJS $ MouseEvent.prim__screenX (cast a)


export
screenY : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
screenY a = primJS $ MouseEvent.prim__screenY (cast a)


export
shiftKey : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Bool
shiftKey a = tryJS "MouseEvent.shiftKey" $ MouseEvent.prim__shiftKey (cast a)


export
x : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
x a = primJS $ MouseEvent.prim__x (cast a)


export
y : {auto _ : Cast t1 MouseEvent} -> (obj : t1) -> JSIO Double
y a = primJS $ MouseEvent.prim__y (cast a)


export
getModifierState :
     {auto _ : Cast t1 MouseEvent}
  -> (obj : t1)
  -> (keyArg : String)
  -> JSIO Bool
getModifierState a b = tryJS "MouseEvent.getModifierState" $
  MouseEvent.prim__getModifierState (cast a) b

