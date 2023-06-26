module Web.Types.ScrollBehavior

import JS

%default total

public export
data ScrollBehavior = Auto | Instant | Smooth

export
Show ScrollBehavior where
  show Auto = "auto"
  show Instant = "instant"
  show Smooth = "smooth"

export
Eq ScrollBehavior where
  (==) = (==) `on` show

export
Ord ScrollBehavior where
  compare = compare `on` show

export
read : String -> Maybe ScrollBehavior
read "auto" = Just Auto
read "instant" = Just Instant
read "smooth" = Just Smooth
read _ = Nothing

export
ToFFI ScrollBehavior String where
  toFFI = show

export
FromFFI ScrollBehavior String where
  fromFFI = read
