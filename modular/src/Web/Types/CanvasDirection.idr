module Web.Types.CanvasDirection

import JS

%default total

public export
data CanvasDirection = Ltr | Rtl | Inherit

export
Show CanvasDirection where
  show Ltr = "ltr"
  show Rtl = "rtl"
  show Inherit = "inherit"

export
Eq CanvasDirection where
  (==) = (==) `on` show

export
Ord CanvasDirection where
  compare = compare `on` show

export
read : String -> Maybe CanvasDirection
read "ltr" = Just Ltr
read "rtl" = Just Rtl
read "inherit" = Just Inherit
read _ = Nothing

export
ToFFI CanvasDirection String where
  toFFI = show

export
FromFFI CanvasDirection String where
  fromFFI = read
