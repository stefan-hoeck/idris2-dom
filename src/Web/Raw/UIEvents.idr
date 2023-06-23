module Web.Raw.UIEvents

import JS
import Web.Internal.UIEventsPrim
import Web.Internal.Types

%default total


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent

  export
  data_ : (obj : CompositionEvent) -> JSIO String
  data_ a = primJS $ CompositionEvent.prim__data a



namespace FocusEvent

  export
  relatedTarget : (obj : FocusEvent) -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "FocusEvent.relatedTarget" $
    FocusEvent.prim__relatedTarget a



namespace InputEvent

  export
  data_ : (obj : InputEvent) -> JSIO (Maybe String)
  data_ a = tryJS "InputEvent.data_" $ InputEvent.prim__data a


  export
  inputType : (obj : InputEvent) -> JSIO String
  inputType a = primJS $ InputEvent.prim__inputType a


  export
  isComposing : (obj : InputEvent) -> JSIO Bool
  isComposing a = tryJS "InputEvent.isComposing" $
    InputEvent.prim__isComposing a



namespace KeyboardEvent

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



namespace MouseEvent

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



namespace UIEvent

  export
  detail : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO Int32
  detail a = primJS $ UIEvent.prim__detail (cast a)


  export
  view : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO (Maybe Window)
  view a = tryJS "UIEvent.view" $ UIEvent.prim__view (cast a)


  export
  which : {auto _ : Cast t1 UIEvent} -> (obj : t1) -> JSIO Bits32
  which a = primJS $ UIEvent.prim__which (cast a)



namespace WheelEvent

  export
  DOM_DELTA_LINE : Bits32
  DOM_DELTA_LINE = 0x1


  export
  DOM_DELTA_PAGE : Bits32
  DOM_DELTA_PAGE = 0x2


  export
  DOM_DELTA_PIXEL : Bits32
  DOM_DELTA_PIXEL = 0x0


  export
  deltaMode : (obj : WheelEvent) -> JSIO Bits32
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

  export
  new' : (data_ : Optional String) -> JSIO CompositionEventInit
  new' a = primJS $ CompositionEventInit.prim__new (toFFI a)

  export
  new : JSIO CompositionEventInit
  new = primJS $ CompositionEventInit.prim__new undef


  export
  data_ :
       {auto _ : Cast t CompositionEventInit}
    -> t
    -> Attribute True Optional String
  data_ v = fromUndefOrPrim
              "CompositionEventInit.getdata"
              prim__data
              prim__setData
              ""
              (cast {to = CompositionEventInit} v)



namespace EventModifierInit

  export
  new' :
       (ctrlKey : Optional Bool)
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
  new' a b c d e f g h i j k l m n = primJS $
    EventModifierInit.prim__new
      (toFFI a)
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
  new : JSIO EventModifierInit
  new = primJS $
    EventModifierInit.prim__new
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
      undef


  export
  altKey :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  altKey v = fromUndefOrPrim
               "EventModifierInit.getaltKey"
               prim__altKey
               prim__setAltKey
               False
               (cast {to = EventModifierInit} v)


  export
  ctrlKey :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  ctrlKey v = fromUndefOrPrim
                "EventModifierInit.getctrlKey"
                prim__ctrlKey
                prim__setCtrlKey
                False
                (cast {to = EventModifierInit} v)


  export
  metaKey :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  metaKey v = fromUndefOrPrim
                "EventModifierInit.getmetaKey"
                prim__metaKey
                prim__setMetaKey
                False
                (cast {to = EventModifierInit} v)


  export
  modifierAltGraph :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierAltGraph v = fromUndefOrPrim
                         "EventModifierInit.getmodifierAltGraph"
                         prim__modifierAltGraph
                         prim__setModifierAltGraph
                         False
                         (cast {to = EventModifierInit} v)


  export
  modifierCapsLock :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierCapsLock v = fromUndefOrPrim
                         "EventModifierInit.getmodifierCapsLock"
                         prim__modifierCapsLock
                         prim__setModifierCapsLock
                         False
                         (cast {to = EventModifierInit} v)


  export
  modifierFn :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierFn v = fromUndefOrPrim
                   "EventModifierInit.getmodifierFn"
                   prim__modifierFn
                   prim__setModifierFn
                   False
                   (cast {to = EventModifierInit} v)


  export
  modifierFnLock :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierFnLock v = fromUndefOrPrim
                       "EventModifierInit.getmodifierFnLock"
                       prim__modifierFnLock
                       prim__setModifierFnLock
                       False
                       (cast {to = EventModifierInit} v)


  export
  modifierHyper :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierHyper v = fromUndefOrPrim
                      "EventModifierInit.getmodifierHyper"
                      prim__modifierHyper
                      prim__setModifierHyper
                      False
                      (cast {to = EventModifierInit} v)


  export
  modifierNumLock :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierNumLock v = fromUndefOrPrim
                        "EventModifierInit.getmodifierNumLock"
                        prim__modifierNumLock
                        prim__setModifierNumLock
                        False
                        (cast {to = EventModifierInit} v)


  export
  modifierScrollLock :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierScrollLock v = fromUndefOrPrim
                           "EventModifierInit.getmodifierScrollLock"
                           prim__modifierScrollLock
                           prim__setModifierScrollLock
                           False
                           (cast {to = EventModifierInit} v)


  export
  modifierSuper :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierSuper v = fromUndefOrPrim
                      "EventModifierInit.getmodifierSuper"
                      prim__modifierSuper
                      prim__setModifierSuper
                      False
                      (cast {to = EventModifierInit} v)


  export
  modifierSymbol :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierSymbol v = fromUndefOrPrim
                       "EventModifierInit.getmodifierSymbol"
                       prim__modifierSymbol
                       prim__setModifierSymbol
                       False
                       (cast {to = EventModifierInit} v)


  export
  modifierSymbolLock :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  modifierSymbolLock v = fromUndefOrPrim
                           "EventModifierInit.getmodifierSymbolLock"
                           prim__modifierSymbolLock
                           prim__setModifierSymbolLock
                           False
                           (cast {to = EventModifierInit} v)


  export
  shiftKey :
       {auto _ : Cast t EventModifierInit}
    -> t
    -> Attribute True Optional Bool
  shiftKey v = fromUndefOrPrim
                 "EventModifierInit.getshiftKey"
                 prim__shiftKey
                 prim__setShiftKey
                 False
                 (cast {to = EventModifierInit} v)



namespace FocusEventInit

  export
  new' :
       {auto _ : Cast t1 EventTarget}
    -> (relatedTarget : Optional (Maybe t1))
    -> JSIO FocusEventInit
  new' a = primJS $ FocusEventInit.prim__new (omyUp a)

  export
  new : JSIO FocusEventInit
  new = primJS $ FocusEventInit.prim__new undef


  export
  relatedTarget :
       {auto _ : Cast t FocusEventInit}
    -> t
    -> Attribute True Optional (Maybe EventTarget)
  relatedTarget v = fromUndefOrPrim
                      "FocusEventInit.getrelatedTarget"
                      prim__relatedTarget
                      prim__setRelatedTarget
                      Nothing
                      (cast {to = FocusEventInit} v)



namespace InputEventInit

  export
  new' :
       (data_ : Optional (Maybe String))
    -> (isComposing : Optional Bool)
    -> (inputType : Optional String)
    -> JSIO InputEventInit
  new' a b c = primJS $ InputEventInit.prim__new (toFFI a) (toFFI b) (toFFI c)

  export
  new : JSIO InputEventInit
  new = primJS $ InputEventInit.prim__new undef undef undef


  export
  data_ :
       {auto _ : Cast t InputEventInit}
    -> t
    -> Attribute True Optional (Maybe String)
  data_ v = fromUndefOrPrim
              "InputEventInit.getdata"
              prim__data
              prim__setData
              (Just "")
              (cast {to = InputEventInit} v)


  export
  inputType :
       {auto _ : Cast t InputEventInit}
    -> t
    -> Attribute True Optional String
  inputType v = fromUndefOrPrim
                  "InputEventInit.getinputType"
                  prim__inputType
                  prim__setInputType
                  ""
                  (cast {to = InputEventInit} v)


  export
  isComposing :
       {auto _ : Cast t InputEventInit}
    -> t
    -> Attribute True Optional Bool
  isComposing v = fromUndefOrPrim
                    "InputEventInit.getisComposing"
                    prim__isComposing
                    prim__setIsComposing
                    False
                    (cast {to = InputEventInit} v)



namespace KeyboardEventInit

  export
  new' :
       (key : Optional String)
    -> (code : Optional String)
    -> (location : Optional Bits32)
    -> (repeat : Optional Bool)
    -> (isComposing : Optional Bool)
    -> JSIO KeyboardEventInit
  new' a b c d e = primJS $
    KeyboardEventInit.prim__new
      (toFFI a)
      (toFFI b)
      (toFFI c)
      (toFFI d)
      (toFFI e)

  export
  new : JSIO KeyboardEventInit
  new = primJS $ KeyboardEventInit.prim__new undef undef undef undef undef


  export
  code :
       {auto _ : Cast t KeyboardEventInit}
    -> t
    -> Attribute True Optional String
  code v = fromUndefOrPrim
             "KeyboardEventInit.getcode"
             prim__code
             prim__setCode
             ""
             (cast {to = KeyboardEventInit} v)


  export
  isComposing :
       {auto _ : Cast t KeyboardEventInit}
    -> t
    -> Attribute True Optional Bool
  isComposing v = fromUndefOrPrim
                    "KeyboardEventInit.getisComposing"
                    prim__isComposing
                    prim__setIsComposing
                    False
                    (cast {to = KeyboardEventInit} v)


  export
  key :
       {auto _ : Cast t KeyboardEventInit}
    -> t
    -> Attribute True Optional String
  key v = fromUndefOrPrim
            "KeyboardEventInit.getkey"
            prim__key
            prim__setKey
            ""
            (cast {to = KeyboardEventInit} v)


  export
  location :
       {auto _ : Cast t KeyboardEventInit}
    -> t
    -> Attribute True Optional Bits32
  location v = fromUndefOrPrim
                 "KeyboardEventInit.getlocation"
                 prim__location
                 prim__setLocation
                 0
                 (cast {to = KeyboardEventInit} v)


  export
  repeat :
       {auto _ : Cast t KeyboardEventInit}
    -> t
    -> Attribute True Optional Bool
  repeat v = fromUndefOrPrim
               "KeyboardEventInit.getrepeat"
               prim__repeat
               prim__setRepeat
               False
               (cast {to = KeyboardEventInit} v)



namespace MouseEventInit

  export
  new' :
       {auto _ : Cast t3 EventTarget}
    -> (button : Optional Int16)
    -> (buttons : Optional Bits16)
    -> (relatedTarget : Optional (Maybe t3))
    -> (screenX : Optional Double)
    -> (screenY : Optional Double)
    -> (clientX : Optional Double)
    -> (clientY : Optional Double)
    -> JSIO MouseEventInit
  new' a b c d e f g = primJS $
    MouseEventInit.prim__new
      (toFFI a)
      (toFFI b)
      (omyUp c)
      (toFFI d)
      (toFFI e)
      (toFFI f)
      (toFFI g)

  export
  new : JSIO MouseEventInit
  new = primJS $
    MouseEventInit.prim__new undef undef undef undef undef undef undef


  export
  button :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Int16
  button v = fromUndefOrPrim
               "MouseEventInit.getbutton"
               prim__button
               prim__setButton
               0
               (cast {to = MouseEventInit} v)


  export
  buttons :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Bits16
  buttons v = fromUndefOrPrim
                "MouseEventInit.getbuttons"
                prim__buttons
                prim__setButtons
                0
                (cast {to = MouseEventInit} v)


  export
  clientX :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Double
  clientX v = fromUndefOrPrim
                "MouseEventInit.getclientX"
                prim__clientX
                prim__setClientX
                0.0
                (cast {to = MouseEventInit} v)


  export
  clientY :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Double
  clientY v = fromUndefOrPrim
                "MouseEventInit.getclientY"
                prim__clientY
                prim__setClientY
                0.0
                (cast {to = MouseEventInit} v)


  export
  relatedTarget :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional (Maybe EventTarget)
  relatedTarget v = fromUndefOrPrim
                      "MouseEventInit.getrelatedTarget"
                      prim__relatedTarget
                      prim__setRelatedTarget
                      Nothing
                      (cast {to = MouseEventInit} v)


  export
  screenX :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Double
  screenX v = fromUndefOrPrim
                "MouseEventInit.getscreenX"
                prim__screenX
                prim__setScreenX
                0.0
                (cast {to = MouseEventInit} v)


  export
  screenY :
       {auto _ : Cast t MouseEventInit}
    -> t
    -> Attribute True Optional Double
  screenY v = fromUndefOrPrim
                "MouseEventInit.getscreenY"
                prim__screenY
                prim__setScreenY
                0.0
                (cast {to = MouseEventInit} v)



namespace UIEventInit

  export
  new' :
       (view : Optional (Maybe Window))
    -> (detail : Optional Int32)
    -> JSIO UIEventInit
  new' a b = primJS $ UIEventInit.prim__new (toFFI a) (toFFI b)

  export
  new : JSIO UIEventInit
  new = primJS $ UIEventInit.prim__new undef undef


  export
  detail : {auto _ : Cast t UIEventInit} -> t -> Attribute True Optional Int32
  detail v = fromUndefOrPrim
               "UIEventInit.getdetail"
               prim__detail
               prim__setDetail
               0
               (cast {to = UIEventInit} v)


  export
  view :
       {auto _ : Cast t UIEventInit}
    -> t
    -> Attribute True Optional (Maybe Window)
  view v = fromUndefOrPrim
             "UIEventInit.getview"
             prim__view
             prim__setView
             Nothing
             (cast {to = UIEventInit} v)



namespace WheelEventInit

  export
  new' :
       (deltaX : Optional Double)
    -> (deltaY : Optional Double)
    -> (deltaZ : Optional Double)
    -> (deltaMode : Optional Bits32)
    -> JSIO WheelEventInit
  new' a b c d = primJS $
    WheelEventInit.prim__new (toFFI a) (toFFI b) (toFFI c) (toFFI d)

  export
  new : JSIO WheelEventInit
  new = primJS $ WheelEventInit.prim__new undef undef undef undef


  export
  deltaMode :
       {auto _ : Cast t WheelEventInit}
    -> t
    -> Attribute True Optional Bits32
  deltaMode v = fromUndefOrPrim
                  "WheelEventInit.getdeltaMode"
                  prim__deltaMode
                  prim__setDeltaMode
                  0
                  (cast {to = WheelEventInit} v)


  export
  deltaX :
       {auto _ : Cast t WheelEventInit}
    -> t
    -> Attribute True Optional Double
  deltaX v = fromUndefOrPrim
               "WheelEventInit.getdeltaX"
               prim__deltaX
               prim__setDeltaX
               0.0
               (cast {to = WheelEventInit} v)


  export
  deltaY :
       {auto _ : Cast t WheelEventInit}
    -> t
    -> Attribute True Optional Double
  deltaY v = fromUndefOrPrim
               "WheelEventInit.getdeltaY"
               prim__deltaY
               prim__setDeltaY
               0.0
               (cast {to = WheelEventInit} v)


  export
  deltaZ :
       {auto _ : Cast t WheelEventInit}
    -> t
    -> Attribute True Optional Double
  deltaZ v = fromUndefOrPrim
               "WheelEventInit.getdeltaZ"
               prim__deltaZ
               prim__setDeltaZ
               0.0
               (cast {to = WheelEventInit} v)
