module JS.DOM.Raw.File

import Data.Maybe

--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace EndingType
  
  public export
  data EndingType = Transparent | Native

  public export
  Show EndingType where
    show Transparent = "transparent"
    show Native = "native"

  public export
  Eq EndingType where
    (==) = (==) `on` show

  public export
  Ord EndingType where
    compare = compare `on` show

  public export
  read : String -> Maybe EndingType
  read "transparent" = Just Transparent
  read "native" = Just Native
  read _ = Nothing

  public export
  fromString :  (s : String)
             -> {auto 0 _ : IsJust (EndingType.read s)}
             -> EndingType
  fromString s = fromJust $ read s