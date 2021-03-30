module Web.Clipboard
 
import JS
import Web.Internal.ClipboardPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Clipboard
  
  public export
  JSType Clipboard where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace ClipboardEvent
  
  public export
  JSType ClipboardEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace ClipboardItem
  
  public export
  JSType ClipboardItem where
    parents =  [ Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ClipboardEventInit
  
  public export
  JSType ClipboardEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []

namespace ClipboardItemOptions
  
  public export
  JSType ClipboardItemOptions where
    parents =  [ Object ]

    mixins =  []

namespace ClipboardPermissionDescriptor
  
  public export
  JSType ClipboardPermissionDescriptor where
    parents =  [ PermissionDescriptor , Object ]

    mixins =  []

--------------------------------------------------------------------------------
--          Callbacks
--------------------------------------------------------------------------------
