module JS.DOM.Raw.Dom

import Data.Maybe

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace ShadowRootMode
  
  public export
  data ShadowRootMode = Open | Closed

  public export
  Show ShadowRootMode where
    show Open = "open"
    show Closed = "closed"

  public export
  Eq ShadowRootMode where
    (==) = (==) `on` show

  public export
  Ord ShadowRootMode where
    compare = compare `on` show

  public export
  read : String -> Maybe ShadowRootMode
  read "open" = Just Open
  read "closed" = Just Closed
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (ShadowRootMode.read s)}
             -> ShadowRootMode
  fromString s = fromJust $ read s