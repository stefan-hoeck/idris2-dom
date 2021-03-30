module Web.Fetch
 
import JS
import Web.Internal.FetchPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace Headers
  
  public export
  JSType Headers where
    parents =  [ Object ]

    mixins =  []

namespace Request
  
  public export
  JSType Request where
    parents =  [ Object ]

    mixins =  [ Body ]

namespace Response
  
  public export
  JSType Response where
    parents =  [ Object ]

    mixins =  [ Body ]

--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace RequestInit
  
  public export
  JSType RequestInit where
    parents =  [ Object ]

    mixins =  []

namespace ResponseInit
  
  public export
  JSType ResponseInit where
    parents =  [ Object ]

    mixins =  []
