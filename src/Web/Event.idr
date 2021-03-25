module Web.Event

import Data.SOP
import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast compositionEvent CompositionEvent
        => ToJS CompositionEvent
        => (obj : compositionEvent)
        -> IO String

namespace FocusEvent
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  relatedTarget :  Cast focusEvent FocusEvent
                => ToJS FocusEvent
                => (obj : focusEvent)
                -> IO (Maybe EventTarget)

namespace InputEvent
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast inputEvent InputEvent
        => ToJS InputEvent
        => (obj : inputEvent)
        -> IO (Maybe String)
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr
  
  export
  inputType :  Cast inputEvent InputEvent
            => ToJS InputEvent
            => (obj : inputEvent)
            -> IO String
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr
  
  export
  isComposing :  Cast inputEvent InputEvent
              => ToJS InputEvent
              => (obj : inputEvent)
              -> IO Bool

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
  
  export
  altKey :  Cast keyboardEvent KeyboardEvent
         => ToJS KeyboardEvent
         => (obj : keyboardEvent)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr
  
  export
  charCode :  Cast keyboardEvent KeyboardEvent
           => ToJS KeyboardEvent
           => (obj : keyboardEvent)
           -> IO UInt32
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast keyboardEvent KeyboardEvent
       => ToJS KeyboardEvent
       => (obj : keyboardEvent)
       -> IO String
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr
  
  export
  ctrlKey :  Cast keyboardEvent KeyboardEvent
          => ToJS KeyboardEvent
          => (obj : keyboardEvent)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr
  
  export
  isComposing :  Cast keyboardEvent KeyboardEvent
              => ToJS KeyboardEvent
              => (obj : keyboardEvent)
              -> IO Bool
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  export
  key :  Cast keyboardEvent KeyboardEvent
      => ToJS KeyboardEvent
      => (obj : keyboardEvent)
      -> IO String
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr
  
  export
  keyCode :  Cast keyboardEvent KeyboardEvent
          => ToJS KeyboardEvent
          => (obj : keyboardEvent)
          -> IO UInt32
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  export
  location :  Cast keyboardEvent KeyboardEvent
           => ToJS KeyboardEvent
           => (obj : keyboardEvent)
           -> IO UInt32
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr
  
  export
  metaKey :  Cast keyboardEvent KeyboardEvent
          => ToJS KeyboardEvent
          => (obj : keyboardEvent)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr
  
  export
  repeat :  Cast keyboardEvent KeyboardEvent
         => ToJS KeyboardEvent
         => (obj : keyboardEvent)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr
  
  export
  shiftKey :  Cast keyboardEvent KeyboardEvent
           => ToJS KeyboardEvent
           => (obj : keyboardEvent)
           -> IO Bool

namespace MouseEvent
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr
  
  export
  altKey :  Cast mouseEvent MouseEvent
         => ToJS MouseEvent
         => (obj : mouseEvent)
         -> IO Bool
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr
  
  export
  button :  Cast mouseEvent MouseEvent
         => ToJS MouseEvent
         => (obj : mouseEvent)
         -> IO Int16
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr
  
  export
  buttons :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO UInt16
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr
  
  export
  clientX :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Int32
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr
  
  export
  clientY :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Int32
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr
  
  export
  ctrlKey :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr
  
  export
  metaKey :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Bool
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  relatedTarget :  Cast mouseEvent MouseEvent
                => ToJS MouseEvent
                => (obj : mouseEvent)
                -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr
  
  export
  screenX :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Int32
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr
  
  export
  screenY :  Cast mouseEvent MouseEvent
          => ToJS MouseEvent
          => (obj : mouseEvent)
          -> IO Int32
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr
  
  export
  shiftKey :  Cast mouseEvent MouseEvent
           => ToJS MouseEvent
           => (obj : mouseEvent)
           -> IO Bool

namespace UIEvent
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr
  
  export
  detail : Cast uIEvent UIEvent => ToJS UIEvent => (obj : uIEvent) -> IO Int32
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr
  
  export
  view :  Cast uIEvent UIEvent
       => ToJS UIEvent
       => (obj : uIEvent)
       -> IO (Maybe Window)
  
  %foreign "browser:lambda:x=>x.which"
  prim__which : AnyPtr -> PrimIO AnyPtr
  
  export
  which : Cast uIEvent UIEvent => ToJS UIEvent => (obj : uIEvent) -> IO UInt32

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
  
  export
  deltaMode :  Cast wheelEvent WheelEvent
            => ToJS WheelEvent
            => (obj : wheelEvent)
            -> IO UInt32
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaX :  Cast wheelEvent WheelEvent
         => ToJS WheelEvent
         => (obj : wheelEvent)
         -> IO Double
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaY :  Cast wheelEvent WheelEvent
         => ToJS WheelEvent
         => (obj : wheelEvent)
         -> IO Double
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaZ :  Cast wheelEvent WheelEvent
         => ToJS WheelEvent
         => (obj : wheelEvent)
         -> IO Double


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast compositionEventInit CompositionEventInit
        => ToJS CompositionEventInit
        => (obj : compositionEventInit)
        -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast compositionEventInit CompositionEventInit
          => ToJS CompositionEventInit
          => (obj : compositionEventInit)
          -> (v : String)
          -> IO ()

namespace EventModifierInit
  
  %foreign "browser:lambda:x=>x.altKey"
  prim__altKey : AnyPtr -> PrimIO AnyPtr
  
  export
  altKey :  Cast eventModifierInit EventModifierInit
         => ToJS EventModifierInit
         => (obj : eventModifierInit)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.altKey = v}"
  prim__setAltKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setAltKey :  Cast eventModifierInit EventModifierInit
            => ToJS EventModifierInit
            => (obj : eventModifierInit)
            -> (v : Bool)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.ctrlKey"
  prim__ctrlKey : AnyPtr -> PrimIO AnyPtr
  
  export
  ctrlKey :  Cast eventModifierInit EventModifierInit
          => ToJS EventModifierInit
          => (obj : eventModifierInit)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.ctrlKey = v}"
  prim__setCtrlKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCtrlKey :  Cast eventModifierInit EventModifierInit
             => ToJS EventModifierInit
             => (obj : eventModifierInit)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.metaKey"
  prim__metaKey : AnyPtr -> PrimIO AnyPtr
  
  export
  metaKey :  Cast eventModifierInit EventModifierInit
          => ToJS EventModifierInit
          => (obj : eventModifierInit)
          -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.metaKey = v}"
  prim__setMetaKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setMetaKey :  Cast eventModifierInit EventModifierInit
             => ToJS EventModifierInit
             => (obj : eventModifierInit)
             -> (v : Bool)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierAltGraph"
  prim__modifierAltGraph : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierAltGraph :  Cast eventModifierInit EventModifierInit
                   => ToJS EventModifierInit
                   => (obj : eventModifierInit)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierAltGraph = v}"
  prim__setModifierAltGraph : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierAltGraph :  Cast eventModifierInit EventModifierInit
                      => ToJS EventModifierInit
                      => (obj : eventModifierInit)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierCapsLock"
  prim__modifierCapsLock : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierCapsLock :  Cast eventModifierInit EventModifierInit
                   => ToJS EventModifierInit
                   => (obj : eventModifierInit)
                   -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierCapsLock = v}"
  prim__setModifierCapsLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierCapsLock :  Cast eventModifierInit EventModifierInit
                      => ToJS EventModifierInit
                      => (obj : eventModifierInit)
                      -> (v : Bool)
                      -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierFn"
  prim__modifierFn : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierFn :  Cast eventModifierInit EventModifierInit
             => ToJS EventModifierInit
             => (obj : eventModifierInit)
             -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierFn = v}"
  prim__setModifierFn : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierFn :  Cast eventModifierInit EventModifierInit
                => ToJS EventModifierInit
                => (obj : eventModifierInit)
                -> (v : Bool)
                -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierFnLock"
  prim__modifierFnLock : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierFnLock :  Cast eventModifierInit EventModifierInit
                 => ToJS EventModifierInit
                 => (obj : eventModifierInit)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierFnLock = v}"
  prim__setModifierFnLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierFnLock :  Cast eventModifierInit EventModifierInit
                    => ToJS EventModifierInit
                    => (obj : eventModifierInit)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierHyper"
  prim__modifierHyper : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierHyper :  Cast eventModifierInit EventModifierInit
                => ToJS EventModifierInit
                => (obj : eventModifierInit)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierHyper = v}"
  prim__setModifierHyper : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierHyper :  Cast eventModifierInit EventModifierInit
                   => ToJS EventModifierInit
                   => (obj : eventModifierInit)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierNumLock"
  prim__modifierNumLock : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierNumLock :  Cast eventModifierInit EventModifierInit
                  => ToJS EventModifierInit
                  => (obj : eventModifierInit)
                  -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierNumLock = v}"
  prim__setModifierNumLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierNumLock :  Cast eventModifierInit EventModifierInit
                     => ToJS EventModifierInit
                     => (obj : eventModifierInit)
                     -> (v : Bool)
                     -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierScrollLock"
  prim__modifierScrollLock : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierScrollLock :  Cast eventModifierInit EventModifierInit
                     => ToJS EventModifierInit
                     => (obj : eventModifierInit)
                     -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierScrollLock = v}"
  prim__setModifierScrollLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierScrollLock :  Cast eventModifierInit EventModifierInit
                        => ToJS EventModifierInit
                        => (obj : eventModifierInit)
                        -> (v : Bool)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSuper"
  prim__modifierSuper : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierSuper :  Cast eventModifierInit EventModifierInit
                => ToJS EventModifierInit
                => (obj : eventModifierInit)
                -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierSuper = v}"
  prim__setModifierSuper : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierSuper :  Cast eventModifierInit EventModifierInit
                   => ToJS EventModifierInit
                   => (obj : eventModifierInit)
                   -> (v : Bool)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbol"
  prim__modifierSymbol : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierSymbol :  Cast eventModifierInit EventModifierInit
                 => ToJS EventModifierInit
                 => (obj : eventModifierInit)
                 -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierSymbol = v}"
  prim__setModifierSymbol : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierSymbol :  Cast eventModifierInit EventModifierInit
                    => ToJS EventModifierInit
                    => (obj : eventModifierInit)
                    -> (v : Bool)
                    -> IO ()
  
  %foreign "browser:lambda:x=>x.modifierSymbolLock"
  prim__modifierSymbolLock : AnyPtr -> PrimIO AnyPtr
  
  export
  modifierSymbolLock :  Cast eventModifierInit EventModifierInit
                     => ToJS EventModifierInit
                     => (obj : eventModifierInit)
                     -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.modifierSymbolLock = v}"
  prim__setModifierSymbolLock : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setModifierSymbolLock :  Cast eventModifierInit EventModifierInit
                        => ToJS EventModifierInit
                        => (obj : eventModifierInit)
                        -> (v : Bool)
                        -> IO ()
  
  %foreign "browser:lambda:x=>x.shiftKey"
  prim__shiftKey : AnyPtr -> PrimIO AnyPtr
  
  export
  shiftKey :  Cast eventModifierInit EventModifierInit
           => ToJS EventModifierInit
           => (obj : eventModifierInit)
           -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.shiftKey = v}"
  prim__setShiftKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setShiftKey :  Cast eventModifierInit EventModifierInit
              => ToJS EventModifierInit
              => (obj : eventModifierInit)
              -> (v : Bool)
              -> IO ()

namespace FocusEventInit
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  relatedTarget :  Cast focusEventInit FocusEventInit
                => ToJS FocusEventInit
                => (obj : focusEventInit)
                -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRelatedTarget :  Cast eventTarget EventTarget
                   => ToJS EventTarget
                   => Cast focusEventInit FocusEventInit
                   => ToJS FocusEventInit
                   => (obj : focusEventInit)
                   -> (v : Maybe eventTarget)
                   -> IO ()

namespace InputEventInit
  
  %foreign "browser:lambda:x=>x.data"
  prim__data_ : AnyPtr -> PrimIO AnyPtr
  
  export
  data_ :  Cast inputEventInit InputEventInit
        => ToJS InputEventInit
        => (obj : inputEventInit)
        -> IO (Maybe String)
  
  %foreign "browser:lambda:(x,v)=>{x.data = v}"
  prim__setData : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setData :  Cast inputEventInit InputEventInit
          => ToJS InputEventInit
          => (obj : inputEventInit)
          -> (v : Maybe String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.inputType"
  prim__inputType : AnyPtr -> PrimIO AnyPtr
  
  export
  inputType :  Cast inputEventInit InputEventInit
            => ToJS InputEventInit
            => (obj : inputEventInit)
            -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.inputType = v}"
  prim__setInputType : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setInputType :  Cast inputEventInit InputEventInit
               => ToJS InputEventInit
               => (obj : inputEventInit)
               -> (v : String)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr
  
  export
  isComposing :  Cast inputEventInit InputEventInit
              => ToJS InputEventInit
              => (obj : inputEventInit)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIsComposing :  Cast inputEventInit InputEventInit
                 => ToJS InputEventInit
                 => (obj : inputEventInit)
                 -> (v : Bool)
                 -> IO ()

namespace KeyboardEventInit
  
  %foreign "browser:lambda:x=>x.charCode"
  prim__charCode : AnyPtr -> PrimIO AnyPtr
  
  export
  charCode :  Cast keyboardEventInit KeyboardEventInit
           => ToJS KeyboardEventInit
           => (obj : keyboardEventInit)
           -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.charCode = v}"
  prim__setCharCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCharCode :  Cast keyboardEventInit KeyboardEventInit
              => ToJS KeyboardEventInit
              => (obj : keyboardEventInit)
              -> (v : UInt32)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.code"
  prim__code : AnyPtr -> PrimIO AnyPtr
  
  export
  code :  Cast keyboardEventInit KeyboardEventInit
       => ToJS KeyboardEventInit
       => (obj : keyboardEventInit)
       -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.code = v}"
  prim__setCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setCode :  Cast keyboardEventInit KeyboardEventInit
          => ToJS KeyboardEventInit
          => (obj : keyboardEventInit)
          -> (v : String)
          -> IO ()
  
  %foreign "browser:lambda:x=>x.isComposing"
  prim__isComposing : AnyPtr -> PrimIO AnyPtr
  
  export
  isComposing :  Cast keyboardEventInit KeyboardEventInit
              => ToJS KeyboardEventInit
              => (obj : keyboardEventInit)
              -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.isComposing = v}"
  prim__setIsComposing : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setIsComposing :  Cast keyboardEventInit KeyboardEventInit
                 => ToJS KeyboardEventInit
                 => (obj : keyboardEventInit)
                 -> (v : Bool)
                 -> IO ()
  
  %foreign "browser:lambda:x=>x.key"
  prim__key : AnyPtr -> PrimIO AnyPtr
  
  export
  key :  Cast keyboardEventInit KeyboardEventInit
      => ToJS KeyboardEventInit
      => (obj : keyboardEventInit)
      -> IO String
  
  %foreign "browser:lambda:(x,v)=>{x.key = v}"
  prim__setKey : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setKey :  Cast keyboardEventInit KeyboardEventInit
         => ToJS KeyboardEventInit
         => (obj : keyboardEventInit)
         -> (v : String)
         -> IO ()
  
  %foreign "browser:lambda:x=>x.keyCode"
  prim__keyCode : AnyPtr -> PrimIO AnyPtr
  
  export
  keyCode :  Cast keyboardEventInit KeyboardEventInit
          => ToJS KeyboardEventInit
          => (obj : keyboardEventInit)
          -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.keyCode = v}"
  prim__setKeyCode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setKeyCode :  Cast keyboardEventInit KeyboardEventInit
             => ToJS KeyboardEventInit
             => (obj : keyboardEventInit)
             -> (v : UInt32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.location"
  prim__location : AnyPtr -> PrimIO AnyPtr
  
  export
  location :  Cast keyboardEventInit KeyboardEventInit
           => ToJS KeyboardEventInit
           => (obj : keyboardEventInit)
           -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.location = v}"
  prim__setLocation : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setLocation :  Cast keyboardEventInit KeyboardEventInit
              => ToJS KeyboardEventInit
              => (obj : keyboardEventInit)
              -> (v : UInt32)
              -> IO ()
  
  %foreign "browser:lambda:x=>x.repeat"
  prim__repeat : AnyPtr -> PrimIO AnyPtr
  
  export
  repeat :  Cast keyboardEventInit KeyboardEventInit
         => ToJS KeyboardEventInit
         => (obj : keyboardEventInit)
         -> IO Bool
  
  %foreign "browser:lambda:(x,v)=>{x.repeat = v}"
  prim__setRepeat : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRepeat :  Cast keyboardEventInit KeyboardEventInit
            => ToJS KeyboardEventInit
            => (obj : keyboardEventInit)
            -> (v : Bool)
            -> IO ()

namespace MouseEventInit
  
  %foreign "browser:lambda:x=>x.button"
  prim__button : AnyPtr -> PrimIO AnyPtr
  
  export
  button :  Cast mouseEventInit MouseEventInit
         => ToJS MouseEventInit
         => (obj : mouseEventInit)
         -> IO Int16
  
  %foreign "browser:lambda:(x,v)=>{x.button = v}"
  prim__setButton : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setButton :  Cast mouseEventInit MouseEventInit
            => ToJS MouseEventInit
            => (obj : mouseEventInit)
            -> (v : Int16)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.buttons"
  prim__buttons : AnyPtr -> PrimIO AnyPtr
  
  export
  buttons :  Cast mouseEventInit MouseEventInit
          => ToJS MouseEventInit
          => (obj : mouseEventInit)
          -> IO UInt16
  
  %foreign "browser:lambda:(x,v)=>{x.buttons = v}"
  prim__setButtons : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setButtons :  Cast mouseEventInit MouseEventInit
             => ToJS MouseEventInit
             => (obj : mouseEventInit)
             -> (v : UInt16)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.clientX"
  prim__clientX : AnyPtr -> PrimIO AnyPtr
  
  export
  clientX :  Cast mouseEventInit MouseEventInit
          => ToJS MouseEventInit
          => (obj : mouseEventInit)
          -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.clientX = v}"
  prim__setClientX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClientX :  Cast mouseEventInit MouseEventInit
             => ToJS MouseEventInit
             => (obj : mouseEventInit)
             -> (v : Int32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.clientY"
  prim__clientY : AnyPtr -> PrimIO AnyPtr
  
  export
  clientY :  Cast mouseEventInit MouseEventInit
          => ToJS MouseEventInit
          => (obj : mouseEventInit)
          -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.clientY = v}"
  prim__setClientY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setClientY :  Cast mouseEventInit MouseEventInit
             => ToJS MouseEventInit
             => (obj : mouseEventInit)
             -> (v : Int32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.relatedTarget"
  prim__relatedTarget : AnyPtr -> PrimIO AnyPtr
  
  export
  relatedTarget :  Cast mouseEventInit MouseEventInit
                => ToJS MouseEventInit
                => (obj : mouseEventInit)
                -> IO (Maybe EventTarget)
  
  %foreign "browser:lambda:(x,v)=>{x.relatedTarget = v}"
  prim__setRelatedTarget : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setRelatedTarget :  Cast eventTarget EventTarget
                   => ToJS EventTarget
                   => Cast mouseEventInit MouseEventInit
                   => ToJS MouseEventInit
                   => (obj : mouseEventInit)
                   -> (v : Maybe eventTarget)
                   -> IO ()
  
  %foreign "browser:lambda:x=>x.screenX"
  prim__screenX : AnyPtr -> PrimIO AnyPtr
  
  export
  screenX :  Cast mouseEventInit MouseEventInit
          => ToJS MouseEventInit
          => (obj : mouseEventInit)
          -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.screenX = v}"
  prim__setScreenX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScreenX :  Cast mouseEventInit MouseEventInit
             => ToJS MouseEventInit
             => (obj : mouseEventInit)
             -> (v : Int32)
             -> IO ()
  
  %foreign "browser:lambda:x=>x.screenY"
  prim__screenY : AnyPtr -> PrimIO AnyPtr
  
  export
  screenY :  Cast mouseEventInit MouseEventInit
          => ToJS MouseEventInit
          => (obj : mouseEventInit)
          -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.screenY = v}"
  prim__setScreenY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setScreenY :  Cast mouseEventInit MouseEventInit
             => ToJS MouseEventInit
             => (obj : mouseEventInit)
             -> (v : Int32)
             -> IO ()

namespace UIEventInit
  
  %foreign "browser:lambda:x=>x.detail"
  prim__detail : AnyPtr -> PrimIO AnyPtr
  
  export
  detail :  Cast uIEventInit UIEventInit
         => ToJS UIEventInit
         => (obj : uIEventInit)
         -> IO Int32
  
  %foreign "browser:lambda:(x,v)=>{x.detail = v}"
  prim__setDetail : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDetail :  Cast uIEventInit UIEventInit
            => ToJS UIEventInit
            => (obj : uIEventInit)
            -> (v : Int32)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.view"
  prim__view : AnyPtr -> PrimIO AnyPtr
  
  export
  view :  Cast uIEventInit UIEventInit
       => ToJS UIEventInit
       => (obj : uIEventInit)
       -> IO (Maybe Window)
  
  %foreign "browser:lambda:(x,v)=>{x.view = v}"
  prim__setView : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setView :  Cast uIEventInit UIEventInit
          => ToJS UIEventInit
          => Cast window Window
          => ToJS Window
          => (obj : uIEventInit)
          -> (v : Maybe window)
          -> IO ()

namespace WheelEventInit
  
  %foreign "browser:lambda:x=>x.deltaMode"
  prim__deltaMode : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaMode :  Cast wheelEventInit WheelEventInit
            => ToJS WheelEventInit
            => (obj : wheelEventInit)
            -> IO UInt32
  
  %foreign "browser:lambda:(x,v)=>{x.deltaMode = v}"
  prim__setDeltaMode : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeltaMode :  Cast wheelEventInit WheelEventInit
               => ToJS WheelEventInit
               => (obj : wheelEventInit)
               -> (v : UInt32)
               -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaX"
  prim__deltaX : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaX :  Cast wheelEventInit WheelEventInit
         => ToJS WheelEventInit
         => (obj : wheelEventInit)
         -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.deltaX = v}"
  prim__setDeltaX : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeltaX :  Cast wheelEventInit WheelEventInit
            => ToJS WheelEventInit
            => (obj : wheelEventInit)
            -> (v : Double)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaY"
  prim__deltaY : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaY :  Cast wheelEventInit WheelEventInit
         => ToJS WheelEventInit
         => (obj : wheelEventInit)
         -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.deltaY = v}"
  prim__setDeltaY : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeltaY :  Cast wheelEventInit WheelEventInit
            => ToJS WheelEventInit
            => (obj : wheelEventInit)
            -> (v : Double)
            -> IO ()
  
  %foreign "browser:lambda:x=>x.deltaZ"
  prim__deltaZ : AnyPtr -> PrimIO AnyPtr
  
  export
  deltaZ :  Cast wheelEventInit WheelEventInit
         => ToJS WheelEventInit
         => (obj : wheelEventInit)
         -> IO Double
  
  %foreign "browser:lambda:(x,v)=>{x.deltaZ = v}"
  prim__setDeltaZ : AnyPtr -> AnyPtr -> PrimIO AnyPtr
  
  export
  setDeltaZ :  Cast wheelEventInit WheelEventInit
            => ToJS WheelEventInit
            => (obj : wheelEventInit)
            -> (v : Double)
            -> IO ()



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