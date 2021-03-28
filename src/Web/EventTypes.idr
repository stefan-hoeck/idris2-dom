module Web.EventTypes
import JS


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------
export data CompositionEvent : Type where [external]

export
SafeCast CompositionEvent where
  safeCast = unsafeCastOnPrototypeName "CompositionEvent"

export ToJS CompositionEvent where toJS = believe_me
export FromJS CompositionEvent where fromJS = safeCast
export data FocusEvent : Type where [external]

export
SafeCast FocusEvent where
  safeCast = unsafeCastOnPrototypeName "FocusEvent"

export ToJS FocusEvent where toJS = believe_me
export FromJS FocusEvent where fromJS = safeCast
export data InputEvent : Type where [external]

export
SafeCast InputEvent where
  safeCast = unsafeCastOnPrototypeName "InputEvent"

export ToJS InputEvent where toJS = believe_me
export FromJS InputEvent where fromJS = safeCast
export data KeyboardEvent : Type where [external]

export
SafeCast KeyboardEvent where
  safeCast = unsafeCastOnPrototypeName "KeyboardEvent"

export ToJS KeyboardEvent where toJS = believe_me
export FromJS KeyboardEvent where fromJS = safeCast
export data MouseEvent : Type where [external]

export
SafeCast MouseEvent where
  safeCast = unsafeCastOnPrototypeName "MouseEvent"

export ToJS MouseEvent where toJS = believe_me
export FromJS MouseEvent where fromJS = safeCast
export data UIEvent : Type where [external]

export
SafeCast UIEvent where
  safeCast = unsafeCastOnPrototypeName "UIEvent"

export ToJS UIEvent where toJS = believe_me
export FromJS UIEvent where fromJS = safeCast
export data WheelEvent : Type where [external]

export
SafeCast WheelEvent where
  safeCast = unsafeCastOnPrototypeName "WheelEvent"

export ToJS WheelEvent where toJS = believe_me
export FromJS WheelEvent where fromJS = safeCast


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------
export data CompositionEventInit : Type where [external]

export
SafeCast CompositionEventInit where
  safeCast = unsafeCastOnPrototypeName "CompositionEventInit"

export ToJS CompositionEventInit where toJS = believe_me
export FromJS CompositionEventInit where fromJS = safeCast
export data EventModifierInit : Type where [external]

export
SafeCast EventModifierInit where
  safeCast = unsafeCastOnPrototypeName "EventModifierInit"

export ToJS EventModifierInit where toJS = believe_me
export FromJS EventModifierInit where fromJS = safeCast
export data FocusEventInit : Type where [external]

export
SafeCast FocusEventInit where
  safeCast = unsafeCastOnPrototypeName "FocusEventInit"

export ToJS FocusEventInit where toJS = believe_me
export FromJS FocusEventInit where fromJS = safeCast
export data InputEventInit : Type where [external]

export
SafeCast InputEventInit where
  safeCast = unsafeCastOnPrototypeName "InputEventInit"

export ToJS InputEventInit where toJS = believe_me
export FromJS InputEventInit where fromJS = safeCast
export data KeyboardEventInit : Type where [external]

export
SafeCast KeyboardEventInit where
  safeCast = unsafeCastOnPrototypeName "KeyboardEventInit"

export ToJS KeyboardEventInit where toJS = believe_me
export FromJS KeyboardEventInit where fromJS = safeCast
export data MouseEventInit : Type where [external]

export
SafeCast MouseEventInit where
  safeCast = unsafeCastOnPrototypeName "MouseEventInit"

export ToJS MouseEventInit where toJS = believe_me
export FromJS MouseEventInit where fromJS = safeCast
export data UIEventInit : Type where [external]

export
SafeCast UIEventInit where
  safeCast = unsafeCastOnPrototypeName "UIEventInit"

export ToJS UIEventInit where toJS = believe_me
export FromJS UIEventInit where fromJS = safeCast
export data WheelEventInit : Type where [external]

export
SafeCast WheelEventInit where
  safeCast = unsafeCastOnPrototypeName "WheelEventInit"

export ToJS WheelEventInit where toJS = believe_me
export FromJS WheelEventInit where fromJS = safeCast