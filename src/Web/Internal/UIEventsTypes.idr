module Web.Internal.UIEventsTypes
 
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data CompositionEvent : Type where [external]

export
SafeCast CompositionEvent where
  safeCast = unsafeCastOnPrototypeName "CompositionEvent"

export data FocusEvent : Type where [external]

export
SafeCast FocusEvent where
  safeCast = unsafeCastOnPrototypeName "FocusEvent"

export data InputEvent : Type where [external]

export
SafeCast InputEvent where
  safeCast = unsafeCastOnPrototypeName "InputEvent"

export data KeyboardEvent : Type where [external]

export
SafeCast KeyboardEvent where
  safeCast = unsafeCastOnPrototypeName "KeyboardEvent"

export data MouseEvent : Type where [external]

export
SafeCast MouseEvent where
  safeCast = unsafeCastOnPrototypeName "MouseEvent"

export data UIEvent : Type where [external]

export
SafeCast UIEvent where
  safeCast = unsafeCastOnPrototypeName "UIEvent"

export data WheelEvent : Type where [external]

export
SafeCast WheelEvent where
  safeCast = unsafeCastOnPrototypeName "WheelEvent"

--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data CompositionEventInit : Type where [external]

export
SafeCast CompositionEventInit where
  safeCast = unsafeCastOnPrototypeName "CompositionEventInit"

export data EventModifierInit : Type where [external]

export
SafeCast EventModifierInit where
  safeCast = unsafeCastOnPrototypeName "EventModifierInit"

export data FocusEventInit : Type where [external]

export
SafeCast FocusEventInit where
  safeCast = unsafeCastOnPrototypeName "FocusEventInit"

export data InputEventInit : Type where [external]

export
SafeCast InputEventInit where
  safeCast = unsafeCastOnPrototypeName "InputEventInit"

export data KeyboardEventInit : Type where [external]

export
SafeCast KeyboardEventInit where
  safeCast = unsafeCastOnPrototypeName "KeyboardEventInit"

export data MouseEventInit : Type where [external]

export
SafeCast MouseEventInit where
  safeCast = unsafeCastOnPrototypeName "MouseEventInit"

export data UIEventInit : Type where [external]

export
SafeCast UIEventInit where
  safeCast = unsafeCastOnPrototypeName "UIEventInit"

export data WheelEventInit : Type where [external]

export
SafeCast WheelEventInit where
  safeCast = unsafeCastOnPrototypeName "WheelEventInit"

