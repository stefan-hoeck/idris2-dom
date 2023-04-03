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

  public export
  DOM_KEY_LOCATION_LEFT : Bits32
  DOM_KEY_LOCATION_LEFT = 0x1


  public export
  DOM_KEY_LOCATION_NUMPAD : Bits32
  DOM_KEY_LOCATION_NUMPAD = 0x3


  public export
  DOM_KEY_LOCATION_RIGHT : Bits32
  DOM_KEY_LOCATION_RIGHT = 0x2


  public export
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
  altKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  altKey a = tryJS "MouseEvent.altKey" $ MouseEvent.prim__altKey (up a)


  export
  button :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Int16
  button a = primJS $ MouseEvent.prim__button (up a)


  export
  buttons :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bits16
  buttons a = primJS $ MouseEvent.prim__buttons (up a)


  export
  clientX :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  clientX a = primJS $ MouseEvent.prim__clientX (up a)


  export
  clientY :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  clientY a = primJS $ MouseEvent.prim__clientY (up a)


  export
  ctrlKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  ctrlKey a = tryJS "MouseEvent.ctrlKey" $ MouseEvent.prim__ctrlKey (up a)


  export
  metaKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  metaKey a = tryJS "MouseEvent.metaKey" $ MouseEvent.prim__metaKey (up a)


  export
  offsetX :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  offsetX a = primJS $ MouseEvent.prim__offsetX (up a)


  export
  offsetY :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  offsetY a = primJS $ MouseEvent.prim__offsetY (up a)


  export
  pageX :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  pageX a = primJS $ MouseEvent.prim__pageX (up a)


  export
  pageY :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  pageY a = primJS $ MouseEvent.prim__pageY (up a)


  export
  relatedTarget :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "MouseEvent.relatedTarget" $
    MouseEvent.prim__relatedTarget (up a)


  export
  screenX :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  screenX a = primJS $ MouseEvent.prim__screenX (up a)


  export
  screenY :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  screenY a = primJS $ MouseEvent.prim__screenY (up a)


  export
  shiftKey :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bool
  shiftKey a = tryJS "MouseEvent.shiftKey" $ MouseEvent.prim__shiftKey (up a)


  export
  x :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  x a = primJS $ MouseEvent.prim__x (up a)


  export
  y :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Double
  y a = primJS $ MouseEvent.prim__y (up a)


  export
  getModifierState :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem MouseEvent (Types t1)}
    -> (obj : t1)
    -> (keyArg : String)
    -> JSIO Bool
  getModifierState a b = tryJS "MouseEvent.getModifierState" $
    MouseEvent.prim__getModifierState (up a) b



namespace UIEvent

  export
  detail :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem UIEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Int32
  detail a = primJS $ UIEvent.prim__detail (up a)


  export
  view :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem UIEvent (Types t1)}
    -> (obj : t1)
    -> JSIO (Maybe Window)
  view a = tryJS "UIEvent.view" $ UIEvent.prim__view (up a)


  export
  which :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem UIEvent (Types t1)}
    -> (obj : t1)
    -> JSIO Bits32
  which a = primJS $ UIEvent.prim__which (up a)



namespace WheelEvent

  public export
  DOM_DELTA_LINE : Bits32
  DOM_DELTA_LINE = 0x1


  public export
  DOM_DELTA_PAGE : Bits32
  DOM_DELTA_PAGE = 0x2


  public export
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
  new : {default Undef data_ : Optional String} -> JSIO CompositionEventInit
  new = primJS $ CompositionEventInit.prim__new (toFFI data_)


  export
  data_ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem CompositionEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  data_ v = fromUndefOrPrim
              "CompositionEventInit.getdata"
              prim__data
              prim__setData
              ""
              (v :> CompositionEventInit)



namespace EventModifierInit

  export
  new :
       {default Undef ctrlKey : Optional Bool}
    -> {default Undef shiftKey : Optional Bool}
    -> {default Undef altKey : Optional Bool}
    -> {default Undef metaKey : Optional Bool}
    -> {default Undef modifierAltGraph : Optional Bool}
    -> {default Undef modifierCapsLock : Optional Bool}
    -> {default Undef modifierFn : Optional Bool}
    -> {default Undef modifierFnLock : Optional Bool}
    -> {default Undef modifierHyper : Optional Bool}
    -> {default Undef modifierNumLock : Optional Bool}
    -> {default Undef modifierScrollLock : Optional Bool}
    -> {default Undef modifierSuper : Optional Bool}
    -> {default Undef modifierSymbol : Optional Bool}
    -> {default Undef modifierSymbolLock : Optional Bool}
    -> JSIO EventModifierInit
  new = primJS $
    EventModifierInit.prim__new
      (toFFI ctrlKey)
      (toFFI shiftKey)
      (toFFI altKey)
      (toFFI metaKey)
      (toFFI modifierAltGraph)
      (toFFI modifierCapsLock)
      (toFFI modifierFn)
      (toFFI modifierFnLock)
      (toFFI modifierHyper)
      (toFFI modifierNumLock)
      (toFFI modifierScrollLock)
      (toFFI modifierSuper)
      (toFFI modifierSymbol)
      (toFFI modifierSymbolLock)


  export
  altKey :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  altKey v = fromUndefOrPrim
               "EventModifierInit.getaltKey"
               prim__altKey
               prim__setAltKey
               False
               (v :> EventModifierInit)


  export
  ctrlKey :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  ctrlKey v = fromUndefOrPrim
                "EventModifierInit.getctrlKey"
                prim__ctrlKey
                prim__setCtrlKey
                False
                (v :> EventModifierInit)


  export
  metaKey :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  metaKey v = fromUndefOrPrim
                "EventModifierInit.getmetaKey"
                prim__metaKey
                prim__setMetaKey
                False
                (v :> EventModifierInit)


  export
  modifierAltGraph :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierAltGraph v = fromUndefOrPrim
                         "EventModifierInit.getmodifierAltGraph"
                         prim__modifierAltGraph
                         prim__setModifierAltGraph
                         False
                         (v :> EventModifierInit)


  export
  modifierCapsLock :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierCapsLock v = fromUndefOrPrim
                         "EventModifierInit.getmodifierCapsLock"
                         prim__modifierCapsLock
                         prim__setModifierCapsLock
                         False
                         (v :> EventModifierInit)


  export
  modifierFn :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierFn v = fromUndefOrPrim
                   "EventModifierInit.getmodifierFn"
                   prim__modifierFn
                   prim__setModifierFn
                   False
                   (v :> EventModifierInit)


  export
  modifierFnLock :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierFnLock v = fromUndefOrPrim
                       "EventModifierInit.getmodifierFnLock"
                       prim__modifierFnLock
                       prim__setModifierFnLock
                       False
                       (v :> EventModifierInit)


  export
  modifierHyper :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierHyper v = fromUndefOrPrim
                      "EventModifierInit.getmodifierHyper"
                      prim__modifierHyper
                      prim__setModifierHyper
                      False
                      (v :> EventModifierInit)


  export
  modifierNumLock :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierNumLock v = fromUndefOrPrim
                        "EventModifierInit.getmodifierNumLock"
                        prim__modifierNumLock
                        prim__setModifierNumLock
                        False
                        (v :> EventModifierInit)


  export
  modifierScrollLock :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierScrollLock v = fromUndefOrPrim
                           "EventModifierInit.getmodifierScrollLock"
                           prim__modifierScrollLock
                           prim__setModifierScrollLock
                           False
                           (v :> EventModifierInit)


  export
  modifierSuper :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierSuper v = fromUndefOrPrim
                      "EventModifierInit.getmodifierSuper"
                      prim__modifierSuper
                      prim__setModifierSuper
                      False
                      (v :> EventModifierInit)


  export
  modifierSymbol :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierSymbol v = fromUndefOrPrim
                       "EventModifierInit.getmodifierSymbol"
                       prim__modifierSymbol
                       prim__setModifierSymbol
                       False
                       (v :> EventModifierInit)


  export
  modifierSymbolLock :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  modifierSymbolLock v = fromUndefOrPrim
                           "EventModifierInit.getmodifierSymbolLock"
                           prim__modifierSymbolLock
                           prim__setModifierSymbolLock
                           False
                           (v :> EventModifierInit)


  export
  shiftKey :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem EventModifierInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  shiftKey v = fromUndefOrPrim
                 "EventModifierInit.getshiftKey"
                 prim__shiftKey
                 prim__setShiftKey
                 False
                 (v :> EventModifierInit)



namespace FocusEventInit

  export
  new :
       {auto 0 _ : JSType t1}
    -> {auto 0 _ : Elem EventTarget (Types t1)}
    -> {default Undef relatedTarget : Optional (Maybe t1)}
    -> JSIO FocusEventInit
  new = primJS $ FocusEventInit.prim__new (omyUp relatedTarget)


  export
  relatedTarget :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem FocusEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe EventTarget)
  relatedTarget v = fromUndefOrPrim
                      "FocusEventInit.getrelatedTarget"
                      prim__relatedTarget
                      prim__setRelatedTarget
                      Nothing
                      (v :> FocusEventInit)



namespace InputEventInit

  export
  new :
       {default Undef data_ : Optional (Maybe String)}
    -> {default Undef isComposing : Optional Bool}
    -> {default Undef inputType : Optional String}
    -> JSIO InputEventInit
  new = primJS $
    InputEventInit.prim__new (toFFI data_) (toFFI isComposing) (toFFI inputType)


  export
  data_ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem InputEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe String)
  data_ v = fromUndefOrPrim
              "InputEventInit.getdata"
              prim__data
              prim__setData
              (Just "")
              (v :> InputEventInit)


  export
  inputType :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem InputEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  inputType v = fromUndefOrPrim
                  "InputEventInit.getinputType"
                  prim__inputType
                  prim__setInputType
                  ""
                  (v :> InputEventInit)


  export
  isComposing :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem InputEventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  isComposing v = fromUndefOrPrim
                    "InputEventInit.getisComposing"
                    prim__isComposing
                    prim__setIsComposing
                    False
                    (v :> InputEventInit)



namespace KeyboardEventInit

  export
  new :
       {default Undef key : Optional String}
    -> {default Undef code : Optional String}
    -> {default Undef location : Optional Bits32}
    -> {default Undef repeat : Optional Bool}
    -> {default Undef isComposing : Optional Bool}
    -> JSIO KeyboardEventInit
  new = primJS $
    KeyboardEventInit.prim__new
      (toFFI key)
      (toFFI code)
      (toFFI location)
      (toFFI repeat)
      (toFFI isComposing)


  export
  code :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem KeyboardEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  code v = fromUndefOrPrim
             "KeyboardEventInit.getcode"
             prim__code
             prim__setCode
             ""
             (v :> KeyboardEventInit)


  export
  isComposing :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem KeyboardEventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  isComposing v = fromUndefOrPrim
                    "KeyboardEventInit.getisComposing"
                    prim__isComposing
                    prim__setIsComposing
                    False
                    (v :> KeyboardEventInit)


  export
  key :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem KeyboardEventInit (Types t)}
    -> t
    -> Attribute True Optional String
  key v = fromUndefOrPrim
            "KeyboardEventInit.getkey"
            prim__key
            prim__setKey
            ""
            (v :> KeyboardEventInit)


  export
  location :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem KeyboardEventInit (Types t)}
    -> t
    -> Attribute True Optional Bits32
  location v = fromUndefOrPrim
                 "KeyboardEventInit.getlocation"
                 prim__location
                 prim__setLocation
                 0
                 (v :> KeyboardEventInit)


  export
  repeat :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem KeyboardEventInit (Types t)}
    -> t
    -> Attribute True Optional Bool
  repeat v = fromUndefOrPrim
               "KeyboardEventInit.getrepeat"
               prim__repeat
               prim__setRepeat
               False
               (v :> KeyboardEventInit)



namespace MouseEventInit

  export
  new :
       {auto 0 _ : JSType t3}
    -> {auto 0 _ : Elem EventTarget (Types t3)}
    -> {default Undef button : Optional Int16}
    -> {default Undef buttons : Optional Bits16}
    -> {default Undef relatedTarget : Optional (Maybe t3)}
    -> {default Undef screenX : Optional Double}
    -> {default Undef screenY : Optional Double}
    -> {default Undef clientX : Optional Double}
    -> {default Undef clientY : Optional Double}
    -> JSIO MouseEventInit
  new = primJS $
    MouseEventInit.prim__new
      (toFFI button)
      (toFFI buttons)
      (omyUp relatedTarget)
      (toFFI screenX)
      (toFFI screenY)
      (toFFI clientX)
      (toFFI clientY)


  export
  button :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Int16
  button v = fromUndefOrPrim
               "MouseEventInit.getbutton"
               prim__button
               prim__setButton
               0
               (v :> MouseEventInit)


  export
  buttons :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Bits16
  buttons v = fromUndefOrPrim
                "MouseEventInit.getbuttons"
                prim__buttons
                prim__setButtons
                0
                (v :> MouseEventInit)


  export
  clientX :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  clientX v = fromUndefOrPrim
                "MouseEventInit.getclientX"
                prim__clientX
                prim__setClientX
                0.0
                (v :> MouseEventInit)


  export
  clientY :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  clientY v = fromUndefOrPrim
                "MouseEventInit.getclientY"
                prim__clientY
                prim__setClientY
                0.0
                (v :> MouseEventInit)


  export
  relatedTarget :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe EventTarget)
  relatedTarget v = fromUndefOrPrim
                      "MouseEventInit.getrelatedTarget"
                      prim__relatedTarget
                      prim__setRelatedTarget
                      Nothing
                      (v :> MouseEventInit)


  export
  screenX :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  screenX v = fromUndefOrPrim
                "MouseEventInit.getscreenX"
                prim__screenX
                prim__setScreenX
                0.0
                (v :> MouseEventInit)


  export
  screenY :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem MouseEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  screenY v = fromUndefOrPrim
                "MouseEventInit.getscreenY"
                prim__screenY
                prim__setScreenY
                0.0
                (v :> MouseEventInit)



namespace UIEventInit

  export
  new :
       {default Undef view : Optional (Maybe Window)}
    -> {default Undef detail : Optional Int32}
    -> JSIO UIEventInit
  new = primJS $ UIEventInit.prim__new (toFFI view) (toFFI detail)


  export
  detail :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UIEventInit (Types t)}
    -> t
    -> Attribute True Optional Int32
  detail v = fromUndefOrPrim
               "UIEventInit.getdetail"
               prim__detail
               prim__setDetail
               0
               (v :> UIEventInit)


  export
  view :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem UIEventInit (Types t)}
    -> t
    -> Attribute True Optional (Maybe Window)
  view v = fromUndefOrPrim
             "UIEventInit.getview"
             prim__view
             prim__setView
             Nothing
             (v :> UIEventInit)



namespace WheelEventInit

  export
  new :
       {default Undef deltaX : Optional Double}
    -> {default Undef deltaY : Optional Double}
    -> {default Undef deltaZ : Optional Double}
    -> {default Undef deltaMode : Optional Bits32}
    -> JSIO WheelEventInit
  new = primJS $
    WheelEventInit.prim__new
      (toFFI deltaX)
      (toFFI deltaY)
      (toFFI deltaZ)
      (toFFI deltaMode)


  export
  deltaMode :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem WheelEventInit (Types t)}
    -> t
    -> Attribute True Optional Bits32
  deltaMode v = fromUndefOrPrim
                  "WheelEventInit.getdeltaMode"
                  prim__deltaMode
                  prim__setDeltaMode
                  0
                  (v :> WheelEventInit)


  export
  deltaX :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem WheelEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  deltaX v = fromUndefOrPrim
               "WheelEventInit.getdeltaX"
               prim__deltaX
               prim__setDeltaX
               0.0
               (v :> WheelEventInit)


  export
  deltaY :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem WheelEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  deltaY v = fromUndefOrPrim
               "WheelEventInit.getdeltaY"
               prim__deltaY
               prim__setDeltaY
               0.0
               (v :> WheelEventInit)


  export
  deltaZ :
       {auto 0 _ : JSType t}
    -> {auto 0 _ : Elem WheelEventInit (Types t)}
    -> t
    -> Attribute True Optional Double
  deltaZ v = fromUndefOrPrim
               "WheelEventInit.getdeltaZ"
               prim__deltaZ
               prim__setDeltaZ
               0.0
               (v :> WheelEventInit)
