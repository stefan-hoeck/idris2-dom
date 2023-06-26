module Web.Types.ResizeQuality

import JS

%default total

public export
data ResizeQuality = Pixelated | Low | Medium | High

export
Show ResizeQuality where
  show Pixelated = "pixelated"
  show Low = "low"
  show Medium = "medium"
  show High = "high"

export
Eq ResizeQuality where
  (==) = (==) `on` show

export
Ord ResizeQuality where
  compare = compare `on` show

export
read : String -> Maybe ResizeQuality
read "pixelated" = Just Pixelated
read "low" = Just Low
read "medium" = Just Medium
read "high" = Just High
read _ = Nothing

export
ToFFI ResizeQuality String where
  toFFI = show

export
FromFFI ResizeQuality String where
  fromFFI = read
