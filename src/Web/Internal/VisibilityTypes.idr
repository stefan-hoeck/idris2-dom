module Web.Internal.VisibilityTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace VisibilityState
  
  public export
  data VisibilityState = Hidden | Visible
  
  export
  Show VisibilityState where
    show Hidden = "hidden"
    show Visible = "visible"
  
  export
  Eq VisibilityState where
    (==) = (==) `on` show
  
  export
  Ord VisibilityState where
    compare = compare `on` show
  
  export
  read : String -> Maybe VisibilityState
  read "hidden" = Just Hidden
  read "visible" = Just Visible
  read _ = Nothing
  
  export
  ToFFI VisibilityState String where
    toFFI = show
  
  export
  FromFFI VisibilityState String where
    fromFFI = read






