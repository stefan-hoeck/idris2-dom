module Web.Internal.UIEventsPrim

import JS
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : CompositionEvent -> PrimIO String



namespace FocusEvent
  
  export
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : FocusEvent -> PrimIO (Nullable EventTarget)



namespace InputEvent
  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : InputEvent -> PrimIO (Nullable String)

  
  export
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : InputEvent -> PrimIO String

  
  export
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : InputEvent -> PrimIO Boolean



namespace KeyboardEvent
  
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



namespace MouseEvent
  
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



namespace UIEvent
  
  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : UIEvent -> PrimIO Int32

  
  export
  %foreign "browser:lambda:x=>x.view"
  prim__view : UIEvent -> PrimIO (Nullable Window)

  
  export
  %foreign "browser:lambda:x=>x.which"
  prim__which : UIEvent -> PrimIO Bits32



namespace WheelEvent
  
  export
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : WheelEvent -> PrimIO Bits32

  
  export
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : WheelEvent -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : WheelEvent -> PrimIO Double

  
  export
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : WheelEvent -> PrimIO Double





--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  export
  %foreign "browser:lambda:(a)=> ({data: a})"
  prim__new : UndefOr String -> PrimIO CompositionEventInit

  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : CompositionEventInit -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : CompositionEventInit -> UndefOr String -> PrimIO ()




namespace EventModifierInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g,h,i,j,k,l,m,n)=> ({ctrlKey: a,shiftKey: b,altKey: c,metaKey: d,modifierAltGraph: e,modifierCapsLock: f,modifierFn: g,modifierFnLock: h,modifierHyper: i,modifierNumLock: j,modifierScrollLock: k,modifierSuper: l,modifierSymbol: m,modifierSymbolLock: n})"
  prim__new :
       UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> PrimIO EventModifierInit

  
  export
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.altKey = v}"
  prim__setAltKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.ctrlKey = v}"
  prim__setCtrlKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.metaKey = v}"
  prim__setMetaKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierAltGraph"
  prim__modifierAltGraph : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierAltGraph = v}"
  prim__setModifierAltGraph : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierCapsLock"
  prim__modifierCapsLock : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierCapsLock = v}"
  prim__setModifierCapsLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierFn"
  prim__modifierFn : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierFn = v}"
  prim__setModifierFn : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierFnLock"
  prim__modifierFnLock : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierFnLock = v}"
  prim__setModifierFnLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierHyper"
  prim__modifierHyper : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierHyper = v}"
  prim__setModifierHyper : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierNumLock"
  prim__modifierNumLock : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierNumLock = v}"
  prim__setModifierNumLock : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierScrollLock"
  prim__modifierScrollLock : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierScrollLock = v}"
  prim__setModifierScrollLock :
       EventModifierInit
    -> UndefOr Boolean
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierSuper"
  prim__modifierSuper : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierSuper = v}"
  prim__setModifierSuper : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierSymbol"
  prim__modifierSymbol : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierSymbol = v}"
  prim__setModifierSymbol : EventModifierInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.modifierSymbolLock"
  prim__modifierSymbolLock : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock = v}"
  prim__setModifierSymbolLock :
       EventModifierInit
    -> UndefOr Boolean
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : EventModifierInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.shiftKey = v}"
  prim__setShiftKey : EventModifierInit -> UndefOr Boolean -> PrimIO ()




namespace FocusEventInit
  
  export
  %foreign "browser:lambda:(a)=> ({relatedTarget: a})"
  prim__new : UndefOr (Nullable EventTarget) -> PrimIO FocusEventInit

  
  export
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget :
       FocusEventInit
    -> PrimIO (UndefOr (Nullable EventTarget))


  
  export
  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget :
       FocusEventInit
    -> UndefOr (Nullable EventTarget)
    -> PrimIO ()




namespace InputEventInit
  
  export
  %foreign "browser:lambda:(a,b,c)=> ({data: a,isComposing: b,inputType: c})"
  prim__new :
       UndefOr (Nullable String)
    -> UndefOr Boolean
    -> UndefOr String
    -> PrimIO InputEventInit

  
  export
  %foreign "browser:lambda:x=>x.data"
  prim__data : InputEventInit -> PrimIO (UndefOr (Nullable String))


  
  export
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : InputEventInit -> UndefOr (Nullable String) -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : InputEventInit -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.inputType = v}"
  prim__setInputType : InputEventInit -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : InputEventInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : InputEventInit -> UndefOr Boolean -> PrimIO ()




namespace KeyboardEventInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e)=> ({key: a,code: b,location: c,repeat: d,isComposing: e})"
  prim__new :
       UndefOr String
    -> UndefOr String
    -> UndefOr Bits32
    -> UndefOr Boolean
    -> UndefOr Boolean
    -> PrimIO KeyboardEventInit

  
  export
  %foreign "browser:lambda:x=>x.code"
  prim__code : KeyboardEventInit -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : KeyboardEventInit -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : KeyboardEventInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : KeyboardEventInit -> UndefOr Boolean -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.key"
  prim__key : KeyboardEventInit -> PrimIO (UndefOr String)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : KeyboardEventInit -> UndefOr String -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.location"
  prim__location : KeyboardEventInit -> PrimIO (UndefOr Bits32)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.location = v}"
  prim__setLocation : KeyboardEventInit -> UndefOr Bits32 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : KeyboardEventInit -> PrimIO (UndefOr Boolean)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.repeat = v}"
  prim__setRepeat : KeyboardEventInit -> UndefOr Boolean -> PrimIO ()




namespace MouseEventInit
  
  export
  %foreign "browser:lambda:(a,b,c,d,e,f,g)=> ({button: a,buttons: b,relatedTarget: c,screenX: d,screenY: e,clientX: f,clientY: g})"
  prim__new :
       UndefOr Int16
    -> UndefOr Bits16
    -> UndefOr (Nullable EventTarget)
    -> UndefOr Double
    -> UndefOr Double
    -> UndefOr Double
    -> UndefOr Double
    -> PrimIO MouseEventInit

  
  export
  %foreign "browser:lambda:x=>x.button"
  prim__button : MouseEventInit -> PrimIO (UndefOr Int16)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.button = v}"
  prim__setButton : MouseEventInit -> UndefOr Int16 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : MouseEventInit -> PrimIO (UndefOr Bits16)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.buttons = v}"
  prim__setButtons : MouseEventInit -> UndefOr Bits16 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : MouseEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.clientX = v}"
  prim__setClientX : MouseEventInit -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : MouseEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.clientY = v}"
  prim__setClientY : MouseEventInit -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget :
       MouseEventInit
    -> PrimIO (UndefOr (Nullable EventTarget))


  
  export
  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget :
       MouseEventInit
    -> UndefOr (Nullable EventTarget)
    -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : MouseEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.screenX = v}"
  prim__setScreenX : MouseEventInit -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : MouseEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.screenY = v}"
  prim__setScreenY : MouseEventInit -> UndefOr Double -> PrimIO ()




namespace UIEventInit
  
  export
  %foreign "browser:lambda:(a,b)=> ({view: a,detail: b})"
  prim__new : UndefOr (Nullable Window) -> UndefOr Int32 -> PrimIO UIEventInit

  
  export
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : UIEventInit -> PrimIO (UndefOr Int32)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : UIEventInit -> UndefOr Int32 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.view"
  prim__view : UIEventInit -> PrimIO (UndefOr (Nullable Window))


  
  export
  %foreign "browser:lambda:(x,v)=>{x.view = v}"
  prim__setView : UIEventInit -> UndefOr (Nullable Window) -> PrimIO ()




namespace WheelEventInit
  
  export
  %foreign "browser:lambda:(a,b,c,d)=> ({deltaX: a,deltaY: b,deltaZ: c,deltaMode: d})"
  prim__new :
       UndefOr Double
    -> UndefOr Double
    -> UndefOr Double
    -> UndefOr Bits32
    -> PrimIO WheelEventInit

  
  export
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : WheelEventInit -> PrimIO (UndefOr Bits32)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.deltaMode = v}"
  prim__setDeltaMode : WheelEventInit -> UndefOr Bits32 -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : WheelEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.deltaX = v}"
  prim__setDeltaX : WheelEventInit -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : WheelEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.deltaY = v}"
  prim__setDeltaY : WheelEventInit -> UndefOr Double -> PrimIO ()


  
  export
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : WheelEventInit -> PrimIO (UndefOr Double)


  
  export
  %foreign "browser:lambda:(x,v)=>{x.deltaZ = v}"
  prim__setDeltaZ : WheelEventInit -> UndefOr Double -> PrimIO ()




