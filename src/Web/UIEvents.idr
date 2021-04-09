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
  new : (data_ : UndefOr String) -> JSIO CompositionEventInit
  new a = primJS $ CompositionEventInit.prim__new a

  export
  new' : JSIO CompositionEventInit
  new' = new undef
  
  export
  data_ : (obj : CompositionEventInit) -> JSIO (UndefOr String)
  data_ a = primJS $ CompositionEventInit.prim__data a
  
  export
  setData : (obj : CompositionEventInit) -> (value : UndefOr String) -> JSIO ()
  setData a b = primJS $ CompositionEventInit.prim__setData a b

  export
  setData' : (obj : CompositionEventInit) -> JSIO ()
  setData' a = setData a undef

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (ctrlKey : UndefOr Boolean)
      -> (shiftKey : UndefOr Boolean)
      -> (altKey : UndefOr Boolean)
      -> (metaKey : UndefOr Boolean)
      -> (modifierAltGraph : UndefOr Boolean)
      -> (modifierCapsLock : UndefOr Boolean)
      -> (modifierFn : UndefOr Boolean)
      -> (modifierFnLock : UndefOr Boolean)
      -> (modifierHyper : UndefOr Boolean)
      -> (modifierNumLock : UndefOr Boolean)
      -> (modifierScrollLock : UndefOr Boolean)
      -> (modifierSuper : UndefOr Boolean)
      -> (modifierSymbol : UndefOr Boolean)
      -> (modifierSymbolLock : UndefOr Boolean)
      -> JSIO EventModifierInit
  new a b c d e f g h i j k l m n = primJS $ EventModifierInit.prim__new a
                                                                         b
                                                                         c
                                                                         d
                                                                         e
                                                                         f
                                                                         g
                                                                         h
                                                                         i
                                                                         j
                                                                         k
                                                                         l
                                                                         m
                                                                         n

  export
  new' : JSIO EventModifierInit
  new' = new undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
             undef
  
  export
  altKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  altKey a = primJS $ EventModifierInit.prim__altKey a
  
  export
  setAltKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setAltKey a b = primJS $ EventModifierInit.prim__setAltKey a b

  export
  setAltKey' : (obj : EventModifierInit) -> JSIO ()
  setAltKey' a = setAltKey a undef
  
  export
  ctrlKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  ctrlKey a = primJS $ EventModifierInit.prim__ctrlKey a
  
  export
  setCtrlKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setCtrlKey a b = primJS $ EventModifierInit.prim__setCtrlKey a b

  export
  setCtrlKey' : (obj : EventModifierInit) -> JSIO ()
  setCtrlKey' a = setCtrlKey a undef
  
  export
  metaKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  metaKey a = primJS $ EventModifierInit.prim__metaKey a
  
  export
  setMetaKey : (obj : EventModifierInit) -> (value : UndefOr Boolean) -> JSIO ()
  setMetaKey a b = primJS $ EventModifierInit.prim__setMetaKey a b

  export
  setMetaKey' : (obj : EventModifierInit) -> JSIO ()
  setMetaKey' a = setMetaKey a undef
  
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
  setModifierAltGraph' : (obj : EventModifierInit) -> JSIO ()
  setModifierAltGraph' a = setModifierAltGraph a undef
  
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
  setModifierCapsLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierCapsLock' a = setModifierCapsLock a undef
  
  export
  modifierFn : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierFn a = primJS $ EventModifierInit.prim__modifierFn a
  
  export
  setModifierFn :  (obj : EventModifierInit)
                -> (value : UndefOr Boolean)
                -> JSIO ()
  setModifierFn a b = primJS $ EventModifierInit.prim__setModifierFn a b

  export
  setModifierFn' : (obj : EventModifierInit) -> JSIO ()
  setModifierFn' a = setModifierFn a undef
  
  export
  modifierFnLock : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierFnLock a = primJS $ EventModifierInit.prim__modifierFnLock a
  
  export
  setModifierFnLock :  (obj : EventModifierInit)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setModifierFnLock a b = primJS $ EventModifierInit.prim__setModifierFnLock a b

  export
  setModifierFnLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierFnLock' a = setModifierFnLock a undef
  
  export
  modifierHyper : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierHyper a = primJS $ EventModifierInit.prim__modifierHyper a
  
  export
  setModifierHyper :  (obj : EventModifierInit)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setModifierHyper a b = primJS $ EventModifierInit.prim__setModifierHyper a b

  export
  setModifierHyper' : (obj : EventModifierInit) -> JSIO ()
  setModifierHyper' a = setModifierHyper a undef
  
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
  setModifierNumLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierNumLock' a = setModifierNumLock a undef
  
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
  setModifierScrollLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierScrollLock' a = setModifierScrollLock a undef
  
  export
  modifierSuper : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierSuper a = primJS $ EventModifierInit.prim__modifierSuper a
  
  export
  setModifierSuper :  (obj : EventModifierInit)
                   -> (value : UndefOr Boolean)
                   -> JSIO ()
  setModifierSuper a b = primJS $ EventModifierInit.prim__setModifierSuper a b

  export
  setModifierSuper' : (obj : EventModifierInit) -> JSIO ()
  setModifierSuper' a = setModifierSuper a undef
  
  export
  modifierSymbol : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  modifierSymbol a = primJS $ EventModifierInit.prim__modifierSymbol a
  
  export
  setModifierSymbol :  (obj : EventModifierInit)
                    -> (value : UndefOr Boolean)
                    -> JSIO ()
  setModifierSymbol a b = primJS $ EventModifierInit.prim__setModifierSymbol a b

  export
  setModifierSymbol' : (obj : EventModifierInit) -> JSIO ()
  setModifierSymbol' a = setModifierSymbol a undef
  
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
  setModifierSymbolLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierSymbolLock' a = setModifierSymbolLock a undef
  
  export
  shiftKey : (obj : EventModifierInit) -> JSIO (UndefOr Boolean)
  shiftKey a = primJS $ EventModifierInit.prim__shiftKey a
  
  export
  setShiftKey :  (obj : EventModifierInit)
              -> (value : UndefOr Boolean)
              -> JSIO ()
  setShiftKey a b = primJS $ EventModifierInit.prim__setShiftKey a b

  export
  setShiftKey' : (obj : EventModifierInit) -> JSIO ()
  setShiftKey' a = setShiftKey a undef

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new : (relatedTarget : UndefOr (Nullable EventTarget)) -> JSIO FocusEventInit
  new a = primJS $ FocusEventInit.prim__new a

  export
  new' : JSIO FocusEventInit
  new' = new undef
  
  export
  relatedTarget :  (obj : FocusEventInit)
                -> JSIO (UndefOr (Nullable EventTarget))
  relatedTarget a = primJS $ FocusEventInit.prim__relatedTarget a
  
  export
  setRelatedTarget :  (obj : FocusEventInit)
                   -> (value : UndefOr (Nullable EventTarget))
                   -> JSIO ()
  setRelatedTarget a b = primJS $ FocusEventInit.prim__setRelatedTarget a b

  export
  setRelatedTarget' : (obj : FocusEventInit) -> JSIO ()
  setRelatedTarget' a = setRelatedTarget a undef

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (data_ : UndefOr (Nullable String))
      -> (isComposing : UndefOr Boolean)
      -> (inputType : UndefOr String)
      -> JSIO InputEventInit
  new a b c = primJS $ InputEventInit.prim__new a b c

  export
  new' : JSIO InputEventInit
  new' = new undef undef undef
  
  export
  data_ : (obj : InputEventInit) -> JSIO (UndefOr (Nullable String))
  data_ a = primJS $ InputEventInit.prim__data a
  
  export
  setData :  (obj : InputEventInit)
          -> (value : UndefOr (Nullable String))
          -> JSIO ()
  setData a b = primJS $ InputEventInit.prim__setData a b

  export
  setData' : (obj : InputEventInit) -> JSIO ()
  setData' a = setData a undef
  
  export
  inputType : (obj : InputEventInit) -> JSIO (UndefOr String)
  inputType a = primJS $ InputEventInit.prim__inputType a
  
  export
  setInputType : (obj : InputEventInit) -> (value : UndefOr String) -> JSIO ()
  setInputType a b = primJS $ InputEventInit.prim__setInputType a b

  export
  setInputType' : (obj : InputEventInit) -> JSIO ()
  setInputType' a = setInputType a undef
  
  export
  isComposing : (obj : InputEventInit) -> JSIO (UndefOr Boolean)
  isComposing a = primJS $ InputEventInit.prim__isComposing a
  
  export
  setIsComposing :  (obj : InputEventInit)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setIsComposing a b = primJS $ InputEventInit.prim__setIsComposing a b

  export
  setIsComposing' : (obj : InputEventInit) -> JSIO ()
  setIsComposing' a = setIsComposing a undef

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (key : UndefOr String)
      -> (code : UndefOr String)
      -> (location : UndefOr UInt32)
      -> (repeat : UndefOr Boolean)
      -> (isComposing : UndefOr Boolean)
      -> JSIO KeyboardEventInit
  new a b c d e = primJS $ KeyboardEventInit.prim__new a b c d e

  export
  new' : JSIO KeyboardEventInit
  new' = new undef undef undef undef undef
  
  export
  code : (obj : KeyboardEventInit) -> JSIO (UndefOr String)
  code a = primJS $ KeyboardEventInit.prim__code a
  
  export
  setCode : (obj : KeyboardEventInit) -> (value : UndefOr String) -> JSIO ()
  setCode a b = primJS $ KeyboardEventInit.prim__setCode a b

  export
  setCode' : (obj : KeyboardEventInit) -> JSIO ()
  setCode' a = setCode a undef
  
  export
  isComposing : (obj : KeyboardEventInit) -> JSIO (UndefOr Boolean)
  isComposing a = primJS $ KeyboardEventInit.prim__isComposing a
  
  export
  setIsComposing :  (obj : KeyboardEventInit)
                 -> (value : UndefOr Boolean)
                 -> JSIO ()
  setIsComposing a b = primJS $ KeyboardEventInit.prim__setIsComposing a b

  export
  setIsComposing' : (obj : KeyboardEventInit) -> JSIO ()
  setIsComposing' a = setIsComposing a undef
  
  export
  key : (obj : KeyboardEventInit) -> JSIO (UndefOr String)
  key a = primJS $ KeyboardEventInit.prim__key a
  
  export
  setKey : (obj : KeyboardEventInit) -> (value : UndefOr String) -> JSIO ()
  setKey a b = primJS $ KeyboardEventInit.prim__setKey a b

  export
  setKey' : (obj : KeyboardEventInit) -> JSIO ()
  setKey' a = setKey a undef
  
  export
  location : (obj : KeyboardEventInit) -> JSIO (UndefOr UInt32)
  location a = primJS $ KeyboardEventInit.prim__location a
  
  export
  setLocation : (obj : KeyboardEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setLocation a b = primJS $ KeyboardEventInit.prim__setLocation a b

  export
  setLocation' : (obj : KeyboardEventInit) -> JSIO ()
  setLocation' a = setLocation a undef
  
  export
  repeat : (obj : KeyboardEventInit) -> JSIO (UndefOr Boolean)
  repeat a = primJS $ KeyboardEventInit.prim__repeat a
  
  export
  setRepeat : (obj : KeyboardEventInit) -> (value : UndefOr Boolean) -> JSIO ()
  setRepeat a b = primJS $ KeyboardEventInit.prim__setRepeat a b

  export
  setRepeat' : (obj : KeyboardEventInit) -> JSIO ()
  setRepeat' a = setRepeat a undef

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (screenX : UndefOr Int32)
      -> (screenY : UndefOr Int32)
      -> (clientX : UndefOr Int32)
      -> (clientY : UndefOr Int32)
      -> (button : UndefOr Int16)
      -> (buttons : UndefOr UInt16)
      -> (relatedTarget : UndefOr (Nullable EventTarget))
      -> JSIO MouseEventInit
  new a b c d e f g = primJS $ MouseEventInit.prim__new a b c d e f g

  export
  new' : JSIO MouseEventInit
  new' = new undef undef undef undef undef undef undef
  
  export
  button : (obj : MouseEventInit) -> JSIO (UndefOr Int16)
  button a = primJS $ MouseEventInit.prim__button a
  
  export
  setButton : (obj : MouseEventInit) -> (value : UndefOr Int16) -> JSIO ()
  setButton a b = primJS $ MouseEventInit.prim__setButton a b

  export
  setButton' : (obj : MouseEventInit) -> JSIO ()
  setButton' a = setButton a undef
  
  export
  buttons : (obj : MouseEventInit) -> JSIO (UndefOr UInt16)
  buttons a = primJS $ MouseEventInit.prim__buttons a
  
  export
  setButtons : (obj : MouseEventInit) -> (value : UndefOr UInt16) -> JSIO ()
  setButtons a b = primJS $ MouseEventInit.prim__setButtons a b

  export
  setButtons' : (obj : MouseEventInit) -> JSIO ()
  setButtons' a = setButtons a undef
  
  export
  clientX : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  clientX a = primJS $ MouseEventInit.prim__clientX a
  
  export
  setClientX : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setClientX a b = primJS $ MouseEventInit.prim__setClientX a b

  export
  setClientX' : (obj : MouseEventInit) -> JSIO ()
  setClientX' a = setClientX a undef
  
  export
  clientY : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  clientY a = primJS $ MouseEventInit.prim__clientY a
  
  export
  setClientY : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setClientY a b = primJS $ MouseEventInit.prim__setClientY a b

  export
  setClientY' : (obj : MouseEventInit) -> JSIO ()
  setClientY' a = setClientY a undef
  
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
  setRelatedTarget' : (obj : MouseEventInit) -> JSIO ()
  setRelatedTarget' a = setRelatedTarget a undef
  
  export
  screenX : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  screenX a = primJS $ MouseEventInit.prim__screenX a
  
  export
  setScreenX : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setScreenX a b = primJS $ MouseEventInit.prim__setScreenX a b

  export
  setScreenX' : (obj : MouseEventInit) -> JSIO ()
  setScreenX' a = setScreenX a undef
  
  export
  screenY : (obj : MouseEventInit) -> JSIO (UndefOr Int32)
  screenY a = primJS $ MouseEventInit.prim__screenY a
  
  export
  setScreenY : (obj : MouseEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setScreenY a b = primJS $ MouseEventInit.prim__setScreenY a b

  export
  setScreenY' : (obj : MouseEventInit) -> JSIO ()
  setScreenY' a = setScreenY a undef

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (view : UndefOr (Nullable Window))
      -> (detail : UndefOr Int32)
      -> JSIO UIEventInit
  new a b = primJS $ UIEventInit.prim__new a b

  export
  new' : JSIO UIEventInit
  new' = new undef undef
  
  export
  detail : (obj : UIEventInit) -> JSIO (UndefOr Int32)
  detail a = primJS $ UIEventInit.prim__detail a
  
  export
  setDetail : (obj : UIEventInit) -> (value : UndefOr Int32) -> JSIO ()
  setDetail a b = primJS $ UIEventInit.prim__setDetail a b

  export
  setDetail' : (obj : UIEventInit) -> JSIO ()
  setDetail' a = setDetail a undef
  
  export
  view : (obj : UIEventInit) -> JSIO (UndefOr (Nullable Window))
  view a = primJS $ UIEventInit.prim__view a
  
  export
  setView :  (obj : UIEventInit)
          -> (value : UndefOr (Nullable Window))
          -> JSIO ()
  setView a b = primJS $ UIEventInit.prim__setView a b

  export
  setView' : (obj : UIEventInit) -> JSIO ()
  setView' a = setView a undef

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
  new :  (deltaX : UndefOr Double)
      -> (deltaY : UndefOr Double)
      -> (deltaZ : UndefOr Double)
      -> (deltaMode : UndefOr UInt32)
      -> JSIO WheelEventInit
  new a b c d = primJS $ WheelEventInit.prim__new a b c d

  export
  new' : JSIO WheelEventInit
  new' = new undef undef undef undef
  
  export
  deltaMode : (obj : WheelEventInit) -> JSIO (UndefOr UInt32)
  deltaMode a = primJS $ WheelEventInit.prim__deltaMode a
  
  export
  setDeltaMode : (obj : WheelEventInit) -> (value : UndefOr UInt32) -> JSIO ()
  setDeltaMode a b = primJS $ WheelEventInit.prim__setDeltaMode a b

  export
  setDeltaMode' : (obj : WheelEventInit) -> JSIO ()
  setDeltaMode' a = setDeltaMode a undef
  
  export
  deltaX : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaX a = primJS $ WheelEventInit.prim__deltaX a
  
  export
  setDeltaX : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaX a b = primJS $ WheelEventInit.prim__setDeltaX a b

  export
  setDeltaX' : (obj : WheelEventInit) -> JSIO ()
  setDeltaX' a = setDeltaX a undef
  
  export
  deltaY : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaY a = primJS $ WheelEventInit.prim__deltaY a
  
  export
  setDeltaY : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaY a b = primJS $ WheelEventInit.prim__setDeltaY a b

  export
  setDeltaY' : (obj : WheelEventInit) -> JSIO ()
  setDeltaY' a = setDeltaY a undef
  
  export
  deltaZ : (obj : WheelEventInit) -> JSIO (UndefOr Double)
  deltaZ a = primJS $ WheelEventInit.prim__deltaZ a
  
  export
  setDeltaZ : (obj : WheelEventInit) -> (value : UndefOr Double) -> JSIO ()
  setDeltaZ a b = primJS $ WheelEventInit.prim__setDeltaZ a b

  export
  setDeltaZ' : (obj : WheelEventInit) -> JSIO ()
  setDeltaZ' a = setDeltaZ a undef
