module Web.Mediasource
 
import JS
import Web.Internal.MediasourcePrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace MediaSource
  
  public export
  JSType MediaSource where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace SourceBuffer
  
  public export
  JSType SourceBuffer where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace SourceBufferList
  
  public export
  JSType SourceBufferList where
    parents =  [ EventTarget , Object ]

    mixins =  []


