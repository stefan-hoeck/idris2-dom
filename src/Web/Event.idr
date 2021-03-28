module Web.Event
import JS
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  public export
  JSType CompositionEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : CompositionEvent) -> JSIO String

namespace FocusEvent
  
  public export
  JSType FocusEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : FocusEvent) -> JSIO (Maybe EventTarget)

namespace InputEvent
  
  public export
  JSType InputEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : InputEvent) -> JSIO (Maybe String)
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr

  export
  inputType : (obj : InputEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : InputEvent) -> JSIO Bool

namespace KeyboardEvent
  
  public export
  JSType KeyboardEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
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

  export
  altKey : (obj : KeyboardEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr

  export
  charCode : (obj : KeyboardEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : KeyboardEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : KeyboardEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : KeyboardEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : KeyboardEvent) -> JSIO String
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr

  export
  keyCode : (obj : KeyboardEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : KeyboardEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : KeyboardEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr

  export
  repeat : (obj : KeyboardEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : KeyboardEvent) -> JSIO Bool

namespace MouseEvent
  
  public export
  JSType MouseEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr

  export
  altKey : (obj : MouseEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr

  export
  button : (obj : MouseEvent) -> JSIO Int16
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr

  export
  buttons : (obj : MouseEvent) -> JSIO UInt16
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr

  export
  clientX : (obj : MouseEvent) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr

  export
  clientY : (obj : MouseEvent) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : MouseEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : MouseEvent) -> JSIO Bool
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : MouseEvent) -> JSIO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr

  export
  screenX : (obj : MouseEvent) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr

  export
  screenY : (obj : MouseEvent) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : MouseEvent) -> JSIO Bool

namespace UIEvent
  
  public export
  JSType UIEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : UIEvent) -> JSIO Int32
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : UIEvent) -> JSIO (Maybe Window)
  
  %foreign "browser:lambda:x=>x.which"
  prim__which : AnyPtr -> PrimIO AnyPtr

  export
  which : (obj : UIEvent) -> JSIO UInt32

namespace WheelEvent
  
  public export
  JSType WheelEvent where
    parents =  [ MouseEvent , UIEvent , Event , JSObject ]

    mixins =  []
  
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

  export
  deltaMode : (obj : WheelEvent) -> JSIO UInt32
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr

  export
  deltaX : (obj : WheelEvent) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr

  export
  deltaY : (obj : WheelEvent) -> JSIO Double
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr

  export
  deltaZ : (obj : WheelEvent) -> JSIO Double


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  public export
  JSType CompositionEventInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : CompositionEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : CompositionEventInit) -> (v : String) -> JSIO ()

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr

  export
  altKey : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.altKey  = v}"
  prim__setAltKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAltKey : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.ctrlKey  = v}"
  prim__setCtrlKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCtrlKey : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.metaKey  = v}"
  prim__setMetaKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMetaKey : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierAltGraph"
  prim__modifierAltGraph : AnyPtr -> PrimIO AnyPtr

  export
  modifierAltGraph : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierAltGraph  = v}"
  prim__setModifierAltGraph : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierAltGraph : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierCapsLock"
  prim__modifierCapsLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierCapsLock : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierCapsLock  = v}"
  prim__setModifierCapsLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierCapsLock : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierFn"
  prim__modifierFn : AnyPtr -> PrimIO AnyPtr

  export
  modifierFn : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierFn  = v}"
  prim__setModifierFn : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierFn : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierFnLock"
  prim__modifierFnLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierFnLock : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierFnLock  = v}"
  prim__setModifierFnLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierFnLock : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierHyper"
  prim__modifierHyper : AnyPtr -> PrimIO AnyPtr

  export
  modifierHyper : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierHyper  = v}"
  prim__setModifierHyper : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierHyper : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierNumLock"
  prim__modifierNumLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierNumLock : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierNumLock  = v}"
  prim__setModifierNumLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierNumLock : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierScrollLock"
  prim__modifierScrollLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierScrollLock : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierScrollLock  = v}"
  prim__setModifierScrollLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierScrollLock : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierSuper"
  prim__modifierSuper : AnyPtr -> PrimIO AnyPtr

  export
  modifierSuper : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSuper  = v}"
  prim__setModifierSuper : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSuper : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbol"
  prim__modifierSymbol : AnyPtr -> PrimIO AnyPtr

  export
  modifierSymbol : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbol  = v}"
  prim__setModifierSymbol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSymbol : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbolLock"
  prim__modifierSymbolLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierSymbolLock : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock  = v}"
  prim__setModifierSymbolLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSymbolLock : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : EventModifierInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.shiftKey  = v}"
  prim__setShiftKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShiftKey : (obj : EventModifierInit) -> (v : Bool) -> JSIO ()

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : FocusEventInit) -> JSIO (Maybe EventTarget)

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget  = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRelatedTarget :  (obj : FocusEventInit)
                   -> (v : Maybe EventTarget)
                   -> JSIO ()

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : InputEventInit) -> JSIO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : InputEventInit) -> (v : Maybe String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr

  export
  inputType : (obj : InputEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.inputType  = v}"
  prim__setInputType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInputType : (obj : InputEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : InputEventInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.isComposing  = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsComposing : (obj : InputEventInit) -> (v : Bool) -> JSIO ()

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr

  export
  charCode : (obj : KeyboardEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.charCode  = v}"
  prim__setCharCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharCode : (obj : KeyboardEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : KeyboardEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : KeyboardEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : KeyboardEventInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.isComposing  = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsComposing : (obj : KeyboardEventInit) -> (v : Bool) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : KeyboardEventInit) -> JSIO String

  %foreign "browser:lambda:(x,v)=>{x.key  = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKey : (obj : KeyboardEventInit) -> (v : String) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr

  export
  keyCode : (obj : KeyboardEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.keyCode  = v}"
  prim__setKeyCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKeyCode : (obj : KeyboardEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : KeyboardEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.location  = v}"
  prim__setLocation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLocation : (obj : KeyboardEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr

  export
  repeat : (obj : KeyboardEventInit) -> JSIO Bool

  %foreign "browser:lambda:(x,v)=>{x.repeat  = v}"
  prim__setRepeat : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRepeat : (obj : KeyboardEventInit) -> (v : Bool) -> JSIO ()

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr

  export
  button : (obj : MouseEventInit) -> JSIO Int16

  %foreign "browser:lambda:(x,v)=>{x.button  = v}"
  prim__setButton : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setButton : (obj : MouseEventInit) -> (v : Int16) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr

  export
  buttons : (obj : MouseEventInit) -> JSIO UInt16

  %foreign "browser:lambda:(x,v)=>{x.buttons  = v}"
  prim__setButtons : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setButtons : (obj : MouseEventInit) -> (v : UInt16) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr

  export
  clientX : (obj : MouseEventInit) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.clientX  = v}"
  prim__setClientX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientX : (obj : MouseEventInit) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr

  export
  clientY : (obj : MouseEventInit) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.clientY  = v}"
  prim__setClientY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientY : (obj : MouseEventInit) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : MouseEventInit) -> JSIO (Maybe EventTarget)

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget  = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRelatedTarget :  (obj : MouseEventInit)
                   -> (v : Maybe EventTarget)
                   -> JSIO ()
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr

  export
  screenX : (obj : MouseEventInit) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.screenX  = v}"
  prim__setScreenX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScreenX : (obj : MouseEventInit) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr

  export
  screenY : (obj : MouseEventInit) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.screenY  = v}"
  prim__setScreenY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScreenY : (obj : MouseEventInit) -> (v : Int32) -> JSIO ()

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : UIEventInit) -> JSIO Int32

  %foreign "browser:lambda:(x,v)=>{x.detail  = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDetail : (obj : UIEventInit) -> (v : Int32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : UIEventInit) -> JSIO (Maybe Window)

  %foreign "browser:lambda:(x,v)=>{x.view  = v}"
  prim__setView : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setView : (obj : UIEventInit) -> (v : Maybe Window) -> JSIO ()

namespace WheelEventInit
  
  public export
  JSType WheelEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , JSObject
               ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : AnyPtr -> PrimIO AnyPtr

  export
  deltaMode : (obj : WheelEventInit) -> JSIO UInt32

  %foreign "browser:lambda:(x,v)=>{x.deltaMode  = v}"
  prim__setDeltaMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaMode : (obj : WheelEventInit) -> (v : UInt32) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr

  export
  deltaX : (obj : WheelEventInit) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaX  = v}"
  prim__setDeltaX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaX : (obj : WheelEventInit) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr

  export
  deltaY : (obj : WheelEventInit) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaY  = v}"
  prim__setDeltaY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaY : (obj : WheelEventInit) -> (v : Double) -> JSIO ()
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr

  export
  deltaZ : (obj : WheelEventInit) -> JSIO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaZ  = v}"
  prim__setDeltaZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaZ : (obj : WheelEventInit) -> (v : Double) -> JSIO ()

