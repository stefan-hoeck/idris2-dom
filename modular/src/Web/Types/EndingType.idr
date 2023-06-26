module Web.Types.EndingType

import JS

%default total

public export
data EndingType = Transparent | Native

export
Show EndingType where
  show Transparent = "transparent"
  show Native = "native"

export
Eq EndingType where
  (==) = (==) `on` show

export
Ord EndingType where
  compare = compare `on` show

export
read : String -> Maybe EndingType
read "transparent" = Just Transparent
read "native" = Just Native
read _ = Nothing

export
ToFFI EndingType String where
  toFFI = show

export
FromFFI EndingType String where
  fromFFI = read
