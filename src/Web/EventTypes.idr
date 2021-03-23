module Web.EventTypes

import JS.Util


--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export
data CompositionEvent : Type where [external]

export
ToJS CompositionEvent where
  toJS = believe_me

export
FromJS CompositionEvent where
  fromJS = believe_me

export
data FocusEvent : Type where [external]

export
ToJS FocusEvent where
  toJS = believe_me

export
FromJS FocusEvent where
  fromJS = believe_me

export
data InputEvent : Type where [external]

export
ToJS InputEvent where
  toJS = believe_me

export
FromJS InputEvent where
  fromJS = believe_me

export
data KeyboardEvent : Type where [external]

export
ToJS KeyboardEvent where
  toJS = believe_me

export
FromJS KeyboardEvent where
  fromJS = believe_me

export
data MouseEvent : Type where [external]

export
ToJS MouseEvent where
  toJS = believe_me

export
FromJS MouseEvent where
  fromJS = believe_me

export
data UIEvent : Type where [external]

export
ToJS UIEvent where
  toJS = believe_me

export
FromJS UIEvent where
  fromJS = believe_me

export
data WheelEvent : Type where [external]

export
ToJS WheelEvent where
  toJS = believe_me

export
FromJS WheelEvent where
  fromJS = believe_me


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export
data CompositionEventInit : Type where [external]

export
ToJS CompositionEventInit where
  toJS = believe_me

export
FromJS CompositionEventInit where
  fromJS = believe_me

export
data EventModifierInit : Type where [external]

export
ToJS EventModifierInit where
  toJS = believe_me

export
FromJS EventModifierInit where
  fromJS = believe_me

export
data FocusEventInit : Type where [external]

export
ToJS FocusEventInit where
  toJS = believe_me

export
FromJS FocusEventInit where
  fromJS = believe_me

export
data InputEventInit : Type where [external]

export
ToJS InputEventInit where
  toJS = believe_me

export
FromJS InputEventInit where
  fromJS = believe_me

export
data KeyboardEventInit : Type where [external]

export
ToJS KeyboardEventInit where
  toJS = believe_me

export
FromJS KeyboardEventInit where
  fromJS = believe_me

export
data MouseEventInit : Type where [external]

export
ToJS MouseEventInit where
  toJS = believe_me

export
FromJS MouseEventInit where
  fromJS = believe_me

export
data UIEventInit : Type where [external]

export
ToJS UIEventInit where
  toJS = believe_me

export
FromJS UIEventInit where
  fromJS = believe_me

export
data WheelEventInit : Type where [external]

export
ToJS WheelEventInit where
  toJS = believe_me

export
FromJS WheelEventInit where
  fromJS = believe_me