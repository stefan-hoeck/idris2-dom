module Web.Url
 
import JS
import Web.Internal.UrlPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace URL
  
  public export
  JSType URL where
    parents =  [ Object ]

    mixins =  []

namespace URLSearchParams
  
  public export
  JSType URLSearchParams where
    parents =  [ Object ]

    mixins =  []


