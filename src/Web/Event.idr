module Web.Event
 
import JS
import Web.Internal.EventPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace CompositionEvent
  
  public export
  JSType CompositionEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []

namespace FocusEvent
  
  public export
  JSType FocusEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []

namespace InputEvent
  
  public export
  JSType InputEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []

namespace KeyboardEvent
  
  public export
  JSType KeyboardEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []
  
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

namespace MouseEvent
  
  public export
  JSType MouseEvent where
    parents =  [ UIEvent , Event , Object ]

    mixins =  []

namespace UIEvent
  
  public export
  JSType UIEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace WheelEvent
  
  public export
  JSType WheelEvent where
    parents =  [ MouseEvent , UIEvent , Event , Object ]

    mixins =  []
  
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
--          Dictionaries
--------------------------------------------------------------------------------

namespace CompositionEventInit
  
  public export
  JSType CompositionEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []

namespace EventModifierInit
  
  public export
  JSType EventModifierInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []

namespace FocusEventInit
  
  public export
  JSType FocusEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []

namespace InputEventInit
  
  public export
  JSType InputEventInit where
    parents =  [ UIEventInit , EventInit , Object ]

    mixins =  []

namespace KeyboardEventInit
  
  public export
  JSType KeyboardEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []

namespace MouseEventInit
  
  public export
  JSType MouseEventInit where
    parents =  [ EventModifierInit , UIEventInit , EventInit , Object ]

    mixins =  []

namespace UIEventInit
  
  public export
  JSType UIEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace WheelEventInit
  
  public export
  JSType WheelEventInit where
    parents =  [ MouseEventInit
               , EventModifierInit
               , UIEventInit
               , EventInit
               , Object
               ]

    mixins =  []
