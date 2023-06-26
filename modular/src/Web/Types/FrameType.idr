module Web.Types.FrameType

import JS

%default total

public export
data FrameType = Auxiliary | TopLevel | Nested | None

export
Show FrameType where
  show Auxiliary = "auxiliary"
  show TopLevel = "top-level"
  show Nested = "nested"
  show None = "none"

export
Eq FrameType where
  (==) = (==) `on` show

export
Ord FrameType where
  compare = compare `on` show

export
read : String -> Maybe FrameType
read "auxiliary" = Just Auxiliary
read "top-level" = Just TopLevel
read "nested" = Just Nested
read "none" = Just None
read _ = Nothing

export
ToFFI FrameType String where
  toFFI = show

export
FromFFI FrameType String where
  fromFFI = read
