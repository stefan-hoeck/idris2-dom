module Web.Types.ImageSmoothingQuality

import JS

%default total

public export
data ImageSmoothingQuality = Low | Medium | High

export
Show ImageSmoothingQuality where
  show Low = "low"
  show Medium = "medium"
  show High = "high"

export
Eq ImageSmoothingQuality where
  (==) = (==) `on` show

export
Ord ImageSmoothingQuality where
  compare = compare `on` show

export
read : String -> Maybe ImageSmoothingQuality
read "low" = Just Low
read "medium" = Just Medium
read "high" = Just High
read _ = Nothing

export
ToFFI ImageSmoothingQuality String where
  toFFI = show

export
FromFFI ImageSmoothingQuality String where
  fromFFI = read
