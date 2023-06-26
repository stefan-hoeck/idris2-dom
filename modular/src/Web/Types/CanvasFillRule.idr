module Web.Types.CanvasFillRule

import JS

%default total

public export
data CanvasFillRule = Nonzero | Evenodd

export
Show CanvasFillRule where
  show Nonzero = "nonzero"
  show Evenodd = "evenodd"

export
Eq CanvasFillRule where
  (==) = (==) `on` show

export
Ord CanvasFillRule where
  compare = compare `on` show

export
read : String -> Maybe CanvasFillRule
read "nonzero" = Just Nonzero
read "evenodd" = Just Evenodd
read _ = Nothing

export
ToFFI CanvasFillRule String where
  toFFI = show

export
FromFFI CanvasFillRule String where
  fromFFI = read
