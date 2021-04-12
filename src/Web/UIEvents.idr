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
  relatedTarget : (obj : FocusEvent) -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "FocusEvent.relatedTarget"
                  $ FocusEvent.prim__relatedTarget a

namespace InputEvent
  
  public export
  JSType InputEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  data_ : (obj : InputEvent) -> JSIO (Maybe String)
  data_ a = tryJS "InputEvent.data_" $ InputEvent.prim__data a
  
  export
  inputType : (obj : InputEvent) -> JSIO String
  inputType a = primJS $ InputEvent.prim__inputType a
  
  export
  isComposing : (obj : InputEvent) -> JSIO Bool
  isComposing a = tryJS "InputEvent.isComposing"
                $ InputEvent.prim__isComposing a

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
  altKey : (obj : KeyboardEvent) -> JSIO Bool
  altKey a = tryJS "KeyboardEvent.altKey" $ KeyboardEvent.prim__altKey a
  
  export
  charCode : (obj : KeyboardEvent) -> JSIO UInt32
  charCode a = primJS $ KeyboardEvent.prim__charCode a
  
  export
  code : (obj : KeyboardEvent) -> JSIO String
  code a = primJS $ KeyboardEvent.prim__code a
  
  export
  ctrlKey : (obj : KeyboardEvent) -> JSIO Bool
  ctrlKey a = tryJS "KeyboardEvent.ctrlKey" $ KeyboardEvent.prim__ctrlKey a
  
  export
  isComposing : (obj : KeyboardEvent) -> JSIO Bool
  isComposing a = tryJS "KeyboardEvent.isComposing"
                $ KeyboardEvent.prim__isComposing a
  
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
  getModifierState a b = tryJS "KeyboardEvent.getModifierState"
                       $ KeyboardEvent.prim__getModifierState a b

namespace MouseEvent
  
  public export
  JSType MouseEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
  export
  altKey : (obj : MouseEvent) -> JSIO Bool
  altKey a = tryJS "MouseEvent.altKey" $ MouseEvent.prim__altKey a
  
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
  ctrlKey : (obj : MouseEvent) -> JSIO Bool
  ctrlKey a = tryJS "MouseEvent.ctrlKey" $ MouseEvent.prim__ctrlKey a
  
  export
  metaKey : (obj : MouseEvent) -> JSIO Bool
  metaKey a = tryJS "MouseEvent.metaKey" $ MouseEvent.prim__metaKey a
  
  export
  relatedTarget : (obj : MouseEvent) -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "MouseEvent.relatedTarget"
                  $ MouseEvent.prim__relatedTarget a
  
  export
  screenX : (obj : MouseEvent) -> JSIO Int32
  screenX a = primJS $ MouseEvent.prim__screenX a
  
  export
  screenY : (obj : MouseEvent) -> JSIO Int32
  screenY a = primJS $ MouseEvent.prim__screenY a
  
  export
  shiftKey : (obj : MouseEvent) -> JSIO Bool
  shiftKey a = tryJS "MouseEvent.shiftKey" $ MouseEvent.prim__shiftKey a
  
  export
  getModifierState : (obj : MouseEvent) -> (keyArg : String) -> JSIO Bool
  getModifierState a b = tryJS "MouseEvent.getModifierState"
                       $ MouseEvent.prim__getModifierState a b

namespace UIEvent
  
  public export
  JSType UIEvent where
    parents =  [ Event , Object ]

    mixins =  []
  
  export
  detail : (obj : UIEvent) -> JSIO Int32
  detail a = primJS $ UIEvent.prim__detail a
  
  export
  view : (obj : UIEvent) -> JSIO (Maybe Window)
  view a = tryJS "UIEvent.view" $ UIEvent.prim__view a
  
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
  new : (data_ : Optional String) -> JSIO CompositionEventInit
  new a = primJS $ CompositionEventInit.prim__new (toFFI a)

  export
  new' : JSIO CompositionEventInit
  new' = primJS $ CompositionEventInit.prim__new undef
  
  export
  data_ : (obj : CompositionEventInit) -> JSIO $ Optional String
  data_ a = tryJS "CompositionEventInit.data_"
          $ CompositionEventInit.prim__data a
  
  export
  setData : (obj : CompositionEventInit) -> (value : Optional String) -> JSIO ()
  setData a b = primJS $ CompositionEventInit.prim__setData a (toFFI b)

  export
  setData' : (obj : CompositionEventInit) -> JSIO ()
  setData' a = primJS $ CompositionEventInit.prim__setData a undef

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (ctrlKey : Optional Bool)
      -> (shiftKey : Optional Bool)
      -> (altKey : Optional Bool)
      -> (metaKey : Optional Bool)
      -> (modifierAltGraph : Optional Bool)
      -> (modifierCapsLock : Optional Bool)
      -> (modifierFn : Optional Bool)
      -> (modifierFnLock : Optional Bool)
      -> (modifierHyper : Optional Bool)
      -> (modifierNumLock : Optional Bool)
      -> (modifierScrollLock : Optional Bool)
      -> (modifierSuper : Optional Bool)
      -> (modifierSymbol : Optional Bool)
      -> (modifierSymbolLock : Optional Bool)
      -> JSIO EventModifierInit
  new a b c d e f g h i j k l m n = primJS
                                  $ EventModifierInit.prim__new (toFFI a)
                                                                (toFFI b)
                                                                (toFFI c)
                                                                (toFFI d)
                                                                (toFFI e)
                                                                (toFFI f)
                                                                (toFFI g)
                                                                (toFFI h)
                                                                (toFFI i)
                                                                (toFFI j)
                                                                (toFFI k)
                                                                (toFFI l)
                                                                (toFFI m)
                                                                (toFFI n)

  export
  new' : JSIO EventModifierInit
  new' = primJS
       $ EventModifierInit.prim__new undef
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
  altKey : (obj : EventModifierInit) -> JSIO $ Optional Bool
  altKey a = tryJS "EventModifierInit.altKey" $ EventModifierInit.prim__altKey a
  
  export
  setAltKey : (obj : EventModifierInit) -> (value : Optional Bool) -> JSIO ()
  setAltKey a b = primJS $ EventModifierInit.prim__setAltKey a (toFFI b)

  export
  setAltKey' : (obj : EventModifierInit) -> JSIO ()
  setAltKey' a = primJS $ EventModifierInit.prim__setAltKey a undef
  
  export
  ctrlKey : (obj : EventModifierInit) -> JSIO $ Optional Bool
  ctrlKey a = tryJS "EventModifierInit.ctrlKey"
            $ EventModifierInit.prim__ctrlKey a
  
  export
  setCtrlKey : (obj : EventModifierInit) -> (value : Optional Bool) -> JSIO ()
  setCtrlKey a b = primJS $ EventModifierInit.prim__setCtrlKey a (toFFI b)

  export
  setCtrlKey' : (obj : EventModifierInit) -> JSIO ()
  setCtrlKey' a = primJS $ EventModifierInit.prim__setCtrlKey a undef
  
  export
  metaKey : (obj : EventModifierInit) -> JSIO $ Optional Bool
  metaKey a = tryJS "EventModifierInit.metaKey"
            $ EventModifierInit.prim__metaKey a
  
  export
  setMetaKey : (obj : EventModifierInit) -> (value : Optional Bool) -> JSIO ()
  setMetaKey a b = primJS $ EventModifierInit.prim__setMetaKey a (toFFI b)

  export
  setMetaKey' : (obj : EventModifierInit) -> JSIO ()
  setMetaKey' a = primJS $ EventModifierInit.prim__setMetaKey a undef
  
  export
  modifierAltGraph : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierAltGraph a = tryJS "EventModifierInit.modifierAltGraph"
                     $ EventModifierInit.prim__modifierAltGraph a
  
  export
  setModifierAltGraph :  (obj : EventModifierInit)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setModifierAltGraph a b = primJS
                          $ EventModifierInit.prim__setModifierAltGraph a
                                                                        (toFFI b)

  export
  setModifierAltGraph' : (obj : EventModifierInit) -> JSIO ()
  setModifierAltGraph' a = primJS
                         $ EventModifierInit.prim__setModifierAltGraph a undef
  
  export
  modifierCapsLock : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierCapsLock a = tryJS "EventModifierInit.modifierCapsLock"
                     $ EventModifierInit.prim__modifierCapsLock a
  
  export
  setModifierCapsLock :  (obj : EventModifierInit)
                      -> (value : Optional Bool)
                      -> JSIO ()
  setModifierCapsLock a b = primJS
                          $ EventModifierInit.prim__setModifierCapsLock a
                                                                        (toFFI b)

  export
  setModifierCapsLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierCapsLock' a = primJS
                         $ EventModifierInit.prim__setModifierCapsLock a undef
  
  export
  modifierFn : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierFn a = tryJS "EventModifierInit.modifierFn"
               $ EventModifierInit.prim__modifierFn a
  
  export
  setModifierFn :  (obj : EventModifierInit)
                -> (value : Optional Bool)
                -> JSIO ()
  setModifierFn a b = primJS $ EventModifierInit.prim__setModifierFn a (toFFI b)

  export
  setModifierFn' : (obj : EventModifierInit) -> JSIO ()
  setModifierFn' a = primJS $ EventModifierInit.prim__setModifierFn a undef
  
  export
  modifierFnLock : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierFnLock a = tryJS "EventModifierInit.modifierFnLock"
                   $ EventModifierInit.prim__modifierFnLock a
  
  export
  setModifierFnLock :  (obj : EventModifierInit)
                    -> (value : Optional Bool)
                    -> JSIO ()
  setModifierFnLock a b = primJS
                        $ EventModifierInit.prim__setModifierFnLock a (toFFI b)

  export
  setModifierFnLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierFnLock' a = primJS
                       $ EventModifierInit.prim__setModifierFnLock a undef
  
  export
  modifierHyper : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierHyper a = tryJS "EventModifierInit.modifierHyper"
                  $ EventModifierInit.prim__modifierHyper a
  
  export
  setModifierHyper :  (obj : EventModifierInit)
                   -> (value : Optional Bool)
                   -> JSIO ()
  setModifierHyper a b = primJS
                       $ EventModifierInit.prim__setModifierHyper a (toFFI b)

  export
  setModifierHyper' : (obj : EventModifierInit) -> JSIO ()
  setModifierHyper' a = primJS
                      $ EventModifierInit.prim__setModifierHyper a undef
  
  export
  modifierNumLock : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierNumLock a = tryJS "EventModifierInit.modifierNumLock"
                    $ EventModifierInit.prim__modifierNumLock a
  
  export
  setModifierNumLock :  (obj : EventModifierInit)
                     -> (value : Optional Bool)
                     -> JSIO ()
  setModifierNumLock a b = primJS
                         $ EventModifierInit.prim__setModifierNumLock a
                                                                      (toFFI b)

  export
  setModifierNumLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierNumLock' a = primJS
                        $ EventModifierInit.prim__setModifierNumLock a undef
  
  export
  modifierScrollLock : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierScrollLock a = tryJS "EventModifierInit.modifierScrollLock"
                       $ EventModifierInit.prim__modifierScrollLock a
  
  export
  setModifierScrollLock :  (obj : EventModifierInit)
                        -> (value : Optional Bool)
                        -> JSIO ()
  setModifierScrollLock a b = primJS
                            $ EventModifierInit.prim__setModifierScrollLock a
                                                                            (toFFI b)

  export
  setModifierScrollLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierScrollLock' a = primJS
                           $ EventModifierInit.prim__setModifierScrollLock a
                                                                           undef
  
  export
  modifierSuper : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierSuper a = tryJS "EventModifierInit.modifierSuper"
                  $ EventModifierInit.prim__modifierSuper a
  
  export
  setModifierSuper :  (obj : EventModifierInit)
                   -> (value : Optional Bool)
                   -> JSIO ()
  setModifierSuper a b = primJS
                       $ EventModifierInit.prim__setModifierSuper a (toFFI b)

  export
  setModifierSuper' : (obj : EventModifierInit) -> JSIO ()
  setModifierSuper' a = primJS
                      $ EventModifierInit.prim__setModifierSuper a undef
  
  export
  modifierSymbol : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierSymbol a = tryJS "EventModifierInit.modifierSymbol"
                   $ EventModifierInit.prim__modifierSymbol a
  
  export
  setModifierSymbol :  (obj : EventModifierInit)
                    -> (value : Optional Bool)
                    -> JSIO ()
  setModifierSymbol a b = primJS
                        $ EventModifierInit.prim__setModifierSymbol a (toFFI b)

  export
  setModifierSymbol' : (obj : EventModifierInit) -> JSIO ()
  setModifierSymbol' a = primJS
                       $ EventModifierInit.prim__setModifierSymbol a undef
  
  export
  modifierSymbolLock : (obj : EventModifierInit) -> JSIO $ Optional Bool
  modifierSymbolLock a = tryJS "EventModifierInit.modifierSymbolLock"
                       $ EventModifierInit.prim__modifierSymbolLock a
  
  export
  setModifierSymbolLock :  (obj : EventModifierInit)
                        -> (value : Optional Bool)
                        -> JSIO ()
  setModifierSymbolLock a b = primJS
                            $ EventModifierInit.prim__setModifierSymbolLock a
                                                                            (toFFI b)

  export
  setModifierSymbolLock' : (obj : EventModifierInit) -> JSIO ()
  setModifierSymbolLock' a = primJS
                           $ EventModifierInit.prim__setModifierSymbolLock a
                                                                           undef
  
  export
  shiftKey : (obj : EventModifierInit) -> JSIO $ Optional Bool
  shiftKey a = tryJS "EventModifierInit.shiftKey"
             $ EventModifierInit.prim__shiftKey a
  
  export
  setShiftKey : (obj : EventModifierInit) -> (value : Optional Bool) -> JSIO ()
  setShiftKey a b = primJS $ EventModifierInit.prim__setShiftKey a (toFFI b)

  export
  setShiftKey' : (obj : EventModifierInit) -> JSIO ()
  setShiftKey' a = primJS $ EventModifierInit.prim__setShiftKey a undef

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new : (relatedTarget : Optional (Maybe EventTarget)) -> JSIO FocusEventInit
  new a = primJS $ FocusEventInit.prim__new (toFFI a)

  export
  new' : JSIO FocusEventInit
  new' = primJS $ FocusEventInit.prim__new undef
  
  export
  relatedTarget : (obj : FocusEventInit) -> JSIO $ Optional (Maybe EventTarget)
  relatedTarget a = tryJS "FocusEventInit.relatedTarget"
                  $ FocusEventInit.prim__relatedTarget a
  
  export
  setRelatedTarget :  (obj : FocusEventInit)
                   -> (value : Optional (Maybe EventTarget))
                   -> JSIO ()
  setRelatedTarget a b = primJS
                       $ FocusEventInit.prim__setRelatedTarget a (toFFI b)

  export
  setRelatedTarget' : (obj : FocusEventInit) -> JSIO ()
  setRelatedTarget' a = primJS $ FocusEventInit.prim__setRelatedTarget a undef

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (data_ : Optional (Maybe String))
      -> (isComposing : Optional Bool)
      -> (inputType : Optional String)
      -> JSIO InputEventInit
  new a b c = primJS $ InputEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new' : JSIO InputEventInit
  new' = primJS $ InputEventInit.prim__new undef undef undef
  
  export
  data_ : (obj : InputEventInit) -> JSIO $ Optional (Maybe String)
  data_ a = tryJS "InputEventInit.data_" $ InputEventInit.prim__data a
  
  export
  setData :  (obj : InputEventInit)
          -> (value : Optional (Maybe String))
          -> JSIO ()
  setData a b = primJS $ InputEventInit.prim__setData a (toFFI b)

  export
  setData' : (obj : InputEventInit) -> JSIO ()
  setData' a = primJS $ InputEventInit.prim__setData a undef
  
  export
  inputType : (obj : InputEventInit) -> JSIO $ Optional String
  inputType a = tryJS "InputEventInit.inputType"
              $ InputEventInit.prim__inputType a
  
  export
  setInputType : (obj : InputEventInit) -> (value : Optional String) -> JSIO ()
  setInputType a b = primJS $ InputEventInit.prim__setInputType a (toFFI b)

  export
  setInputType' : (obj : InputEventInit) -> JSIO ()
  setInputType' a = primJS $ InputEventInit.prim__setInputType a undef
  
  export
  isComposing : (obj : InputEventInit) -> JSIO $ Optional Bool
  isComposing a = tryJS "InputEventInit.isComposing"
                $ InputEventInit.prim__isComposing a
  
  export
  setIsComposing : (obj : InputEventInit) -> (value : Optional Bool) -> JSIO ()
  setIsComposing a b = primJS $ InputEventInit.prim__setIsComposing a (toFFI b)

  export
  setIsComposing' : (obj : InputEventInit) -> JSIO ()
  setIsComposing' a = primJS $ InputEventInit.prim__setIsComposing a undef

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (key : Optional String)
      -> (code : Optional String)
      -> (location : Optional UInt32)
      -> (repeat : Optional Bool)
      -> (isComposing : Optional Bool)
      -> JSIO KeyboardEventInit
  new a b c d e = primJS
                $ KeyboardEventInit.prim__new (toFFI a)
                                              (toFFI b)
                                              (toFFI c)
                                              (toFFI d)
                                              (toFFI e)

  export
  new' : JSIO KeyboardEventInit
  new' = primJS $ KeyboardEventInit.prim__new undef undef undef undef undef
  
  export
  code : (obj : KeyboardEventInit) -> JSIO $ Optional String
  code a = tryJS "KeyboardEventInit.code" $ KeyboardEventInit.prim__code a
  
  export
  setCode : (obj : KeyboardEventInit) -> (value : Optional String) -> JSIO ()
  setCode a b = primJS $ KeyboardEventInit.prim__setCode a (toFFI b)

  export
  setCode' : (obj : KeyboardEventInit) -> JSIO ()
  setCode' a = primJS $ KeyboardEventInit.prim__setCode a undef
  
  export
  isComposing : (obj : KeyboardEventInit) -> JSIO $ Optional Bool
  isComposing a = tryJS "KeyboardEventInit.isComposing"
                $ KeyboardEventInit.prim__isComposing a
  
  export
  setIsComposing :  (obj : KeyboardEventInit)
                 -> (value : Optional Bool)
                 -> JSIO ()
  setIsComposing a b = primJS
                     $ KeyboardEventInit.prim__setIsComposing a (toFFI b)

  export
  setIsComposing' : (obj : KeyboardEventInit) -> JSIO ()
  setIsComposing' a = primJS $ KeyboardEventInit.prim__setIsComposing a undef
  
  export
  key : (obj : KeyboardEventInit) -> JSIO $ Optional String
  key a = tryJS "KeyboardEventInit.key" $ KeyboardEventInit.prim__key a
  
  export
  setKey : (obj : KeyboardEventInit) -> (value : Optional String) -> JSIO ()
  setKey a b = primJS $ KeyboardEventInit.prim__setKey a (toFFI b)

  export
  setKey' : (obj : KeyboardEventInit) -> JSIO ()
  setKey' a = primJS $ KeyboardEventInit.prim__setKey a undef
  
  export
  location : (obj : KeyboardEventInit) -> JSIO $ Optional UInt32
  location a = tryJS "KeyboardEventInit.location"
             $ KeyboardEventInit.prim__location a
  
  export
  setLocation :  (obj : KeyboardEventInit)
              -> (value : Optional UInt32)
              -> JSIO ()
  setLocation a b = primJS $ KeyboardEventInit.prim__setLocation a (toFFI b)

  export
  setLocation' : (obj : KeyboardEventInit) -> JSIO ()
  setLocation' a = primJS $ KeyboardEventInit.prim__setLocation a undef
  
  export
  repeat : (obj : KeyboardEventInit) -> JSIO $ Optional Bool
  repeat a = tryJS "KeyboardEventInit.repeat" $ KeyboardEventInit.prim__repeat a
  
  export
  setRepeat : (obj : KeyboardEventInit) -> (value : Optional Bool) -> JSIO ()
  setRepeat a b = primJS $ KeyboardEventInit.prim__setRepeat a (toFFI b)

  export
  setRepeat' : (obj : KeyboardEventInit) -> JSIO ()
  setRepeat' a = primJS $ KeyboardEventInit.prim__setRepeat a undef

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []
  
  export
  new :  (screenX : Optional Int32)
      -> (screenY : Optional Int32)
      -> (clientX : Optional Int32)
      -> (clientY : Optional Int32)
      -> (button : Optional Int16)
      -> (buttons : Optional UInt16)
      -> (relatedTarget : Optional (Maybe EventTarget))
      -> JSIO MouseEventInit
  new a b c d e f g = primJS
                    $ MouseEventInit.prim__new (toFFI a)
                                               (toFFI b)
                                               (toFFI c)
                                               (toFFI d)
                                               (toFFI e)
                                               (toFFI f)
                                               (toFFI g)

  export
  new' : JSIO MouseEventInit
  new' = primJS
       $ MouseEventInit.prim__new undef undef undef undef undef undef undef
  
  export
  button : (obj : MouseEventInit) -> JSIO $ Optional Int16
  button a = tryJS "MouseEventInit.button" $ MouseEventInit.prim__button a
  
  export
  setButton : (obj : MouseEventInit) -> (value : Optional Int16) -> JSIO ()
  setButton a b = primJS $ MouseEventInit.prim__setButton a (toFFI b)

  export
  setButton' : (obj : MouseEventInit) -> JSIO ()
  setButton' a = primJS $ MouseEventInit.prim__setButton a undef
  
  export
  buttons : (obj : MouseEventInit) -> JSIO $ Optional UInt16
  buttons a = tryJS "MouseEventInit.buttons" $ MouseEventInit.prim__buttons a
  
  export
  setButtons : (obj : MouseEventInit) -> (value : Optional UInt16) -> JSIO ()
  setButtons a b = primJS $ MouseEventInit.prim__setButtons a (toFFI b)

  export
  setButtons' : (obj : MouseEventInit) -> JSIO ()
  setButtons' a = primJS $ MouseEventInit.prim__setButtons a undef
  
  export
  clientX : (obj : MouseEventInit) -> JSIO $ Optional Int32
  clientX a = tryJS "MouseEventInit.clientX" $ MouseEventInit.prim__clientX a
  
  export
  setClientX : (obj : MouseEventInit) -> (value : Optional Int32) -> JSIO ()
  setClientX a b = primJS $ MouseEventInit.prim__setClientX a (toFFI b)

  export
  setClientX' : (obj : MouseEventInit) -> JSIO ()
  setClientX' a = primJS $ MouseEventInit.prim__setClientX a undef
  
  export
  clientY : (obj : MouseEventInit) -> JSIO $ Optional Int32
  clientY a = tryJS "MouseEventInit.clientY" $ MouseEventInit.prim__clientY a
  
  export
  setClientY : (obj : MouseEventInit) -> (value : Optional Int32) -> JSIO ()
  setClientY a b = primJS $ MouseEventInit.prim__setClientY a (toFFI b)

  export
  setClientY' : (obj : MouseEventInit) -> JSIO ()
  setClientY' a = primJS $ MouseEventInit.prim__setClientY a undef
  
  export
  relatedTarget : (obj : MouseEventInit) -> JSIO $ Optional (Maybe EventTarget)
  relatedTarget a = tryJS "MouseEventInit.relatedTarget"
                  $ MouseEventInit.prim__relatedTarget a
  
  export
  setRelatedTarget :  (obj : MouseEventInit)
                   -> (value : Optional (Maybe EventTarget))
                   -> JSIO ()
  setRelatedTarget a b = primJS
                       $ MouseEventInit.prim__setRelatedTarget a (toFFI b)

  export
  setRelatedTarget' : (obj : MouseEventInit) -> JSIO ()
  setRelatedTarget' a = primJS $ MouseEventInit.prim__setRelatedTarget a undef
  
  export
  screenX : (obj : MouseEventInit) -> JSIO $ Optional Int32
  screenX a = tryJS "MouseEventInit.screenX" $ MouseEventInit.prim__screenX a
  
  export
  setScreenX : (obj : MouseEventInit) -> (value : Optional Int32) -> JSIO ()
  setScreenX a b = primJS $ MouseEventInit.prim__setScreenX a (toFFI b)

  export
  setScreenX' : (obj : MouseEventInit) -> JSIO ()
  setScreenX' a = primJS $ MouseEventInit.prim__setScreenX a undef
  
  export
  screenY : (obj : MouseEventInit) -> JSIO $ Optional Int32
  screenY a = tryJS "MouseEventInit.screenY" $ MouseEventInit.prim__screenY a
  
  export
  setScreenY : (obj : MouseEventInit) -> (value : Optional Int32) -> JSIO ()
  setScreenY a b = primJS $ MouseEventInit.prim__setScreenY a (toFFI b)

  export
  setScreenY' : (obj : MouseEventInit) -> JSIO ()
  setScreenY' a = primJS $ MouseEventInit.prim__setScreenY a undef

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
  
  export
  new :  (view : Optional (Maybe Window))
      -> (detail : Optional Int32)
      -> JSIO UIEventInit
  new a b = primJS $ UIEventInit.prim__new (toFFI a) (toFFI b)

  export
  new' : JSIO UIEventInit
  new' = primJS $ UIEventInit.prim__new undef undef
  
  export
  detail : (obj : UIEventInit) -> JSIO $ Optional Int32
  detail a = tryJS "UIEventInit.detail" $ UIEventInit.prim__detail a
  
  export
  setDetail : (obj : UIEventInit) -> (value : Optional Int32) -> JSIO ()
  setDetail a b = primJS $ UIEventInit.prim__setDetail a (toFFI b)

  export
  setDetail' : (obj : UIEventInit) -> JSIO ()
  setDetail' a = primJS $ UIEventInit.prim__setDetail a undef
  
  export
  view : (obj : UIEventInit) -> JSIO $ Optional (Maybe Window)
  view a = tryJS "UIEventInit.view" $ UIEventInit.prim__view a
  
  export
  setView : (obj : UIEventInit) -> (value : Optional (Maybe Window)) -> JSIO ()
  setView a b = primJS $ UIEventInit.prim__setView a (toFFI b)

  export
  setView' : (obj : UIEventInit) -> JSIO ()
  setView' a = primJS $ UIEventInit.prim__setView a undef

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
  new :  (deltaX : Optional Double)
      -> (deltaY : Optional Double)
      -> (deltaZ : Optional Double)
      -> (deltaMode : Optional UInt32)
      -> JSIO WheelEventInit
  new a b c d = primJS
              $ WheelEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new' : JSIO WheelEventInit
  new' = primJS $ WheelEventInit.prim__new undef undef undef undef
  
  export
  deltaMode : (obj : WheelEventInit) -> JSIO $ Optional UInt32
  deltaMode a = tryJS "WheelEventInit.deltaMode"
              $ WheelEventInit.prim__deltaMode a
  
  export
  setDeltaMode : (obj : WheelEventInit) -> (value : Optional UInt32) -> JSIO ()
  setDeltaMode a b = primJS $ WheelEventInit.prim__setDeltaMode a (toFFI b)

  export
  setDeltaMode' : (obj : WheelEventInit) -> JSIO ()
  setDeltaMode' a = primJS $ WheelEventInit.prim__setDeltaMode a undef
  
  export
  deltaX : (obj : WheelEventInit) -> JSIO $ Optional Double
  deltaX a = tryJS "WheelEventInit.deltaX" $ WheelEventInit.prim__deltaX a
  
  export
  setDeltaX : (obj : WheelEventInit) -> (value : Optional Double) -> JSIO ()
  setDeltaX a b = primJS $ WheelEventInit.prim__setDeltaX a (toFFI b)

  export
  setDeltaX' : (obj : WheelEventInit) -> JSIO ()
  setDeltaX' a = primJS $ WheelEventInit.prim__setDeltaX a undef
  
  export
  deltaY : (obj : WheelEventInit) -> JSIO $ Optional Double
  deltaY a = tryJS "WheelEventInit.deltaY" $ WheelEventInit.prim__deltaY a
  
  export
  setDeltaY : (obj : WheelEventInit) -> (value : Optional Double) -> JSIO ()
  setDeltaY a b = primJS $ WheelEventInit.prim__setDeltaY a (toFFI b)

  export
  setDeltaY' : (obj : WheelEventInit) -> JSIO ()
  setDeltaY' a = primJS $ WheelEventInit.prim__setDeltaY a undef
  
  export
  deltaZ : (obj : WheelEventInit) -> JSIO $ Optional Double
  deltaZ a = tryJS "WheelEventInit.deltaZ" $ WheelEventInit.prim__deltaZ a
  
  export
  setDeltaZ : (obj : WheelEventInit) -> (value : Optional Double) -> JSIO ()
  setDeltaZ a b = primJS $ WheelEventInit.prim__setDeltaZ a (toFFI b)

  export
  setDeltaZ' : (obj : WheelEventInit) -> JSIO ()
  setDeltaZ' a = primJS $ WheelEventInit.prim__setDeltaZ a undef
