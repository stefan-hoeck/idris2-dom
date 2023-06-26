module Web.Types.CanvasLineJoin

import JS

%default total

public export
data CanvasLineJoin = Round | Bevel | Miter

export
Show CanvasLineJoin where
  show Round = "round"
  show Bevel = "bevel"
  show Miter = "miter"

export
Eq CanvasLineJoin where
  (==) = (==) `on` show

export
Ord CanvasLineJoin where
  compare = compare `on` show

export
read : String -> Maybe CanvasLineJoin
read "round" = Just Round
read "bevel" = Just Bevel
read "miter" = Just Miter
read _ = Nothing

export
ToFFI CanvasLineJoin String where
  toFFI = show

export
FromFFI CanvasLineJoin String where
  fromFFI = read
