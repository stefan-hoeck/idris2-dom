module Web.UIEvents
 
import JS
import Web.Internal.UIEventsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  public export
  JSType CompositionEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  data_ : (obj : CompositionEvent) -> JSIO String
  data_ a = primJS $ CompositionEvent.prim__data a

namespace FocusEvent
  
  public export
  JSType FocusEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  relatedTarget : (obj : FocusEvent) -> JSIO (Nullable EventTarget)
  relatedTarget a = primJS $ FocusEvent.prim__relatedTarget a

namespace InputEvent
  
  public export
  JSType InputEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  data_ : (obj : InputEvent) -> JSIO (Nullable String)
  data_ a = primJS $ InputEvent.prim__data a
  
  export
  inputType : (obj : InputEvent) -> JSIO String
  inputType a = primJS $ InputEvent.prim__inputType a
  
  export
  isComposing : (obj : InputEvent) -> JSIO Boolean
  isComposing a = primJS $ InputEvent.prim__isComposing a

namespace KeyboardEvent
  
  public export
  JSType KeyboardEvent where
    parents =  [ UIEvent , Event , Object ]

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
  
  export
  altKey : (obj : KeyboardEvent) -> JSIO Boolean
  altKey a = primJS $ KeyboardEvent.prim__altKey a
  
  export
  charCode : (obj : KeyboardEvent) -> JSIO UInt32
  charCode a = primJS $ KeyboardEvent.prim__charCode a
  
  export
  code : (obj : KeyboardEvent) -> JSIO String
  code a = primJS $ KeyboardEvent.prim__code a
  
  export
  ctrlKey : (obj : KeyboardEvent) -> JSIO Boolean
  ctrlKey a = primJS $ KeyboardEvent.prim__ctrlKey a
  
  export
  isComposing : (obj : KeyboardEvent) -> JSIO Boolean
  isComposing a = primJS $ KeyboardEvent.prim__isComposing a
  
  export
  key : (obj : KeyboardEvent) -> JSIO String
  key a = primJS $ KeyboardEvent.prim__key a
  
  export
  keyCode : (obj : KeyboardEvent) -> JSIO UInt32
  keyCode a = primJS $ KeyboardEvent.prim__keyCode a
  
  export
  location : (obj : KeyboardEvent) -> JSIO UInt32
  location a = primJS $ KeyboardEvent.prim__location a
  
  export
  metaKey : (obj : KeyboardEvent) -> JSIO Boolean
  metaKey a = primJS $ KeyboardEvent.prim__metaKey a
  
  export
  repeat : (obj : KeyboardEvent) -> JSIO Boolean
  repeat a = primJS $ KeyboardEvent.prim__repeat a
  
  export
  shiftKey : (obj : KeyboardEvent) -> JSIO Boolean
  shiftKey a = primJS $ KeyboardEvent.prim__shiftKey a
  
  export
  getModifierState : (obj : KeyboardEvent) -> (keyArg : String) -> JSIO Boolean
  getModifierState a b = primJS $ KeyboardEvent.prim__getModifierState a b

namespace MouseEvent
  
  public export
  JSType MouseEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  altKey : (obj : MouseEvent) -> JSIO Boolean
  altKey a = primJS $ MouseEvent.prim__altKey a
  
  export
  button : (obj : MouseEvent) -> JSIO Int16
  button a = primJS $ MouseEvent.prim__button a
  
  export
  buttons : (obj : MouseEvent) -> JSIO UInt16
  buttons a = primJS $ MouseEvent.prim__buttons a
  
  export
  clientX : (obj : MouseEvent) -> JSIO Int32
  clientX a = primJS $ MouseEvent.prim__clientX a
  
  export
  clientY : (obj : MouseEvent) -> JSIO Int32
  clientY a = primJS $ MouseEvent.prim__clientY a
  
  export
  ctrlKey : (obj : MouseEvent) -> JSIO Boolean
  ctrlKey a = primJS $ MouseEvent.prim__ctrlKey a
  
  export
  metaKey : (obj : MouseEvent) -> JSIO Boolean
  metaKey a = primJS $ MouseEvent.prim__metaKey a
  
  export
  relatedTarget : (obj : MouseEvent) -> JSIO (Nullable EventTarget)
  relatedTarget a = primJS $ MouseEvent.prim__relatedTarget a
  
  export
  screenX : (obj : MouseEvent) -> JSIO Int32
  screenX a = primJS $ MouseEvent.prim__screenX a
  
  export
  screenY : (obj : MouseEvent) -> JSIO Int32
  screenY a = primJS $ MouseEvent.prim__screenY a
  
  export
  shiftKey : (obj : MouseEvent) -> JSIO Boolean
  shiftKey a = primJS $ MouseEvent.prim__shiftKey a
  
  export
  getModifierState : (obj : MouseEvent) -> (keyArg : String) -> JSIO Boolean
  getModifierState a b = primJS $ MouseEvent.prim__getModifierState a b

namespace UIEvent
  
  public export
  JSType UIEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  detail : (obj : UIEvent) -> JSIO Int32
  detail a = primJS $ UIEvent.prim__detail a
  
  export
  view : (obj : UIEvent) -> JSIO (Nullable Window)
  view a = primJS $ UIEvent.prim__view a
  
  export
  which : (obj : UIEvent) -> JSIO UInt32
  which a = primJS $ UIEvent.prim__which a

namespace WheelEvent
  
  public export
  JSType WheelEvent where
    parents =  [ MouseEvent , UIEvent , Event , Object ]

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
  
  export
  deltaMode : (obj : WheelEvent) -> JSIO UInt32
  deltaMode a = primJS $ WheelEvent.prim__deltaMode a
  
  export
  deltaX : (obj : WheelEvent) -> JSIO Double
  deltaX a = primJS $ WheelEvent.prim__deltaX a
  
  export
  deltaY : (obj : WheelEvent) -> JSIO Double
  deltaY a = primJS $ WheelEvent.prim__deltaY a
  
  export
  deltaZ : (obj : WheelEvent) -> JSIO Double
  deltaZ a = primJS $ WheelEvent.prim__deltaZ a


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  public export
  JSType CompositionEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  data_ : (obj : CompositionEventInit) -> JSIO (UndefOr String)
  data_ a = primJS $ CompositionEventInit.prim__data a
  
  export
  setData : (obj : CompositionEventInit) -> (value : UndefOr String) -> JSIO ()
  setData a b = primJS $ CompositionEventInit.prim__setData a b

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  altKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  altKey a = primJS $ EventModifierInit.prim__altKey a
  
  export
  setAltKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setAltKey a b = primJS $ EventModifierInit.prim__setAltKey a b
  
  export
  ctrlKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  ctrlKey a = primJS $ EventModifierInit.prim__ctrlKey a
  
  export
  setCtrlKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setCtrlKey a b = primJS $ EventModifierInit.prim__setCtrlKey a b
  
  export
  metaKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  metaKey a = primJS $ EventModifierInit.prim__metaKey a
  
  export
  setMetaKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setMetaKey a b = primJS $ EventModifierInit.prim__setMetaKey a b
  
  export
  modifierAltGraph : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierAltGraph a = primJS $ EventModifierInit.prim__modifierAltGraph a
  
  export
  setModifierAltGraph :  (obj : EventModifierInit)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setModifierAltGraph a b = primJS $ EventModifierInit.prim__setModifierAltGraph a
                                                                                 b
  
  export
  modifierCapsLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierCapsLock a = primJS $ EventModifierInit.prim__modifierCapsLock a
  
  export
  setModifierCapsLock :  (obj : EventModifierInit)
                      -> (value : UndefOr Boolean)
                      -> JSIO ()
  setModifierCapsLock a b = primJS $ EventModifierInit.prim__setModifierCapsLock a
                                                                                 b
  
  export
  modifierFn : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierFn a = primJS $ EventModifierInit.prim__modifierFn a
  
  export
  setModifierFn :  (obj : EventModifierInit)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setModifierFn a b = primJS $ EventModifierInit.prim__setModifierFn a b
  
  export
  modifierFnLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierFnLock a = primJS $ EventModifierInit.prim__modifierFnLock a
  
  export
  setModifierFnLock :  (obj : EventModifierInit)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setModifierFnLock a b = primJS $ EventModifierInit.prim__setModifierFnLock a b
  
  export
  modifierHyper : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierHyper a = primJS $ EventModifierInit.prim__modifierHyper a
  
  export
  setModifierHyper :  (obj : EventModifierInit)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setModifierHyper a b = primJS $ EventModifierInit.prim__setModifierHyper a b
  
  export
  modifierNumLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierNumLock a = primJS $ EventModifierInit.prim__modifierNumLock a
  
  export
  setModifierNumLock :  (obj : EventModifierInit)
                     -> (value : UndefOr Boolean)
                     -> JSIO ()
  setModifierNumLock a b = primJS $ EventModifierInit.prim__setModifierNumLock a
                                                                               b
  
  export
  modifierScrollLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierScrollLock a = primJS $ EventModifierInit.prim__modifierScrollLock a
  
  export
  setModifierScrollLock :  (obj : EventModifierInit)
                        -> (value : UndefOr Boolean)
                        -> JSIO ()
  setModifierScrollLock a b = primJS $ EventModifierInit.prim__setModifierScrollLock a
                                                                                     b
  
  export
  modifierSuper : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierSuper a = primJS $ EventModifierInit.prim__modifierSuper a
  
  export
  setModifierSuper :  (obj : EventModifierInit)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setModifierSuper a b = primJS $ EventModifierInit.prim__setModifierSuper a b
  
  export
  modifierSymbol : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierSymbol a = primJS $ EventModifierInit.prim__modifierSymbol a
  
  export
  setModifierSymbol :  (obj : EventModifierInit)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setModifierSymbol a b = primJS $ EventModifierInit.prim__setModifierSymbol a b
  
  export
  modifierSymbolLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierSymbolLock a = primJS $ EventModifierInit.prim__modifierSymbolLock a
  
  export
  setModifierSymbolLock :  (obj : EventModifierInit)
                        -> (value : UndefOr Boolean)
                        -> JSIO ()
  setModifierSymbolLock a b = primJS $ EventModifierInit.prim__setModifierSymbolLock a
                                                                                     b
  
  export
  shiftKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  shiftKey a = primJS $ EventModifierInit.prim__shiftKey a
  
  export
  setShiftKey :  (obj : EventModifierInit)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setShiftKey a b = primJS $ EventModifierInit.prim__setShiftKey a b

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  relatedTarget :  (obj : FocusEventInit)
                -> JSIO (UndefOr (Nullable EventTarget))
  relatedTarget a = primJS $ FocusEventInit.prim__relatedTarget a
  
  export
  setRelatedTarget :  (obj : FocusEventInit)
                   -> (value : UndefOr (Nullable EventTarget))
                   -> JSIO ()
  setRelatedTarget a b = primJS $ FocusEventInit.prim__setRelatedTarget a b

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  data_ : (obj : InputEventInit) -> JSIO (UndefOr (Nullable String))
  data_ a = primJS $ InputEventInit.prim__data a
  
  export
  setData :  (obj : InputEventInit)
          -> (value : UndefOr (Nullable String))
          -> JSIO ()
  setData a b = primJS $ InputEventInit.prim__setData a b
  
  export
  inputType : (obj : InputEventInit) -> JSIO (UndefOr String)
  inputType a = primJS $ InputEventInit.prim__inputType a
  
  export
  setInputType : (obj : InputEventInit) -> (value : UndefOr String) -> JSIO ()
  setInputType a b = primJS $ InputEventInit.prim__setInputType a b
  
  export
  isComposing : (obj : InputEventInit) -> JSIO (UndefOr Boolean)
  isComposing a = primJS $ InputEventInit.prim__isComposing a
  
  export
  setIsComposing :  (obj : InputEventInit)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setIsComposing a b = primJS $ InputEventInit.prim__setIsComposing a b

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  code : (obj : KeyboardEventInit) -> JSIO (UndefOr String)
  code a = primJS $ KeyboardEventInit.prim__code a
  
  export
  setCode : (obj : KeyboardEventInit) -> (value : UndefOr String) -> JSIO ()
  setCode a b = primJS $ KeyboardEventInit.prim__setCode a b
  
  export
  isComposing : (obj : KeyboardEventInit) -> JSIO (UndefOr Boolean)
  isComposing a = primJS $ KeyboardEventInit.prim__isComposing a
  
  export
  setIsComposing :  (obj : KeyboardEventInit)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setIsComposing a b = primJS $ KeyboardEventInit.prim__setIsComposing a b
  
  export
  key : (obj : KeyboardEventInit) -> JSIO (UndefOr String)
  key a = primJS $ KeyboardEventInit.prim__key a
  
  export
  setKey : (obj : KeyboardEventInit) -> (value : UndefOr String) -> JSIO ()
  setKey a b = primJS $ KeyboardEventInit.prim__setKey a b
  
  export
  location : (obj : KeyboardEventInit) -> JSIO (UndefOr UInt32)
  location a = primJS $ KeyboardEventInit.prim__location a
  
  export
  setLocation : (obj : KeyboardEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setLocation a b = primJS $ KeyboardEventInit.prim__setLocation a b
  
  export
  repeat : (obj : KeyboardEventInit) -> JSIO (UndefOr Boolean)
  repeat a = primJS $ KeyboardEventInit.prim__repeat a
  
  export
  setRepeat : (obj : KeyboardEventInit) -> (value : UndefOr Boolean) -> JSIO ()
  setRepeat a b = primJS $ KeyboardEventInit.prim__setRepeat a b

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  button : (obj : MouseEventInit) -> JSIO (UndefOr Int16)
  button a = primJS $ MouseEventInit.prim__button a
  
  export
  setButton : (obj : MouseEventInit) -> (value : UndefOr Int16) -> JSIO ()
  setButton a b = primJS $ MouseEventInit.prim__setButton a b
  
  export
  buttons : (obj : MouseEventInit) -> JSIO (UndefOr UInt16)
  buttons a = primJS $ MouseEventInit.prim__buttons a
  
  export
  setButtons : (obj : MouseEventInit) -> (value : UndefOr UInt16) -> JSIO ()
  setButtons a b = primJS $ MouseEventInit.prim__setButtons a b
  
  export
  clientX : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  clientX a = primJS $ MouseEventInit.prim__clientX a
  
  export
  setClientX : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setClientX a b = primJS $ MouseEventInit.prim__setClientX a b
  
  export
  clientY : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  clientY a = primJS $ MouseEventInit.prim__clientY a
  
  export
  setClientY : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setClientY a b = primJS $ MouseEventInit.prim__setClientY a b
  
  export
  relatedTarget :  (obj : MouseEventInit)
                -> JSIO (UndefOr (Nullable EventTarget))
  relatedTarget a = primJS $ MouseEventInit.prim__relatedTarget a
  
  export
  setRelatedTarget :  (obj : MouseEventInit)
                   -> (value : UndefOr (Nullable EventTarget))
                   -> JSIO ()
  setRelatedTarget a b = primJS $ MouseEventInit.prim__setRelatedTarget a b
  
  export
  screenX : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  screenX a = primJS $ MouseEventInit.prim__screenX a
  
  export
  setScreenX : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setScreenX a b = primJS $ MouseEventInit.prim__setScreenX a b
  
  export
  screenY : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  screenY a = primJS $ MouseEventInit.prim__screenY a
  
  export
  setScreenY : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setScreenY a b = primJS $ MouseEventInit.prim__setScreenY a b

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  detail : (obj : UIEventInit) -> JSIO (UndefOr Int32)
  detail a = primJS $ UIEventInit.prim__detail a
  
  export
  setDetail : (obj : UIEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setDetail a b = primJS $ UIEventInit.prim__setDetail a b
  
  export
  view : (obj : UIEventInit) -> JSIO (UndefOr (Nullable Window))
  view a = primJS $ UIEventInit.prim__view a
  
  export
  setView :  (obj : UIEventInit)
          -> (value : UndefOr (Nullable Window))
          -> JSIO ()
  setView a b = primJS $ UIEventInit.prim__setView a b

namespace WheelEventInit
  
  public export
  JSType WheelEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , Object
               ]

    mixins =  []
  
  export
  deltaMode : (obj : WheelEventInit) -> JSIO (UndefOr UInt32)
  deltaMode a = primJS $ WheelEventInit.prim__deltaMode a
  
  export
  setDeltaMode : (obj : WheelEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setDeltaMode a b = primJS $ WheelEventInit.prim__setDeltaMode a b
  
  export
  deltaX : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaX a = primJS $ WheelEventInit.prim__deltaX a
  
  export
  setDeltaX : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaX a b = primJS $ WheelEventInit.prim__setDeltaX a b
  
  export
  deltaY : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaY a = primJS $ WheelEventInit.prim__deltaY a
  
  export
  setDeltaY : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaY a b = primJS $ WheelEventInit.prim__setDeltaY a b
  
  export
  deltaZ : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaZ a = primJS $ WheelEventInit.prim__deltaZ a
  
  export
  setDeltaZ : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaZ a b = primJS $ WheelEventInit.prim__setDeltaZ a b
