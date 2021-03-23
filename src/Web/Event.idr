module Web.Event

import Web.Types

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