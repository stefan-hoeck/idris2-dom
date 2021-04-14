module Web.Raw.UIEvents
 
import JS
import Web.Internal.UIEventsPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  export
  data_ :  JSType t1
        => {auto 0 _ : Elem CompositionEvent (Types t1)}
        -> (obj : t1)
        -> JSIO String
  data_ a = primJS $ CompositionEvent.prim__data (up a)

namespace FocusEvent
  
  export
  relatedTarget :  JSType t1
                => {auto 0 _ : Elem FocusEvent (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "FocusEvent.relatedTarget"
                  $ FocusEvent.prim__relatedTarget (up a)

namespace InputEvent
  
  export
  data_ :  JSType t1
        => {auto 0 _ : Elem InputEvent (Types t1)}
        -> (obj : t1)
        -> JSIO (Maybe String)
  data_ a = tryJS "InputEvent.data_" $ InputEvent.prim__data (up a)
  
  export
  inputType :  JSType t1
            => {auto 0 _ : Elem InputEvent (Types t1)}
            -> (obj : t1)
            -> JSIO String
  inputType a = primJS $ InputEvent.prim__inputType (up a)
  
  export
  isComposing :  JSType t1
              => {auto 0 _ : Elem InputEvent (Types t1)}
              -> (obj : t1)
              -> JSIO Bool
  isComposing a = tryJS "InputEvent.isComposing"
                $ InputEvent.prim__isComposing (up a)

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
  
  export
  altKey :  JSType t1
         => {auto 0 _ : Elem KeyboardEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  altKey a = tryJS "KeyboardEvent.altKey" $ KeyboardEvent.prim__altKey (up a)
  
  export
  charCode :  JSType t1
           => {auto 0 _ : Elem KeyboardEvent (Types t1)}
           -> (obj : t1)
           -> JSIO UInt32
  charCode a = primJS $ KeyboardEvent.prim__charCode (up a)
  
  export
  code :  JSType t1
       => {auto 0 _ : Elem KeyboardEvent (Types t1)}
       -> (obj : t1)
       -> JSIO String
  code a = primJS $ KeyboardEvent.prim__code (up a)
  
  export
  ctrlKey :  JSType t1
          => {auto 0 _ : Elem KeyboardEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  ctrlKey a = tryJS "KeyboardEvent.ctrlKey" $ KeyboardEvent.prim__ctrlKey (up a)
  
  export
  isComposing :  JSType t1
              => {auto 0 _ : Elem KeyboardEvent (Types t1)}
              -> (obj : t1)
              -> JSIO Bool
  isComposing a = tryJS "KeyboardEvent.isComposing"
                $ KeyboardEvent.prim__isComposing (up a)
  
  export
  key :  JSType t1
      => {auto 0 _ : Elem KeyboardEvent (Types t1)}
      -> (obj : t1)
      -> JSIO String
  key a = primJS $ KeyboardEvent.prim__key (up a)
  
  export
  keyCode :  JSType t1
          => {auto 0 _ : Elem KeyboardEvent (Types t1)}
          -> (obj : t1)
          -> JSIO UInt32
  keyCode a = primJS $ KeyboardEvent.prim__keyCode (up a)
  
  export
  location :  JSType t1
           => {auto 0 _ : Elem KeyboardEvent (Types t1)}
           -> (obj : t1)
           -> JSIO UInt32
  location a = primJS $ KeyboardEvent.prim__location (up a)
  
  export
  metaKey :  JSType t1
          => {auto 0 _ : Elem KeyboardEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  metaKey a = tryJS "KeyboardEvent.metaKey" $ KeyboardEvent.prim__metaKey (up a)
  
  export
  repeat :  JSType t1
         => {auto 0 _ : Elem KeyboardEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  repeat a = tryJS "KeyboardEvent.repeat" $ KeyboardEvent.prim__repeat (up a)
  
  export
  shiftKey :  JSType t1
           => {auto 0 _ : Elem KeyboardEvent (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  shiftKey a = tryJS "KeyboardEvent.shiftKey"
             $ KeyboardEvent.prim__shiftKey (up a)
  
  export
  getModifierState :  JSType t1
                   => {auto 0 _ : Elem KeyboardEvent (Types t1)}
                   -> (obj : t1)
                   -> (keyArg : String)
                   -> JSIO Bool
  getModifierState a b = tryJS "KeyboardEvent.getModifierState"
                       $ KeyboardEvent.prim__getModifierState (up a) b

namespace MouseEvent
  
  export
  altKey :  JSType t1
         => {auto 0 _ : Elem MouseEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Bool
  altKey a = tryJS "MouseEvent.altKey" $ MouseEvent.prim__altKey (up a)
  
  export
  button :  JSType t1
         => {auto 0 _ : Elem MouseEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Int16
  button a = primJS $ MouseEvent.prim__button (up a)
  
  export
  buttons :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO UInt16
  buttons a = primJS $ MouseEvent.prim__buttons (up a)
  
  export
  clientX :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Int32
  clientX a = primJS $ MouseEvent.prim__clientX (up a)
  
  export
  clientY :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Int32
  clientY a = primJS $ MouseEvent.prim__clientY (up a)
  
  export
  ctrlKey :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  ctrlKey a = tryJS "MouseEvent.ctrlKey" $ MouseEvent.prim__ctrlKey (up a)
  
  export
  metaKey :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Bool
  metaKey a = tryJS "MouseEvent.metaKey" $ MouseEvent.prim__metaKey (up a)
  
  export
  relatedTarget :  JSType t1
                => {auto 0 _ : Elem MouseEvent (Types t1)}
                -> (obj : t1)
                -> JSIO (Maybe EventTarget)
  relatedTarget a = tryJS "MouseEvent.relatedTarget"
                  $ MouseEvent.prim__relatedTarget (up a)
  
  export
  screenX :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Int32
  screenX a = primJS $ MouseEvent.prim__screenX (up a)
  
  export
  screenY :  JSType t1
          => {auto 0 _ : Elem MouseEvent (Types t1)}
          -> (obj : t1)
          -> JSIO Int32
  screenY a = primJS $ MouseEvent.prim__screenY (up a)
  
  export
  shiftKey :  JSType t1
           => {auto 0 _ : Elem MouseEvent (Types t1)}
           -> (obj : t1)
           -> JSIO Bool
  shiftKey a = tryJS "MouseEvent.shiftKey" $ MouseEvent.prim__shiftKey (up a)
  
  export
  getModifierState :  JSType t1
                   => {auto 0 _ : Elem MouseEvent (Types t1)}
                   -> (obj : t1)
                   -> (keyArg : String)
                   -> JSIO Bool
  getModifierState a b = tryJS "MouseEvent.getModifierState"
                       $ MouseEvent.prim__getModifierState (up a) b

namespace UIEvent
  
  export
  detail :  JSType t1
         => {auto 0 _ : Elem UIEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Int32
  detail a = primJS $ UIEvent.prim__detail (up a)
  
  export
  view :  JSType t1
       => {auto 0 _ : Elem UIEvent (Types t1)}
       -> (obj : t1)
       -> JSIO (Maybe Window)
  view a = tryJS "UIEvent.view" $ UIEvent.prim__view (up a)
  
  export
  which :  JSType t1
        => {auto 0 _ : Elem UIEvent (Types t1)}
        -> (obj : t1)
        -> JSIO UInt32
  which a = primJS $ UIEvent.prim__which (up a)

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
  
  export
  deltaMode :  JSType t1
            => {auto 0 _ : Elem WheelEvent (Types t1)}
            -> (obj : t1)
            -> JSIO UInt32
  deltaMode a = primJS $ WheelEvent.prim__deltaMode (up a)
  
  export
  deltaX :  JSType t1
         => {auto 0 _ : Elem WheelEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  deltaX a = primJS $ WheelEvent.prim__deltaX (up a)
  
  export
  deltaY :  JSType t1
         => {auto 0 _ : Elem WheelEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  deltaY a = primJS $ WheelEvent.prim__deltaY (up a)
  
  export
  deltaZ :  JSType t1
         => {auto 0 _ : Elem WheelEvent (Types t1)}
         -> (obj : t1)
         -> JSIO Double
  deltaZ a = primJS $ WheelEvent.prim__deltaZ (up a)


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  export
  new : (data_ : Optional String) -> JSIO CompositionEventInit
  new a = primJS $ CompositionEventInit.prim__new (toFFI a)

  export
  new' : JSIO CompositionEventInit
  new' = primJS $ CompositionEventInit.prim__new undef
  
  export
  data_ : CompositionEventInit -> Attribute True Optional String
  data_ = fromUndefOrPrim "CompositionEventInit.getdata"
                          prim__data
                          prim__setData
                          ""

namespace EventModifierInit
  
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
  altKey : EventModifierInit -> Attribute True Optional Bool
  altKey = fromUndefOrPrim "EventModifierInit.getaltKey"
                           prim__altKey
                           prim__setAltKey
                           False
  
  export
  ctrlKey : EventModifierInit -> Attribute True Optional Bool
  ctrlKey = fromUndefOrPrim "EventModifierInit.getctrlKey"
                            prim__ctrlKey
                            prim__setCtrlKey
                            False
  
  export
  metaKey : EventModifierInit -> Attribute True Optional Bool
  metaKey = fromUndefOrPrim "EventModifierInit.getmetaKey"
                            prim__metaKey
                            prim__setMetaKey
                            False
  
  export
  modifierAltGraph : EventModifierInit -> Attribute True Optional Bool
  modifierAltGraph = fromUndefOrPrim "EventModifierInit.getmodifierAltGraph"
                                     prim__modifierAltGraph
                                     prim__setModifierAltGraph
                                     False
  
  export
  modifierCapsLock : EventModifierInit -> Attribute True Optional Bool
  modifierCapsLock = fromUndefOrPrim "EventModifierInit.getmodifierCapsLock"
                                     prim__modifierCapsLock
                                     prim__setModifierCapsLock
                                     False
  
  export
  modifierFn : EventModifierInit -> Attribute True Optional Bool
  modifierFn = fromUndefOrPrim "EventModifierInit.getmodifierFn"
                               prim__modifierFn
                               prim__setModifierFn
                               False
  
  export
  modifierFnLock : EventModifierInit -> Attribute True Optional Bool
  modifierFnLock = fromUndefOrPrim "EventModifierInit.getmodifierFnLock"
                                   prim__modifierFnLock
                                   prim__setModifierFnLock
                                   False
  
  export
  modifierHyper : EventModifierInit -> Attribute True Optional Bool
  modifierHyper = fromUndefOrPrim "EventModifierInit.getmodifierHyper"
                                  prim__modifierHyper
                                  prim__setModifierHyper
                                  False
  
  export
  modifierNumLock : EventModifierInit -> Attribute True Optional Bool
  modifierNumLock = fromUndefOrPrim "EventModifierInit.getmodifierNumLock"
                                    prim__modifierNumLock
                                    prim__setModifierNumLock
                                    False
  
  export
  modifierScrollLock : EventModifierInit -> Attribute True Optional Bool
  modifierScrollLock = fromUndefOrPrim "EventModifierInit.getmodifierScrollLock"
                                       prim__modifierScrollLock
                                       prim__setModifierScrollLock
                                       False
  
  export
  modifierSuper : EventModifierInit -> Attribute True Optional Bool
  modifierSuper = fromUndefOrPrim "EventModifierInit.getmodifierSuper"
                                  prim__modifierSuper
                                  prim__setModifierSuper
                                  False
  
  export
  modifierSymbol : EventModifierInit -> Attribute True Optional Bool
  modifierSymbol = fromUndefOrPrim "EventModifierInit.getmodifierSymbol"
                                   prim__modifierSymbol
                                   prim__setModifierSymbol
                                   False
  
  export
  modifierSymbolLock : EventModifierInit -> Attribute True Optional Bool
  modifierSymbolLock = fromUndefOrPrim "EventModifierInit.getmodifierSymbolLock"
                                       prim__modifierSymbolLock
                                       prim__setModifierSymbolLock
                                       False
  
  export
  shiftKey : EventModifierInit -> Attribute True Optional Bool
  shiftKey = fromUndefOrPrim "EventModifierInit.getshiftKey"
                             prim__shiftKey
                             prim__setShiftKey
                             False

namespace FocusEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem EventTarget (Types t1)}
      -> (relatedTarget : Optional (Maybe t1))
      -> JSIO FocusEventInit
  new a = primJS $ FocusEventInit.prim__new (omyUp a)

  export
  new' : JSIO FocusEventInit
  new' = primJS $ FocusEventInit.prim__new undef
  
  export
  relatedTarget : FocusEventInit -> Attribute True Optional (Maybe EventTarget)
  relatedTarget = fromUndefOrPrim "FocusEventInit.getrelatedTarget"
                                  prim__relatedTarget
                                  prim__setRelatedTarget
                                  Nothing

namespace InputEventInit
  
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
  data_ : InputEventInit -> Attribute True Optional (Maybe String)
  data_ = fromUndefOrPrim "InputEventInit.getdata"
                          prim__data
                          prim__setData
                          (Just "")
  
  export
  inputType : InputEventInit -> Attribute True Optional String
  inputType = fromUndefOrPrim "InputEventInit.getinputType"
                              prim__inputType
                              prim__setInputType
                              ""
  
  export
  isComposing : InputEventInit -> Attribute True Optional Bool
  isComposing = fromUndefOrPrim "InputEventInit.getisComposing"
                                prim__isComposing
                                prim__setIsComposing
                                False

namespace KeyboardEventInit
  
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
  code : KeyboardEventInit -> Attribute True Optional String
  code = fromUndefOrPrim "KeyboardEventInit.getcode" prim__code prim__setCode ""
  
  export
  isComposing : KeyboardEventInit -> Attribute True Optional Bool
  isComposing = fromUndefOrPrim "KeyboardEventInit.getisComposing"
                                prim__isComposing
                                prim__setIsComposing
                                False
  
  export
  key : KeyboardEventInit -> Attribute True Optional String
  key = fromUndefOrPrim "KeyboardEventInit.getkey" prim__key prim__setKey ""
  
  export
  location : KeyboardEventInit -> Attribute True Optional UInt32
  location = fromUndefOrPrim "KeyboardEventInit.getlocation"
                             prim__location
                             prim__setLocation
                             0
  
  export
  repeat : KeyboardEventInit -> Attribute True Optional Bool
  repeat = fromUndefOrPrim "KeyboardEventInit.getrepeat"
                           prim__repeat
                           prim__setRepeat
                           False

namespace MouseEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem EventTarget (Types t1)}
      -> (screenX : Optional Int32)
      -> (screenY : Optional Int32)
      -> (clientX : Optional Int32)
      -> (clientY : Optional Int32)
      -> (button : Optional Int16)
      -> (buttons : Optional UInt16)
      -> (relatedTarget : Optional (Maybe t1))
      -> JSIO MouseEventInit
  new a b c d e f g = primJS
                    $ MouseEventInit.prim__new (toFFI a)
                                               (toFFI b)
                                               (toFFI c)
                                               (toFFI d)
                                               (toFFI e)
                                               (toFFI f)
                                               (omyUp g)

  export
  new' : JSIO MouseEventInit
  new' = primJS
       $ MouseEventInit.prim__new undef undef undef undef undef undef undef
  
  export
  button : MouseEventInit -> Attribute True Optional Int16
  button = fromUndefOrPrim "MouseEventInit.getbutton"
                           prim__button
                           prim__setButton
                           0
  
  export
  buttons : MouseEventInit -> Attribute True Optional UInt16
  buttons = fromUndefOrPrim "MouseEventInit.getbuttons"
                            prim__buttons
                            prim__setButtons
                            0
  
  export
  clientX : MouseEventInit -> Attribute True Optional Int32
  clientX = fromUndefOrPrim "MouseEventInit.getclientX"
                            prim__clientX
                            prim__setClientX
                            0
  
  export
  clientY : MouseEventInit -> Attribute True Optional Int32
  clientY = fromUndefOrPrim "MouseEventInit.getclientY"
                            prim__clientY
                            prim__setClientY
                            0
  
  export
  relatedTarget : MouseEventInit -> Attribute True Optional (Maybe EventTarget)
  relatedTarget = fromUndefOrPrim "MouseEventInit.getrelatedTarget"
                                  prim__relatedTarget
                                  prim__setRelatedTarget
                                  Nothing
  
  export
  screenX : MouseEventInit -> Attribute True Optional Int32
  screenX = fromUndefOrPrim "MouseEventInit.getscreenX"
                            prim__screenX
                            prim__setScreenX
                            0
  
  export
  screenY : MouseEventInit -> Attribute True Optional Int32
  screenY = fromUndefOrPrim "MouseEventInit.getscreenY"
                            prim__screenY
                            prim__setScreenY
                            0

namespace UIEventInit
  
  export
  new :  JSType t1
      => {auto 0 _ : Elem Window (Types t1)}
      -> (view : Optional (Maybe t1))
      -> (detail : Optional Int32)
      -> JSIO UIEventInit
  new a b = primJS $ UIEventInit.prim__new (omyUp a) (toFFI b)

  export
  new' : JSIO UIEventInit
  new' = primJS $ UIEventInit.prim__new undef undef
  
  export
  detail : UIEventInit -> Attribute True Optional Int32
  detail = fromUndefOrPrim "UIEventInit.getdetail"
                           prim__detail
                           prim__setDetail
                           0
  
  export
  view : UIEventInit -> Attribute True Optional (Maybe Window)
  view = fromUndefOrPrim "UIEventInit.getview" prim__view prim__setView Nothing

namespace WheelEventInit
  
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
  deltaMode : WheelEventInit -> Attribute True Optional UInt32
  deltaMode = fromUndefOrPrim "WheelEventInit.getdeltaMode"
                              prim__deltaMode
                              prim__setDeltaMode
                              0
  
  export
  deltaX : WheelEventInit -> Attribute True Optional Double
  deltaX = fromUndefOrPrim "WheelEventInit.getdeltaX"
                           prim__deltaX
                           prim__setDeltaX
                           0.0
  
  export
  deltaY : WheelEventInit -> Attribute True Optional Double
  deltaY = fromUndefOrPrim "WheelEventInit.getdeltaY"
                           prim__deltaY
                           prim__setDeltaY
                           0.0
  
  export
  deltaZ : WheelEventInit -> Attribute True Optional Double
  deltaZ = fromUndefOrPrim "WheelEventInit.getdeltaZ"
                           prim__deltaZ
                           prim__setDeltaZ
                           0.0
