module Web.Types.CanvasTextBaseline

import JS

%default total

public export
data CanvasTextBaseline =
    Top
  | Hanging
  | Middle
  | Alphabetic
  | Ideographic
  | Bottom

export
Show CanvasTextBaseline where
  show Top = "top"
  show Hanging = "hanging"
  show Middle = "middle"
  show Alphabetic = "alphabetic"
  show Ideographic = "ideographic"
  show Bottom = "bottom"

export
Eq CanvasTextBaseline where
  (==) = (==) `on` show

export
Ord CanvasTextBaseline where
  compare = compare `on` show

export
read : String -> Maybe CanvasTextBaseline
read "top" = Just Top
read "hanging" = Just Hanging
read "middle" = Just Middle
read "alphabetic" = Just Alphabetic
read "ideographic" = Just Ideographic
read "bottom" = Just Bottom
read _ = Nothing

export
ToFFI CanvasTextBaseline String where
  toFFI = show

export
FromFFI CanvasTextBaseline String where
  fromFFI = read
