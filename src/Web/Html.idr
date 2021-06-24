module Web.Html

import JS
import public Web.Internal.Types
import public Web.Raw.Html as Html

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------

export
Callback BlobCallback (Maybe Blob -> JSIO ()) where
  callback f = toBlobCallback $ runJS . f . nullableToMaybe

export
Callback CustomElementConstructor (IO HTMLElement) where
  callback = toCustomElementConstructor . const

export
Callback EventHandlerNonNull (Event -> JSIO ()) where
  callback f = toEventHandlerNonNull (map (toFFI . MkAny) . runJS . f)

export
Callback FunctionStringCallback (String -> JSIO ()) where
  callback f = toFunctionStringCallback (runJS . f)

export
Callback OnBeforeUnloadEventHandlerNonNull (Event -> JSIO (Maybe String)) where
  callback f = toOnBeforeUnloadEventHandlerNonNull $ map maybeToNullable
                                                   . runJSWithDefault Nothing
                                                   . f
export
Callback OnErrorEventHandlerNonNull (  NS I [Event, String]
                                    -> Optional String
                                    -> Optional Bits32
                                    -> Optional Bits32
                                    -> Optional Any
                                    -> JSIO Any
                                    ) where
  callback f = toOnErrorEventHandlerNonNull \u,b,c,d,e =>
                 map toFFI $ runJSWithDefault (MkAny ()) $
                   do ns <- tryFromFFI "JS.Html.ErrorEventHandlerNonNull.callback" u
                      f ns (undeforToOptional b)
                           (undeforToOptional c)
                           (undeforToOptional d)
                           (MkAny <$> undeforToOptional e)

export
Callback FocusEventHandler (FocusEvent -> JSIO ()) where
  callback f = toFocusEventHandler (runJS . f)

export
Callback InputEventHandler (InputEvent -> JSIO ()) where
  callback f = toInputEventHandler (runJS . f)

export
Callback KeyboardEventHandler (KeyboardEvent -> JSIO ()) where
  callback f = toKeyboardEventHandler (runJS . f)

export
Callback MouseEventHandler (MouseEvent -> JSIO ()) where
  callback f = toMouseEventHandler (runJS . f)

export
Callback UIEventHandler (UIEvent -> JSIO ()) where
  callback f = toUIEventHandler (runJS . f)

export
Callback WheelEventHandler (WheelEvent -> JSIO ()) where
  callback f = toWheelEventHandler (runJS . f)
