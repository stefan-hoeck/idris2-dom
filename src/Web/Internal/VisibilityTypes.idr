module Web.Internal.VisibilityTypes
 
import JS

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace VisibilityState
  
  public export
  data VisibilityState = Hidden | Visible

  public export
  Show VisibilityState where
    show Hidden = "hidden"
    show Visible = "visible"

  public export
  Eq VisibilityState where
    (==) = (==) `on` show

  public export
  Ord VisibilityState where
    compare = compare `on` show

  public export
  read : String -> Maybe VisibilityState
  read "hidden" = Just Hidden
  read "visible" = Just Visible
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (VisibilityState.read s)}
             -> VisibilityState
  fromString s = fromJust $ read s

  export
  ToFFI VisibilityState String where
    toFFI = show

  export
  FromFFI VisibilityState String where
    fromFFI = read



