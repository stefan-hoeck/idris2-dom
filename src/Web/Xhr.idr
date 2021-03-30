module Web.Xhr
 
import JS
import Web.Internal.XhrPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace FormData
  
  public export
  JSType FormData where
    parents =  [ Object ]

    mixins =  []

namespace ProgressEvent
  
  public export
  JSType ProgressEvent where
    parents =  [ Event , Object ]

    mixins =  []

namespace XMLHttpRequest
  
  public export
  JSType XMLHttpRequest where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , Object ]

    mixins =  []
  
  public export
  DONE : UInt16
  DONE = 4
  
  public export
  HEADERS_RECEIVED : UInt16
  HEADERS_RECEIVED = 2
  
  public export
  LOADING : UInt16
  LOADING = 3
  
  public export
  OPENED : UInt16
  OPENED = 1
  
  public export
  UNSENT : UInt16
  UNSENT = 0

namespace XMLHttpRequestEventTarget
  
  public export
  JSType XMLHttpRequestEventTarget where
    parents =  [ EventTarget , Object ]

    mixins =  []

namespace XMLHttpRequestUpload
  
  public export
  JSType XMLHttpRequestUpload where
    parents =  [ XMLHttpRequestEventTarget , EventTarget , Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace ProgressEventInit
  
  public export
  JSType ProgressEventInit where
    parents =  [ EventInit , Object ]

    mixins =  []
