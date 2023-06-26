module Web.Types.ImageOrientation

import JS

%default total

public export
data ImageOrientation = None | FlipY

export
Show ImageOrientation where
  show None = "none"
  show FlipY = "flipY"

export
Eq ImageOrientation where
  (==) = (==) `on` show

export
Ord ImageOrientation where
  compare = compare `on` show

export
read : String -> Maybe ImageOrientation
read "none" = Just None
read "flipY" = Just FlipY
read _ = Nothing

export
ToFFI ImageOrientation String where
  toFFI = show

export
FromFFI ImageOrientation String where
  fromFFI = read
