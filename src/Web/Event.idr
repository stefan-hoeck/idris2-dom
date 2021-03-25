module Web.Event

import JS.Util
import Web.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

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