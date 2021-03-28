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
  data_ : (obj : CompositionEvent) -> IO String

namespace FocusEvent
  
  public export
  JSType FocusEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : FocusEvent) -> IO (Maybe EventTarget)

namespace InputEvent
  
  public export
  JSType InputEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : InputEvent) -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr

  export
  inputType : (obj : InputEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : InputEvent) -> IO Bool

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
  altKey : (obj : KeyboardEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr

  export
  charCode : (obj : KeyboardEvent) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : KeyboardEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : KeyboardEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : KeyboardEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : KeyboardEvent) -> IO String
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr

  export
  keyCode : (obj : KeyboardEvent) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : KeyboardEvent) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : KeyboardEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr

  export
  repeat : (obj : KeyboardEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : KeyboardEvent) -> IO Bool

namespace MouseEvent
  
  public export
  JSType MouseEvent where
    parents =  [ UIEvent , Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr

  export
  altKey : (obj : MouseEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr

  export
  button : (obj : MouseEvent) -> IO Int16
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr

  export
  buttons : (obj : MouseEvent) -> IO UInt16
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr

  export
  clientX : (obj : MouseEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr

  export
  clientY : (obj : MouseEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : MouseEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : MouseEvent) -> IO Bool
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : MouseEvent) -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr

  export
  screenX : (obj : MouseEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr

  export
  screenY : (obj : MouseEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : MouseEvent) -> IO Bool

namespace UIEvent
  
  public export
  JSType UIEvent where
    parents =  [ Event , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : UIEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : UIEvent) -> IO (Maybe Window)
  
  %foreign "browser:lambda:x=>x.which"
  prim__which : AnyPtr -> PrimIO AnyPtr

  export
  which : (obj : UIEvent) -> IO UInt32

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
  deltaMode : (obj : WheelEvent) -> IO UInt32
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr

  export
  deltaX : (obj : WheelEvent) -> IO Double
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr

  export
  deltaY : (obj : WheelEvent) -> IO Double
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr

  export
  deltaZ : (obj : WheelEvent) -> IO Double


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
  data_ : (obj : CompositionEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : CompositionEventInit) -> (v : String) -> IO ()

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr

  export
  altKey : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.altKey  = v}"
  prim__setAltKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setAltKey : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr

  export
  ctrlKey : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.ctrlKey  = v}"
  prim__setCtrlKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCtrlKey : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr

  export
  metaKey : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.metaKey  = v}"
  prim__setMetaKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setMetaKey : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierAltGraph"
  prim__modifierAltGraph : AnyPtr -> PrimIO AnyPtr

  export
  modifierAltGraph : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierAltGraph  = v}"
  prim__setModifierAltGraph : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierAltGraph : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierCapsLock"
  prim__modifierCapsLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierCapsLock : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierCapsLock  = v}"
  prim__setModifierCapsLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierCapsLock : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierFn"
  prim__modifierFn : AnyPtr -> PrimIO AnyPtr

  export
  modifierFn : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierFn  = v}"
  prim__setModifierFn : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierFn : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierFnLock"
  prim__modifierFnLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierFnLock : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierFnLock  = v}"
  prim__setModifierFnLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierFnLock : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierHyper"
  prim__modifierHyper : AnyPtr -> PrimIO AnyPtr

  export
  modifierHyper : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierHyper  = v}"
  prim__setModifierHyper : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierHyper : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierNumLock"
  prim__modifierNumLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierNumLock : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierNumLock  = v}"
  prim__setModifierNumLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierNumLock : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierScrollLock"
  prim__modifierScrollLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierScrollLock : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierScrollLock  = v}"
  prim__setModifierScrollLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierScrollLock : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSuper"
  prim__modifierSuper : AnyPtr -> PrimIO AnyPtr

  export
  modifierSuper : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSuper  = v}"
  prim__setModifierSuper : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSuper : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbol"
  prim__modifierSymbol : AnyPtr -> PrimIO AnyPtr

  export
  modifierSymbol : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbol  = v}"
  prim__setModifierSymbol : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSymbol : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbolLock"
  prim__modifierSymbolLock : AnyPtr -> PrimIO AnyPtr

  export
  modifierSymbolLock : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock  = v}"
  prim__setModifierSymbolLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setModifierSymbolLock : (obj : EventModifierInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr

  export
  shiftKey : (obj : EventModifierInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.shiftKey  = v}"
  prim__setShiftKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setShiftKey : (obj : EventModifierInit) -> (v : Bool) -> IO ()

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : FocusEventInit) -> IO (Maybe EventTarget)

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget  = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRelatedTarget : (obj : FocusEventInit) -> (v : Maybe EventTarget) -> IO ()

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr

  export
  data_ : (obj : InputEventInit) -> IO (Maybe String)

  %foreign "browser:lambda:(x,v)=>{x.data  = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setData : (obj : InputEventInit) -> (v : Maybe String) -> IO ()
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr

  export
  inputType : (obj : InputEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.inputType  = v}"
  prim__setInputType : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setInputType : (obj : InputEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : InputEventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.isComposing  = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsComposing : (obj : InputEventInit) -> (v : Bool) -> IO ()

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr

  export
  charCode : (obj : KeyboardEventInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.charCode  = v}"
  prim__setCharCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCharCode : (obj : KeyboardEventInit) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr

  export
  code : (obj : KeyboardEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.code  = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setCode : (obj : KeyboardEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr

  export
  isComposing : (obj : KeyboardEventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.isComposing  = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setIsComposing : (obj : KeyboardEventInit) -> (v : Bool) -> IO ()
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr

  export
  key : (obj : KeyboardEventInit) -> IO String

  %foreign "browser:lambda:(x,v)=>{x.key  = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKey : (obj : KeyboardEventInit) -> (v : String) -> IO ()
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr

  export
  keyCode : (obj : KeyboardEventInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.keyCode  = v}"
  prim__setKeyCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setKeyCode : (obj : KeyboardEventInit) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr

  export
  location : (obj : KeyboardEventInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.location  = v}"
  prim__setLocation : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setLocation : (obj : KeyboardEventInit) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr

  export
  repeat : (obj : KeyboardEventInit) -> IO Bool

  %foreign "browser:lambda:(x,v)=>{x.repeat  = v}"
  prim__setRepeat : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRepeat : (obj : KeyboardEventInit) -> (v : Bool) -> IO ()

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr

  export
  button : (obj : MouseEventInit) -> IO Int16

  %foreign "browser:lambda:(x,v)=>{x.button  = v}"
  prim__setButton : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setButton : (obj : MouseEventInit) -> (v : Int16) -> IO ()
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr

  export
  buttons : (obj : MouseEventInit) -> IO UInt16

  %foreign "browser:lambda:(x,v)=>{x.buttons  = v}"
  prim__setButtons : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setButtons : (obj : MouseEventInit) -> (v : UInt16) -> IO ()
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr

  export
  clientX : (obj : MouseEventInit) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.clientX  = v}"
  prim__setClientX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientX : (obj : MouseEventInit) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr

  export
  clientY : (obj : MouseEventInit) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.clientY  = v}"
  prim__setClientY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setClientY : (obj : MouseEventInit) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr

  export
  relatedTarget : (obj : MouseEventInit) -> IO (Maybe EventTarget)

  %foreign "browser:lambda:(x,v)=>{x.relatedTarget  = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setRelatedTarget : (obj : MouseEventInit) -> (v : Maybe EventTarget) -> IO ()
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr

  export
  screenX : (obj : MouseEventInit) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.screenX  = v}"
  prim__setScreenX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScreenX : (obj : MouseEventInit) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr

  export
  screenY : (obj : MouseEventInit) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.screenY  = v}"
  prim__setScreenY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setScreenY : (obj : MouseEventInit) -> (v : Int32) -> IO ()

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , JSObject ]

    mixins =  []
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr

  export
  detail : (obj : UIEventInit) -> IO Int32

  %foreign "browser:lambda:(x,v)=>{x.detail  = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDetail : (obj : UIEventInit) -> (v : Int32) -> IO ()
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr

  export
  view : (obj : UIEventInit) -> IO (Maybe Window)

  %foreign "browser:lambda:(x,v)=>{x.view  = v}"
  prim__setView : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setView : (obj : UIEventInit) -> (v : Maybe Window) -> IO ()

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
  deltaMode : (obj : WheelEventInit) -> IO UInt32

  %foreign "browser:lambda:(x,v)=>{x.deltaMode  = v}"
  prim__setDeltaMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaMode : (obj : WheelEventInit) -> (v : UInt32) -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr

  export
  deltaX : (obj : WheelEventInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaX  = v}"
  prim__setDeltaX : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaX : (obj : WheelEventInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr

  export
  deltaY : (obj : WheelEventInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaY  = v}"
  prim__setDeltaY : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaY : (obj : WheelEventInit) -> (v : Double) -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr

  export
  deltaZ : (obj : WheelEventInit) -> IO Double

  %foreign "browser:lambda:(x,v)=>{x.deltaZ  = v}"
  prim__setDeltaZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr

  export
  setDeltaZ : (obj : WheelEventInit) -> (v : Double) -> IO ()

