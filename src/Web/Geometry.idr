module Web.Geometry
 
import JS
import Web.Internal.GeometryPrim
import Web.Internal.Types

--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

namespace DOMMatrix
  
  public export
  JSType DOMMatrix where
    parents =  [ DOMMatrixReadOnly , Object ]

    mixins =  []

namespace DOMMatrixReadOnly
  
  public export
  JSType DOMMatrixReadOnly where
    parents =  [ Object ]

    mixins =  []

namespace DOMPoint
  
  public export
  JSType DOMPoint where
    parents =  [ DOMPointReadOnly , Object ]

    mixins =  []

namespace DOMPointReadOnly
  
  public export
  JSType DOMPointReadOnly where
    parents =  [ Object ]

    mixins =  []

namespace DOMQuad
  
  public export
  JSType DOMQuad where
    parents =  [ Object ]

    mixins =  []

namespace DOMRect
  
  public export
  JSType DOMRect where
    parents =  [ DOMRectReadOnly , Object ]

    mixins =  []

namespace DOMRectList
  
  public export
  JSType DOMRectList where
    parents =  [ Object ]

    mixins =  []

namespace DOMRectReadOnly
  
  public export
  JSType DOMRectReadOnly where
    parents =  [ Object ]

    mixins =  []


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

namespace DOMMatrix2DInit
  
  public export
  JSType DOMMatrix2DInit where
    parents =  [ Object ]

    mixins =  []

namespace DOMMatrixInit
  
  public export
  JSType DOMMatrixInit where
    parents =  [ DOMMatrix2DInit , Object ]

    mixins =  []

namespace DOMPointInit
  
  public export
  JSType DOMPointInit where
    parents =  [ Object ]

    mixins =  []

namespace DOMQuadInit
  
  public export
  JSType DOMQuadInit where
    parents =  [ Object ]

    mixins =  []

namespace DOMRectInit
  
  public export
  JSType DOMRectInit where
    parents =  [ Object ]

    mixins =  []
