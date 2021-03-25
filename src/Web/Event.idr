module Web.Event

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

namespace FocusEvent
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

namespace InputEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

namespace KeyboardEvent
  
  public export
  DOM_KEY_LOCATION_LEFT : UInt32
  DOM_KEY_LOCATION_LEFT = 0x1
  
  public export
  DOM_KEY_LOCATION_NUMPAD : UInt32
  DOM_KEY_LOCATION_NUMPAD = 0x3
  
  public export
  DOM_KEY_LOCATION_RIGHT : UInt32
  DOM_KEY_LOCATION_RIGHT = 0x2
  
  public export
  DOM_KEY_LOCATION_STANDARD : UInt32
  DOM_KEY_LOCATION_STANDARD = 0x0
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

namespace MouseEvent
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

namespace UIEvent
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.which"
  prim__which : AnyPtr -> PrimIO AnyPtr

namespace WheelEvent
  
  public export
  DOM_DELTA_LINE : UInt32
  DOM_DELTA_LINE = 0x1
  
  public export
  DOM_DELTA_PAGE : UInt32
  DOM_DELTA_PAGE = 0x2
  
  public export
  DOM_DELTA_PIXEL : UInt32
  DOM_DELTA_PIXEL = 0x0
  
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace EventModifierInit
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.altKey = v}"
  prim__setAltKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.ctrlKey = v}"
  prim__setCtrlKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.metaKey = v}"
  prim__setMetaKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierAltGraph"
  prim__modifierAltGraph : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierAltGraph = v}"
  prim__setModifierAltGraph : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierCapsLock"
  prim__modifierCapsLock : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierCapsLock = v}"
  prim__setModifierCapsLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierFn"
  prim__modifierFn : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierFn = v}"
  prim__setModifierFn : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierFnLock"
  prim__modifierFnLock : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierFnLock = v}"
  prim__setModifierFnLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierHyper"
  prim__modifierHyper : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierHyper = v}"
  prim__setModifierHyper : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierNumLock"
  prim__modifierNumLock : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierNumLock = v}"
  prim__setModifierNumLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierScrollLock"
  prim__modifierScrollLock : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierScrollLock = v}"
  prim__setModifierScrollLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierSuper"
  prim__modifierSuper : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierSuper = v}"
  prim__setModifierSuper : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierSymbol"
  prim__modifierSymbol : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbol = v}"
  prim__setModifierSymbol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.modifierSymbolLock"
  prim__modifierSymbolLock : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock = v}"
  prim__setModifierSymbolLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.shiftKey = v}"
  prim__setShiftKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace FocusEventInit
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace InputEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.inputType = v}"
  prim__setInputType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace KeyboardEventInit
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.charCode = v}"
  prim__setCharCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.keyCode = v}"
  prim__setKeyCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.location = v}"
  prim__setLocation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.repeat = v}"
  prim__setRepeat : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace MouseEventInit
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.button = v}"
  prim__setButton : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.buttons = v}"
  prim__setButtons : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clientX = v}"
  prim__setClientX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.clientY = v}"
  prim__setClientY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.screenX = v}"
  prim__setScreenX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.screenY = v}"
  prim__setScreenY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace UIEventInit
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.view = v}"
  prim__setView : AnyPtr -> AnyPtr -> PrimIO AnyPtr

namespace WheelEventInit
  
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deltaMode = v}"
  prim__setDeltaMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deltaX = v}"
  prim__setDeltaX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deltaY = v}"
  prim__setDeltaY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr

  %foreign "browser:lambda:(x,v)=>{x.deltaZ = v}"
  prim__setDeltaZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr



--------------------------------------------------------------------------------
--          Casts
--------------------------------------------------------------------------------

export
Cast CompositionEvent UIEvent where
  cast = believe_me

export
Cast CompositionEventInit UIEventInit where
  cast = believe_me

export
Cast EventModifierInit UIEventInit where
  cast = believe_me

export
Cast FocusEvent UIEvent where
  cast = believe_me

export
Cast FocusEventInit UIEventInit where
  cast = believe_me

export
Cast InputEvent UIEvent where
  cast = believe_me

export
Cast InputEventInit UIEventInit where
  cast = believe_me

export
Cast KeyboardEvent UIEvent where
  cast = believe_me

export
Cast KeyboardEventInit EventModifierInit where
  cast = believe_me

export
Cast MouseEvent UIEvent where
  cast = believe_me

export
Cast MouseEventInit EventModifierInit where
  cast = believe_me

export
Cast UIEvent Event where
  cast = believe_me

export
Cast UIEventInit EventInit where
  cast = believe_me

export
Cast WheelEvent MouseEvent where
  cast = believe_me

export
Cast WheelEventInit MouseEventInit where
  cast = believe_me