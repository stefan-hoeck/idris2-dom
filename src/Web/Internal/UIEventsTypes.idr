module Web.Internal.UIEventsTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CompositionEvent : Type where [external]
  
export
ToFFI CompositionEvent CompositionEvent where toFFI = id
  
export
FromFFI CompositionEvent CompositionEvent where fromFFI = Just

export
SafeCast CompositionEvent where
  safeCast = unsafeCastOnPrototypeName "CompositionEvent"

export data FocusEvent : Type where [external]
  
export
ToFFI FocusEvent FocusEvent where toFFI = id
  
export
FromFFI FocusEvent FocusEvent where fromFFI = Just

export
SafeCast FocusEvent where
  safeCast = unsafeCastOnPrototypeName "FocusEvent"

export data InputEvent : Type where [external]
  
export
ToFFI InputEvent InputEvent where toFFI = id
  
export
FromFFI InputEvent InputEvent where fromFFI = Just

export
SafeCast InputEvent where
  safeCast = unsafeCastOnPrototypeName "InputEvent"

export data KeyboardEvent : Type where [external]
  
export
ToFFI KeyboardEvent KeyboardEvent where toFFI = id
  
export
FromFFI KeyboardEvent KeyboardEvent where fromFFI = Just

export
SafeCast KeyboardEvent where
  safeCast = unsafeCastOnPrototypeName "KeyboardEvent"

export data MouseEvent : Type where [external]
  
export
ToFFI MouseEvent MouseEvent where toFFI = id
  
export
FromFFI MouseEvent MouseEvent where fromFFI = Just

export
SafeCast MouseEvent where
  safeCast = unsafeCastOnPrototypeName "MouseEvent"

export data UIEvent : Type where [external]
  
export
ToFFI UIEvent UIEvent where toFFI = id
  
export
FromFFI UIEvent UIEvent where fromFFI = Just

export
SafeCast UIEvent where
  safeCast = unsafeCastOnPrototypeName "UIEvent"

export data WheelEvent : Type where [external]
  
export
ToFFI WheelEvent WheelEvent where toFFI = id
  
export
FromFFI WheelEvent WheelEvent where fromFFI = Just

export
SafeCast WheelEvent where
  safeCast = unsafeCastOnPrototypeName "WheelEvent"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CompositionEventInit : Type where [external]
  
export
ToFFI CompositionEventInit CompositionEventInit where toFFI = id
  
export
FromFFI CompositionEventInit CompositionEventInit where fromFFI = Just

export data EventModifierInit : Type where [external]
  
export
ToFFI EventModifierInit EventModifierInit where toFFI = id
  
export
FromFFI EventModifierInit EventModifierInit where fromFFI = Just

export data FocusEventInit : Type where [external]
  
export
ToFFI FocusEventInit FocusEventInit where toFFI = id
  
export
FromFFI FocusEventInit FocusEventInit where fromFFI = Just

export data InputEventInit : Type where [external]
  
export
ToFFI InputEventInit InputEventInit where toFFI = id
  
export
FromFFI InputEventInit InputEventInit where fromFFI = Just

export data KeyboardEventInit : Type where [external]
  
export
ToFFI KeyboardEventInit KeyboardEventInit where toFFI = id
  
export
FromFFI KeyboardEventInit KeyboardEventInit where fromFFI = Just

export data MouseEventInit : Type where [external]
  
export
ToFFI MouseEventInit MouseEventInit where toFFI = id
  
export
FromFFI MouseEventInit MouseEventInit where fromFFI = Just

export data UIEventInit : Type where [external]
  
export
ToFFI UIEventInit UIEventInit where toFFI = id
  
export
FromFFI UIEventInit UIEventInit where fromFFI = Just

export data WheelEventInit : Type where [external]
  
export
ToFFI WheelEventInit WheelEventInit where toFFI = id
  
export
FromFFI WheelEventInit WheelEventInit where fromFFI = Just

